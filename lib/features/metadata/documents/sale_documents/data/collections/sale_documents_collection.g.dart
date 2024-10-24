// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_documents_collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSaleDocumentsCollectionCollection on Isar {
  IsarCollection<SaleDocumentsCollection> get saleDocumentsCollections =>
      this.collection();
}

const SaleDocumentsCollectionSchema = CollectionSchema(
  name: r'SaleDocumentsCollection',
  id: -8834655810420229666,
  properties: {
    r'date': PropertySchema(
      id: 0,
      name: r'date',
      type: IsarType.dateTime,
    ),
    r'deleteMark': PropertySchema(
      id: 1,
      name: r'deleteMark',
      type: IsarType.bool,
    ),
    r'price': PropertySchema(
      id: 2,
      name: r'price',
      type: IsarType.double,
    ),
    r'quantity': PropertySchema(
      id: 3,
      name: r'quantity',
      type: IsarType.double,
    ),
    r'sum': PropertySchema(
      id: 4,
      name: r'sum',
      type: IsarType.double,
    )
  },
  estimateSize: _saleDocumentsCollectionEstimateSize,
  serialize: _saleDocumentsCollectionSerialize,
  deserialize: _saleDocumentsCollectionDeserialize,
  deserializeProp: _saleDocumentsCollectionDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'organization': LinkSchema(
      id: -8727856299333125724,
      name: r'organization',
      target: r'OrganizationsCollection',
      single: true,
    ),
    r'customer': LinkSchema(
      id: -7983982217230912276,
      name: r'customer',
      target: r'CounteragentsCollection',
      single: true,
    ),
    r'product': LinkSchema(
      id: 3362377285343496789,
      name: r'product',
      target: r'ProductsCollection',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _saleDocumentsCollectionGetId,
  getLinks: _saleDocumentsCollectionGetLinks,
  attach: _saleDocumentsCollectionAttach,
  version: '3.1.0+1',
);

int _saleDocumentsCollectionEstimateSize(
  SaleDocumentsCollection object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _saleDocumentsCollectionSerialize(
  SaleDocumentsCollection object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.date);
  writer.writeBool(offsets[1], object.deleteMark);
  writer.writeDouble(offsets[2], object.price);
  writer.writeDouble(offsets[3], object.quantity);
  writer.writeDouble(offsets[4], object.sum);
}

SaleDocumentsCollection _saleDocumentsCollectionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SaleDocumentsCollection();
  object.date = reader.readDateTime(offsets[0]);
  object.deleteMark = reader.readBool(offsets[1]);
  object.id = id;
  object.price = reader.readDouble(offsets[2]);
  object.quantity = reader.readDouble(offsets[3]);
  object.sum = reader.readDouble(offsets[4]);
  return object;
}

P _saleDocumentsCollectionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readDouble(offset)) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    case 4:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _saleDocumentsCollectionGetId(SaleDocumentsCollection object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _saleDocumentsCollectionGetLinks(
    SaleDocumentsCollection object) {
  return [object.organization, object.customer, object.product];
}

void _saleDocumentsCollectionAttach(
    IsarCollection<dynamic> col, Id id, SaleDocumentsCollection object) {
  object.id = id;
  object.organization.attach(
      col, col.isar.collection<OrganizationsCollection>(), r'organization', id);
  object.customer.attach(
      col, col.isar.collection<CounteragentsCollection>(), r'customer', id);
  object.product
      .attach(col, col.isar.collection<ProductsCollection>(), r'product', id);
}

extension SaleDocumentsCollectionQueryWhereSort
    on QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection, QWhere> {
  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SaleDocumentsCollectionQueryWhere on QueryBuilder<
    SaleDocumentsCollection, SaleDocumentsCollection, QWhereClause> {
  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection,
      QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection,
      QAfterWhereClause> idBetween(
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

extension SaleDocumentsCollectionQueryFilter on QueryBuilder<
    SaleDocumentsCollection, SaleDocumentsCollection, QFilterCondition> {
  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection,
      QAfterFilterCondition> dateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection,
      QAfterFilterCondition> dateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection,
      QAfterFilterCondition> dateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection,
      QAfterFilterCondition> dateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'date',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection,
      QAfterFilterCondition> deleteMarkEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deleteMark',
        value: value,
      ));
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection,
      QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection,
      QAfterFilterCondition> idLessThan(
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

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection,
      QAfterFilterCondition> idBetween(
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

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection,
      QAfterFilterCondition> priceEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'price',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection,
      QAfterFilterCondition> priceGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'price',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection,
      QAfterFilterCondition> priceLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'price',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection,
      QAfterFilterCondition> priceBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'price',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection,
      QAfterFilterCondition> quantityEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quantity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection,
      QAfterFilterCondition> quantityGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quantity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection,
      QAfterFilterCondition> quantityLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quantity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection,
      QAfterFilterCondition> quantityBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quantity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection,
      QAfterFilterCondition> sumEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sum',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection,
      QAfterFilterCondition> sumGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sum',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection,
      QAfterFilterCondition> sumLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sum',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection,
      QAfterFilterCondition> sumBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sum',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension SaleDocumentsCollectionQueryObject on QueryBuilder<
    SaleDocumentsCollection, SaleDocumentsCollection, QFilterCondition> {}

extension SaleDocumentsCollectionQueryLinks on QueryBuilder<
    SaleDocumentsCollection, SaleDocumentsCollection, QFilterCondition> {
  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection,
          QAfterFilterCondition>
      organization(FilterQuery<OrganizationsCollection> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'organization');
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection,
      QAfterFilterCondition> organizationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'organization', 0, true, 0, true);
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection,
      QAfterFilterCondition> customer(FilterQuery<CounteragentsCollection> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'customer');
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection,
      QAfterFilterCondition> customerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'customer', 0, true, 0, true);
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection,
      QAfterFilterCondition> product(FilterQuery<ProductsCollection> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'product');
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection,
      QAfterFilterCondition> productIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'product', 0, true, 0, true);
    });
  }
}

