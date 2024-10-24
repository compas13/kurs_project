import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import '../../../features/metadata/catalogs/units/data/collections/units_collection.dart';
import '../../../features/metadata/catalogs/counteragents/data/collections/counteragents_collection.dart';
import '../../../features/metadata/catalogs/organizations/data/collections/organizations_collection.dart';
import '../../../features/metadata/documents/purchase_documents/data/collections/purchase_documents_collection.dart';
import '../../../features/metadata/documents/sale_documents/data/collections/sale_documents_collection.dart';
import '../../../features/metadata/catalogs/goods_category/data/collections/goods_category_collection.dart';
import '../../../features/metadata/catalogs/products/data/collections/products_collection.dart';

class InitDB {
  // Здесь создается статическая переменная _instance, которая содержит единственный экземпляр класса DatabaseService.
  // Используется ключевое слово final, чтобы гарантировать,
  // что экземпляр будет инициализирован только один раз.
  static final InitDB _instance = InitDB._internal();
  static late Isar isar;

  // Фабричный конструктор factory возвращает уже существующий экземпляр _instance,
  // а не создает новый. Каждый раз, когда вызывается InitDB(), получаем один и тот же экземпляр.
  factory InitDB() {
    return _instance;
  }

  // Конструктор _internal объявлен как приватный (с помощью символа _), что предотвращает
  // создание новых экземпляров класса извне. Таким образом, экземпляр класса можно создать
  // только внутри самого класса.
  InitDB._internal();

  // Когда вызывается InitDB(), фактически вызывается фабричный конструктор. Он возвращает уже созданный экземпляр _instance,
  // а не создает новый. Это обеспечивает, что в памяти существует только один экземпляр класса на всё приложение.

  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open(
      [
        UnitsCollectionSchema,
        CounteragentsCollectionSchema,
        OrganizationsCollectionSchema,
        PurchaseDocumentsCollectionSchema,
        SaleDocumentsCollectionSchema,
        GoodsCategoryCollectionSchema,
        ProductsCollectionSchema,
      ],
      directory: dir.path,
    );
  }
}