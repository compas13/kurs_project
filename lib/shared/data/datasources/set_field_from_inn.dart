import 'package:dio/dio.dart';

Future<void> setFieldsFromINN(String inn, dynamic state) async {
  const String token = 'b9d067c3de696d0e82ffb533dc12479bdc768d44'; // вообще ключ тут нельзя в коде приложения оставлять, но ладно
  final Dio dio = Dio();

  if (inn.isEmpty) {
    return; // тут когда то будет обработка ошибки
  }

  try {
    final response = await dio.post(
      'http://suggestions.dadata.ru/suggestions/api/4_1/rs/findById/party',
      options: Options(
        headers: {
          'Authorization': 'Token $token',
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
      data: {'query': inn},
    );

    if (response.statusCode == 200) {
      final data = response.data['suggestions'][0]['data'];
      state.setField(fieldName: 'description', value: data['kpp'] ?? '');
      state.setField(fieldName: 'name', value: data['name']['short_with_opf'] ?? '');
      state.setField(fieldName: 'kpp', value: data['kpp'] ?? '');
      state.setField(fieldName: 'adress', value: data['address']['unrestricted_value'] ?? '');
      state.setField(fieldName: 'okved', value: data['okved'] ?? '');
    }
  } catch (e) {
    // тут когда то будет обработка ошибки
  }
}