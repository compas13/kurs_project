import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
 
import '../state/provider_app_theme.dart';
import '../../../features/ui/calc/presentation/views/numeric_input_bar.dart'; 
import '../../data/string_functions/format_number.dart';
import 'switch_widget.dart';

import 'package:go_router/go_router.dart'; 

import '../../../features/metadata/catalogs/units/data/models/units_model.dart';
import '../../../features/metadata/catalogs/counteragents/data/models/counteragents_model.dart';
import '../../../features/metadata/catalogs/organizations/data/models/organizations_model.dart';
import '../../../features/metadata/documents/purchase_documents/data/models/purchase_documents_model.dart';
import '../../../features/metadata/documents/sale_documents/data/models/sale_documents_model.dart';
import '../../../features/metadata/catalogs/goods_category/data/models/goods_category_model.dart';
import '../../../features/metadata/catalogs/products/data/models/products_model.dart';

class InputField extends StatelessWidget {
  final dynamic state; // провайдер элемента
  final String nameData; // имя поля
  final String lable; 
  final Widget iconLeft; // иконка слева
  final String text = ''; // если надо получить текст не из провайдера, а передать непосредственно, например для полей типа bool

  const InputField({super.key, required this.state, required this.lable, required this.nameData, required this.iconLeft});
       
  Widget getSpacer(dynamic value) {
    if (value is TextEditingController) {
      return const SizedBox();
    } else {
      return const Spacer();
    }
  }
       
  Widget getChildWidget(dynamic value, ProviderAppTheme appTheme) {
    if (value is TextEditingController) {
      return Expanded(
        child: TextField(
          controller: value,
          textAlign: TextAlign.right,
          decoration: const InputDecoration(
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
          style: TextStyle(
            fontSize: 14,
            color: appTheme.colorTheme.inputFieldData,
          ),
        ),
      );
    } else if (value is String) {
      return Text(
        value,
        style: TextStyle(
          fontSize: 14,
          color: appTheme.colorTheme.inputFieldData,
        ),
      );
    } else if (value is bool) {
      return Text(
        text,
        style: TextStyle(
          fontSize: 14,
          color: appTheme.colorTheme.inputFieldData,
        ),
      );
    } else if (value is int) {
      return Text(
        value.toString(),
        style: TextStyle(
          fontSize: 14,
          color: appTheme.colorTheme.inputFieldData,
        ),
      );
    } else if (value is double) {
      return Text(
        formatNumber(value, 2),
        style: TextStyle(
          fontSize: 14,
          color: appTheme.colorTheme.inputFieldData,
        ),
      );
    } else if (value is DateTime) {
      return Text(
        DateFormat('dd.MM.yyyy').format(value),
        style: TextStyle(
          fontSize: 14,
          color: appTheme.colorTheme.inputFieldData,
        ),
      );
    } else {
      return Text(
        value.name,
        style: TextStyle(
          fontSize: 14,
          color: appTheme.colorTheme.inputFieldData,
        ),
      ); // Если ничего из вышеперечисленного, то это ссылочный тип, который всегда имеет поле name
    }
  }

  Widget getRightWidget(dynamic value, ProviderAppTheme appTheme) {
    if (value is TextEditingController) {
      return Icon(Icons.edit, color: appTheme.colorTheme.inputFieldIconRight);
    } else if (value is bool) {
      return SwitchWidget(state: state, nameData: nameData);
    } else {
      return Icon(Icons.arrow_forward_ios_rounded, color: appTheme.colorTheme.inputFieldIconRight);
    }
  }

  @override
  Widget build(BuildContext context) {
    var appTheme = context.watch<ProviderAppTheme>();
    
    return GestureDetector(
      onTap: () async {
        if (state.getField(nameData) is double) {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return NumericInputBar(
                state: state,
                nameData: nameData,
              );
            },
          );
        } else if (state.getField(nameData) is DateTime) {
          showDatePicker(
            context: context,
            initialDate: state.getField(nameData),
            firstDate: DateTime(2000),
            lastDate: DateTime(2030),
          ).then(
            (value) {
              if (value != null) {
                state.setField(
                  fieldName: nameData,
                  value: value,
                );
              }
            },
          );
        }else if (state.getField(nameData) is UnitsModel) {
          final value = await context.push('/unitsList/select') as UnitsModel;

          if (value.id != 0) {
            await state.setField(fieldName: nameData, value: value);
          }
        }else if (state.getField(nameData) is CounteragentsModel) {
          final value = await context.push('/counteragentsList/select') as CounteragentsModel;

          if (value.id != 0) {
            await state.setField(fieldName: nameData, value: value);
          }
        }else if (state.getField(nameData) is OrganizationsModel) {
          final value = await context.push('/organizationsList/select') as OrganizationsModel;

          if (value.id != 0) {
            await state.setField(fieldName: nameData, value: value);
          }
        }else if (state.getField(nameData) is PurchaseDocumentsModel) {
          final value = await context.push('/purchaseDocumentsList/select') as PurchaseDocumentsModel;

          if (value.id != 0) {
            await state.setField(fieldName: nameData, value: value);
          }
        }else if (state.getField(nameData) is SaleDocumentsModel) {
          final value = await context.push('/saleDocumentsList/select') as SaleDocumentsModel;

          if (value.id != 0) {
            await state.setField(fieldName: nameData, value: value);
          }
        }else if (state.getField(nameData) is GoodsCategoryModel) {
          final value = await context.push('/goodsCategoryList/select') as GoodsCategoryModel;

          if (value.id != 0) {
            await state.setField(fieldName: nameData, value: value);
          }
        }else if (state.getField(nameData) is ProductsModel) {
          final value = await context.push('/productsList/select') as ProductsModel;

          if (value.id != 0) {
            await state.setField(fieldName: nameData, value: value);
          }
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 1),
        child: Container(
          height: 48,
          decoration: BoxDecoration(color: appTheme.colorTheme.inputFieldBackground),
          child: Row(
            children: [
              const SizedBox(width: 16),
              Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                  color: appTheme.colorTheme.inputFieldIconLeftBackground,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: iconLeft,
              ),
              const SizedBox(width: 16),
              Text(
                lable,
                style: TextStyle(
                  fontSize: 14,
                  color: appTheme.colorTheme.inputFieldLabel,
                ),
              ),
              getSpacer(state.getField(nameData)), // возвращает либо пустой SizedBox() для текстовых полей ввода, либо Spacer() для остальных (иначе текстовое поле не растягивается)
              const SizedBox(width: 16),
              getChildWidget(state.getField(nameData), appTheme),
              const SizedBox(width: 16),
              getRightWidget(state.getField(nameData), appTheme),
              const SizedBox(width: 16),
            ],
          ),
        ),
      ),
    );
  }
}