// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_documents_collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPurchaseDocumentsCollectionCollection on Isar {
  IsarCollection<PurchaseDocumentsCollection>
      get purchaseDocumentsCollections => this.collection();
}

const PurchaseDocumentsCollectionSchema = CollectionSchema(
  name: r'PurchaseDocumentsCollection',
  id: -1080528906846690471,
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
  estimateSize: _purchaseDocumentsCollectionEstimateSize,
  serialize: _purchaseDocumentsCollectionSerialize,
  deserialize: _purchaseDocumentsCollectionDeserialize,
  deserializeProp: _purchaseDocumentsCollectionDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'organization': LinkSchema(
      id: 553146112219217047,
      name: r'organization',
      target: r'OrganizationsCollection',
      single: true,
    ),
    r'customer': LinkSchema(
      id: -6757542165876733647,
      name: r'customer',
      target: r'CounteragentsCollection',
      single: true,
    ),
    r'product': LinkSchema(
      id: -1036558926275582310,
      name: r'product',
      target: r'ProductsCollection',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _purchaseDocumentsCollectionGetId,
  getLinks: _purchaseDocumentsCollectionGetLinks,
  attach: _purchaseDocumentsCollectionAttach,
  version: '3.1.0+1',
);

int _purchaseDocumentsCollectionEstimateSize(
  PurchaseDocumentsCollection object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _purchaseDocumentsCollectionSerialize(
  PurchaseDocumentsCollection object,
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

PurchaseDocumentsCollection _purchaseDocumentsCollectionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PurchaseDocumentsCollection();
  object.date = reader.readDateTime(offsets[0]);
  object.deleteMark = reader.readBool(offsets[1]);
  object.id = id;
  object.price = reader.readDouble(offsets[2]);
  object.quantity = reader.readDouble(offsets[3]);
  object.sum = reader.readDouble(offsets[4]);
  return object;
}

P _purchaseDocumentsCollectionDeserializeProp<P>(
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

Id _purchaseDocumentsCollectionGetId(PurchaseDocumentsCollection object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _purchaseDocumentsCollectionGetLinks(
    PurchaseDocumentsCollection object) {
  return [object.organization, object.customer, object.product];
}

void _purchaseDocumentsCollectionAttach(
    IsarCollection<dynamic> col, Id id, PurchaseDocumentsCollection object) {
  object.id = id;
  object.organization.attach(
      col, col.isar.collection<OrganizationsCollection>(), r'organization', id);
  object.customer.attach(
      col, col.isar.collection<CounteragentsCollection>(), r'customer', id);
  object.product
      .attach(col, col.isar.collection<ProductsCollection>(), r'product', id);
}

extension PurchaseDocumentsCollectionQueryWhereSort on QueryBuilder<
    PurchaseDocumentsCollection, PurchaseDocumentsCollection, QWhere> {
  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PurchaseDocumentsCollectionQueryWhere on QueryBuilder<
    PurchaseDocumentsCollection, PurchaseDocumentsCollection, QWhereClause> {
  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
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

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
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

extension PurchaseDocumentsCollectionQueryFilter on QueryBuilder<
    PurchaseDocumentsCollection,
    PurchaseDocumentsCollection,
    QFilterCondition> {
  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QAfterFilterCondition> dateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
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

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
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

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
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

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QAfterFilterCondition> deleteMarkEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deleteMark',
        value: value,
      ));
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
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

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
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

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
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

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
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

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
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

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
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

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
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

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
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

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
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

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
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

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
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

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
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

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
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

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
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

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
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

extension PurchaseDocumentsCollectionQueryObject on QueryBuilder<
    PurchaseDocumentsCollection,
    PurchaseDocumentsCollection,
    QFilterCondition> {}

extension PurchaseDocumentsCollectionQueryLinks on QueryBuilder<
    PurchaseDocumentsCollection,
    PurchaseDocumentsCollection,
    QFilterCondition> {
  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
          QAfterFilterCondition>
      organization(FilterQuery<OrganizationsCollection> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'organization');
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QAfterFilterCondition> organizationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'organization', 0, true, 0, true);
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QAfterFilterCondition> customer(FilterQuery<CounteragentsCollection> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'customer');
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QAfterFilterCondition> customerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'customer', 0, true, 0, true);
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QAfterFilterCondition> product(FilterQuery<ProductsCollection> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'product');
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QAfterFilterCondition> productIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'product', 0, true, 0, true);
    });
  }
}

extension PurchaseDocumentsCollectionQuerySortBy on QueryBuilder<
    PurchaseDocumentsCollection, PurchaseDocumentsCollection, QSortBy> {
  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QAfterSortBy> sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QAfterSortBy> sortByDeleteMark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteMark', Sort.asc);
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QAfterSortBy> sortByDeleteMarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteMark', Sort.desc);
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QAfterSortBy> sortByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QAfterSortBy> sortByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QAfterSortBy> sortByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QAfterSortBy> sortByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QAfterSortBy> sortBySum() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sum', Sort.asc);
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QAfterSortBy> sortBySumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sum', Sort.desc);
    });
  }
}

extension PurchaseDocumentsCollectionQuerySortThenBy on QueryBuilder<
    PurchaseDocumentsCollection, PurchaseDocumentsCollection, QSortThenBy> {
  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QAfterSortBy> thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QAfterSortBy> thenByDeleteMark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteMark', Sort.asc);
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QAfterSortBy> thenByDeleteMarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteMark', Sort.desc);
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QAfterSortBy> thenByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QAfterSortBy> thenByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QAfterSortBy> thenByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QAfterSortBy> thenByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QAfterSortBy> thenBySum() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sum', Sort.asc);
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QAfterSortBy> thenBySumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sum', Sort.desc);
    });
  }
}

extension PurchaseDocumentsCollectionQueryWhereDistinct on QueryBuilder<
    PurchaseDocumentsCollection, PurchaseDocumentsCollection, QDistinct> {
  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QDistinct> distinctByDeleteMark() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deleteMark');
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QDistinct> distinctByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'price');
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QDistinct> distinctByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quantity');
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, PurchaseDocumentsCollection,
      QDistinct> distinctBySum() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sum');
    });
  }
}

extension PurchaseDocumentsCollectionQueryProperty on QueryBuilder<
    PurchaseDocumentsCollection, PurchaseDocumentsCollection, QQueryProperty> {
  QueryBuilder<PurchaseDocumentsCollection, int, QQueryOperations>
      idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, DateTime, QQueryOperations>
      dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, bool, QQueryOperations>
      deleteMarkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deleteMark');
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, double, QQueryOperations>
      priceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'price');
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, double, QQueryOperations>
      quantityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quantity');
    });
  }

  QueryBuilder<PurchaseDocumentsCollection, double, QQueryOperations>
      sumProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sum');
    });
  }
}
