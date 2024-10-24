// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organizations_collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetOrganizationsCollectionCollection on Isar {
  IsarCollection<OrganizationsCollection> get organizationsCollections =>
      this.collection();
}

const OrganizationsCollectionSchema = CollectionSchema(
  name: r'OrganizationsCollection',
  id: -4088055439325645238,
  properties: {
    r'adress': PropertySchema(
      id: 0,
      name: r'adress',
      type: IsarType.string,
    ),
    r'deleteMark': PropertySchema(
      id: 1,
      name: r'deleteMark',
      type: IsarType.bool,
    ),
    r'inn': PropertySchema(
      id: 2,
      name: r'inn',
      type: IsarType.string,
    ),
    r'kpp': PropertySchema(
      id: 3,
      name: r'kpp',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 4,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _organizationsCollectionEstimateSize,
  serialize: _organizationsCollectionSerialize,
  deserialize: _organizationsCollectionDeserialize,
  deserializeProp: _organizationsCollectionDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _organizationsCollectionGetId,
  getLinks: _organizationsCollectionGetLinks,
  attach: _organizationsCollectionAttach,
  version: '3.1.0+1',
);

int _organizationsCollectionEstimateSize(
  OrganizationsCollection object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.adress.length * 3;
  bytesCount += 3 + object.inn.length * 3;
  bytesCount += 3 + object.kpp.length * 3;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _organizationsCollectionSerialize(
  OrganizationsCollection object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.adress);
  writer.writeBool(offsets[1], object.deleteMark);
  writer.writeString(offsets[2], object.inn);
  writer.writeString(offsets[3], object.kpp);
  writer.writeString(offsets[4], object.name);
}

OrganizationsCollection _organizationsCollectionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = OrganizationsCollection();
  object.adress = reader.readString(offsets[0]);
  object.deleteMark = reader.readBool(offsets[1]);
  object.id = id;
  object.inn = reader.readString(offsets[2]);
  object.kpp = reader.readString(offsets[3]);
  object.name = reader.readString(offsets[4]);
  return object;
}

P _organizationsCollectionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _organizationsCollectionGetId(OrganizationsCollection object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _organizationsCollectionGetLinks(
    OrganizationsCollection object) {
  return [];
}

void _organizationsCollectionAttach(
    IsarCollection<dynamic> col, Id id, OrganizationsCollection object) {
  object.id = id;
}

extension OrganizationsCollectionQueryWhereSort
    on QueryBuilder<OrganizationsCollection, OrganizationsCollection, QWhere> {
  QueryBuilder<OrganizationsCollection, OrganizationsCollection, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension OrganizationsCollectionQueryWhere on QueryBuilder<
    OrganizationsCollection, OrganizationsCollection, QWhereClause> {
  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
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

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
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

extension OrganizationsCollectionQueryFilter on QueryBuilder<
    OrganizationsCollection, OrganizationsCollection, QFilterCondition> {
  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterFilterCondition> adressEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'adress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterFilterCondition> adressGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'adress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterFilterCondition> adressLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'adress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterFilterCondition> adressBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'adress',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterFilterCondition> adressStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'adress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterFilterCondition> adressEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'adress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
          QAfterFilterCondition>
      adressContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'adress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
          QAfterFilterCondition>
      adressMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'adress',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterFilterCondition> adressIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'adress',
        value: '',
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterFilterCondition> adressIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'adress',
        value: '',
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterFilterCondition> deleteMarkEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deleteMark',
        value: value,
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
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

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
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

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
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

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterFilterCondition> innEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'inn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterFilterCondition> innGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'inn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterFilterCondition> innLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'inn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterFilterCondition> innBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'inn',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterFilterCondition> innStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'inn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterFilterCondition> innEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'inn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
          QAfterFilterCondition>
      innContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'inn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
          QAfterFilterCondition>
      innMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'inn',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterFilterCondition> innIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'inn',
        value: '',
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterFilterCondition> innIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'inn',
        value: '',
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterFilterCondition> kppEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kpp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterFilterCondition> kppGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'kpp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterFilterCondition> kppLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'kpp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterFilterCondition> kppBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'kpp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterFilterCondition> kppStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'kpp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterFilterCondition> kppEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'kpp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
          QAfterFilterCondition>
      kppContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'kpp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
          QAfterFilterCondition>
      kppMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'kpp',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterFilterCondition> kppIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kpp',
        value: '',
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterFilterCondition> kppIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'kpp',
        value: '',
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterFilterCondition> nameBetween(
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

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
          QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
          QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection,
      QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension OrganizationsCollectionQueryObject on QueryBuilder<
    OrganizationsCollection, OrganizationsCollection, QFilterCondition> {}

extension OrganizationsCollectionQueryLinks on QueryBuilder<
    OrganizationsCollection, OrganizationsCollection, QFilterCondition> {}

extension OrganizationsCollectionQuerySortBy
    on QueryBuilder<OrganizationsCollection, OrganizationsCollection, QSortBy> {
  QueryBuilder<OrganizationsCollection, OrganizationsCollection, QAfterSortBy>
      sortByAdress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adress', Sort.asc);
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection, QAfterSortBy>
      sortByAdressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adress', Sort.desc);
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection, QAfterSortBy>
      sortByDeleteMark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteMark', Sort.asc);
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection, QAfterSortBy>
      sortByDeleteMarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteMark', Sort.desc);
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection, QAfterSortBy>
      sortByInn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inn', Sort.asc);
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection, QAfterSortBy>
      sortByInnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inn', Sort.desc);
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection, QAfterSortBy>
      sortByKpp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kpp', Sort.asc);
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection, QAfterSortBy>
      sortByKppDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kpp', Sort.desc);
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection, QAfterSortBy>
      sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension OrganizationsCollectionQuerySortThenBy on QueryBuilder<
    OrganizationsCollection, OrganizationsCollection, QSortThenBy> {
  QueryBuilder<OrganizationsCollection, OrganizationsCollection, QAfterSortBy>
      thenByAdress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adress', Sort.asc);
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection, QAfterSortBy>
      thenByAdressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adress', Sort.desc);
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection, QAfterSortBy>
      thenByDeleteMark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteMark', Sort.asc);
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection, QAfterSortBy>
      thenByDeleteMarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteMark', Sort.desc);
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection, QAfterSortBy>
      thenByInn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inn', Sort.asc);
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection, QAfterSortBy>
      thenByInnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inn', Sort.desc);
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection, QAfterSortBy>
      thenByKpp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kpp', Sort.asc);
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection, QAfterSortBy>
      thenByKppDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kpp', Sort.desc);
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection, QAfterSortBy>
      thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension OrganizationsCollectionQueryWhereDistinct on QueryBuilder<
    OrganizationsCollection, OrganizationsCollection, QDistinct> {
  QueryBuilder<OrganizationsCollection, OrganizationsCollection, QDistinct>
      distinctByAdress({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'adress', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection, QDistinct>
      distinctByDeleteMark() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deleteMark');
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection, QDistinct>
      distinctByInn({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'inn', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection, QDistinct>
      distinctByKpp({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'kpp', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<OrganizationsCollection, OrganizationsCollection, QDistinct>
      distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension OrganizationsCollectionQueryProperty on QueryBuilder<
    OrganizationsCollection, OrganizationsCollection, QQueryProperty> {
  QueryBuilder<OrganizationsCollection, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<OrganizationsCollection, String, QQueryOperations>
      adressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'adress');
    });
  }

  QueryBuilder<OrganizationsCollection, bool, QQueryOperations>
      deleteMarkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deleteMark');
    });
  }

  QueryBuilder<OrganizationsCollection, String, QQueryOperations>
      innProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'inn');
    });
  }

  QueryBuilder<OrganizationsCollection, String, QQueryOperations>
      kppProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'kpp');
    });
  }

  QueryBuilder<OrganizationsCollection, String, QQueryOperations>
      nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}