extension SaleDocumentsCollectionQuerySortBy
    on QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection, QSortBy> {
  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection, QAfterSortBy>
      sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection, QAfterSortBy>
      sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection, QAfterSortBy>
      sortByDeleteMark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteMark', Sort.asc);
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection, QAfterSortBy>
      sortByDeleteMarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteMark', Sort.desc);
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection, QAfterSortBy>
      sortByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection, QAfterSortBy>
      sortByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection, QAfterSortBy>
      sortByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection, QAfterSortBy>
      sortByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection, QAfterSortBy>
      sortBySum() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sum', Sort.asc);
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection, QAfterSortBy>
      sortBySumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sum', Sort.desc);
    });
  }
}

extension SaleDocumentsCollectionQuerySortThenBy on QueryBuilder<
    SaleDocumentsCollection, SaleDocumentsCollection, QSortThenBy> {
  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection, QAfterSortBy>
      thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection, QAfterSortBy>
      thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection, QAfterSortBy>
      thenByDeleteMark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteMark', Sort.asc);
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection, QAfterSortBy>
      thenByDeleteMarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteMark', Sort.desc);
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection, QAfterSortBy>
      thenByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection, QAfterSortBy>
      thenByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection, QAfterSortBy>
      thenByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection, QAfterSortBy>
      thenByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection, QAfterSortBy>
      thenBySum() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sum', Sort.asc);
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection, QAfterSortBy>
      thenBySumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sum', Sort.desc);
    });
  }
}

extension SaleDocumentsCollectionQueryWhereDistinct on QueryBuilder<
    SaleDocumentsCollection, SaleDocumentsCollection, QDistinct> {
  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection, QDistinct>
      distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection, QDistinct>
      distinctByDeleteMark() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deleteMark');
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection, QDistinct>
      distinctByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'price');
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection, QDistinct>
      distinctByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quantity');
    });
  }

  QueryBuilder<SaleDocumentsCollection, SaleDocumentsCollection, QDistinct>
      distinctBySum() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sum');
    });
  }
}

extension SaleDocumentsCollectionQueryProperty on QueryBuilder<
    SaleDocumentsCollection, SaleDocumentsCollection, QQueryProperty> {
  QueryBuilder<SaleDocumentsCollection, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SaleDocumentsCollection, DateTime, QQueryOperations>
      dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<SaleDocumentsCollection, bool, QQueryOperations>
      deleteMarkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deleteMark');
    });
  }

  QueryBuilder<SaleDocumentsCollection, double, QQueryOperations>
      priceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'price');
    });
  }

  QueryBuilder<SaleDocumentsCollection, double, QQueryOperations>
      quantityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quantity');
    });
  }

  QueryBuilder<SaleDocumentsCollection, double, QQueryOperations>
      sumProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sum');
    });
  }
}
