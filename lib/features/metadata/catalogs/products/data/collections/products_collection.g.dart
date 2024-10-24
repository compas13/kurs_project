// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetProductsCollectionCollection on Isar {
  IsarCollection<ProductsCollection> get productsCollections =>
      this.collection();
}

const ProductsCollectionSchema = CollectionSchema(
  name: r'ProductsCollection',
  id: -1094560522029369603,
  properties: {
    r'deleteMark': PropertySchema(
      id: 0,
      name: r'deleteMark',
      type: IsarType.bool,
    ),
    r'isService': PropertySchema(
      id: 1,
      name: r'isService',
      type: IsarType.bool,
    ),
    r'name': PropertySchema(
      id: 2,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _productsCollectionEstimateSize,
  serialize: _productsCollectionSerialize,
  deserialize: _productsCollectionDeserialize,
  deserializeProp: _productsCollectionDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'unit': LinkSchema(
      id: 4041606205511529231,
      name: r'unit',
      target: r'UnitsCollection',
      single: true,
    ),
    r'category': LinkSchema(
      id: 1593754233237144164,
      name: r'category',
      target: r'GoodsCategoryCollection',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _productsCollectionGetId,
  getLinks: _productsCollectionGetLinks,
  attach: _productsCollectionAttach,
  version: '3.1.0+1',
);

int _productsCollectionEstimateSize(
  ProductsCollection object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _productsCollectionSerialize(
  ProductsCollection object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.deleteMark);
  writer.writeBool(offsets[1], object.isService);
  writer.writeString(offsets[2], object.name);
}

ProductsCollection _productsCollectionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ProductsCollection();
  object.deleteMark = reader.readBool(offsets[0]);
  object.id = id;
  object.isService = reader.readBool(offsets[1]);
  object.name = reader.readString(offsets[2]);
  return object;
}

P _productsCollectionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _productsCollectionGetId(ProductsCollection object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _productsCollectionGetLinks(
    ProductsCollection object) {
  return [object.unit, object.category];
}

void _productsCollectionAttach(
    IsarCollection<dynamic> col, Id id, ProductsCollection object) {
  object.id = id;
  object.unit.attach(col, col.isar.collection<UnitsCollection>(), r'unit', id);
  object.category.attach(
      col, col.isar.collection<GoodsCategoryCollection>(), r'category', id);
}

extension ProductsCollectionQueryWhereSort
    on QueryBuilder<ProductsCollection, ProductsCollection, QWhere> {
  QueryBuilder<ProductsCollection, ProductsCollection, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ProductsCollectionQueryWhere
    on QueryBuilder<ProductsCollection, ProductsCollection, QWhereClause> {
  QueryBuilder<ProductsCollection, ProductsCollection, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ProductsCollectionQueryFilter
    on QueryBuilder<ProductsCollection, ProductsCollection, QFilterCondition> {
  QueryBuilder<ProductsCollection, ProductsCollection, QAfterFilterCondition>
      deleteMarkEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deleteMark',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QAfterFilterCondition>
      isServiceEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isService',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QAfterFilterCondition>
      nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QAfterFilterCondition>
      nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension ProductsCollectionQueryObject
    on QueryBuilder<ProductsCollection, ProductsCollection, QFilterCondition> {}

extension ProductsCollectionQueryLinks
    on QueryBuilder<ProductsCollection, ProductsCollection, QFilterCondition> {
  QueryBuilder<ProductsCollection, ProductsCollection, QAfterFilterCondition>
      unit(FilterQuery<UnitsCollection> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'unit');
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QAfterFilterCondition>
      unitIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'unit', 0, true, 0, true);
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QAfterFilterCondition>
      category(FilterQuery<GoodsCategoryCollection> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'category');
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QAfterFilterCondition>
      categoryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'category', 0, true, 0, true);
    });
  }
}

extension ProductsCollectionQuerySortBy
    on QueryBuilder<ProductsCollection, ProductsCollection, QSortBy> {
  QueryBuilder<ProductsCollection, ProductsCollection, QAfterSortBy>
      sortByDeleteMark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteMark', Sort.asc);
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QAfterSortBy>
      sortByDeleteMarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteMark', Sort.desc);
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QAfterSortBy>
      sortByIsService() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isService', Sort.asc);
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QAfterSortBy>
      sortByIsServiceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isService', Sort.desc);
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QAfterSortBy>
      sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension ProductsCollectionQuerySortThenBy
    on QueryBuilder<ProductsCollection, ProductsCollection, QSortThenBy> {
  QueryBuilder<ProductsCollection, ProductsCollection, QAfterSortBy>
      thenByDeleteMark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteMark', Sort.asc);
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QAfterSortBy>
      thenByDeleteMarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteMark', Sort.desc);
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QAfterSortBy>
      thenByIsService() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isService', Sort.asc);
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QAfterSortBy>
      thenByIsServiceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isService', Sort.desc);
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QAfterSortBy>
      thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension ProductsCollectionQueryWhereDistinct
    on QueryBuilder<ProductsCollection, ProductsCollection, QDistinct> {
  QueryBuilder<ProductsCollection, ProductsCollection, QDistinct>
      distinctByDeleteMark() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deleteMark');
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QDistinct>
      distinctByIsService() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isService');
    });
  }

  QueryBuilder<ProductsCollection, ProductsCollection, QDistinct>
      distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension ProductsCollectionQueryProperty
    on QueryBuilder<ProductsCollection, ProductsCollection, QQueryProperty> {
  QueryBuilder<ProductsCollection, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ProductsCollection, bool, QQueryOperations>
      deleteMarkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deleteMark');
    });
  }

  QueryBuilder<ProductsCollection, bool, QQueryOperations> isServiceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isService');
    });
  }

  QueryBuilder<ProductsCollection, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}
