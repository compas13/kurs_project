// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oganizations_collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetOganizationsCollectionCollection on Isar {
  IsarCollection<OganizationsCollection> get oganizationsCollections =>
      this.collection();
}

const OganizationsCollectionSchema = CollectionSchema(
  name: r'OganizationsCollection',
  id: -670967029023778640,
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
  estimateSize: _oganizationsCollectionEstimateSize,
  serialize: _oganizationsCollectionSerialize,
  deserialize: _oganizationsCollectionDeserialize,
  deserializeProp: _oganizationsCollectionDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _oganizationsCollectionGetId,
  getLinks: _oganizationsCollectionGetLinks,
  attach: _oganizationsCollectionAttach,
  version: '3.1.0+1',
);

int _oganizationsCollectionEstimateSize(
  OganizationsCollection object,
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

void _oganizationsCollectionSerialize(
  OganizationsCollection object,
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

OganizationsCollection _oganizationsCollectionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = OganizationsCollection();
  object.adress = reader.readString(offsets[0]);
  object.deleteMark = reader.readBool(offsets[1]);
  object.id = id;
  object.inn = reader.readString(offsets[2]);
  object.kpp = reader.readString(offsets[3]);
  object.name = reader.readString(offsets[4]);
  return object;
}

P _oganizationsCollectionDeserializeProp<P>(
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

Id _oganizationsCollectionGetId(OganizationsCollection object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _oganizationsCollectionGetLinks(
    OganizationsCollection object) {
  return [];
}

void _oganizationsCollectionAttach(
    IsarCollection<dynamic> col, Id id, OganizationsCollection object) {
  object.id = id;
}

extension OganizationsCollectionQueryWhereSort
    on QueryBuilder<OganizationsCollection, OganizationsCollection, QWhere> {
  QueryBuilder<OganizationsCollection, OganizationsCollection, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension OganizationsCollectionQueryWhere on QueryBuilder<
    OganizationsCollection, OganizationsCollection, QWhereClause> {
  QueryBuilder<OganizationsCollection, OganizationsCollection,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

extension OganizationsCollectionQueryFilter on QueryBuilder<
    OganizationsCollection, OganizationsCollection, QFilterCondition> {
  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
      QAfterFilterCondition> adressIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'adress',
        value: '',
      ));
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection,
      QAfterFilterCondition> adressIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'adress',
        value: '',
      ));
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection,
      QAfterFilterCondition> deleteMarkEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deleteMark',
        value: value,
      ));
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
      QAfterFilterCondition> innIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'inn',
        value: '',
      ));
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection,
      QAfterFilterCondition> innIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'inn',
        value: '',
      ));
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
      QAfterFilterCondition> kppIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kpp',
        value: '',
      ));
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection,
      QAfterFilterCondition> kppIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'kpp',
        value: '',
      ));
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
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

  QueryBuilder<OganizationsCollection, OganizationsCollection,
      QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection,
      QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension OganizationsCollectionQueryObject on QueryBuilder<
    OganizationsCollection, OganizationsCollection, QFilterCondition> {}

extension OganizationsCollectionQueryLinks on QueryBuilder<
    OganizationsCollection, OganizationsCollection, QFilterCondition> {}

extension OganizationsCollectionQuerySortBy
    on QueryBuilder<OganizationsCollection, OganizationsCollection, QSortBy> {
  QueryBuilder<OganizationsCollection, OganizationsCollection, QAfterSortBy>
      sortByAdress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adress', Sort.asc);
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection, QAfterSortBy>
      sortByAdressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adress', Sort.desc);
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection, QAfterSortBy>
      sortByDeleteMark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteMark', Sort.asc);
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection, QAfterSortBy>
      sortByDeleteMarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteMark', Sort.desc);
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection, QAfterSortBy>
      sortByInn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inn', Sort.asc);
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection, QAfterSortBy>
      sortByInnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inn', Sort.desc);
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection, QAfterSortBy>
      sortByKpp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kpp', Sort.asc);
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection, QAfterSortBy>
      sortByKppDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kpp', Sort.desc);
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection, QAfterSortBy>
      sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension OganizationsCollectionQuerySortThenBy on QueryBuilder<
    OganizationsCollection, OganizationsCollection, QSortThenBy> {
  QueryBuilder<OganizationsCollection, OganizationsCollection, QAfterSortBy>
      thenByAdress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adress', Sort.asc);
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection, QAfterSortBy>
      thenByAdressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adress', Sort.desc);
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection, QAfterSortBy>
      thenByDeleteMark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteMark', Sort.asc);
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection, QAfterSortBy>
      thenByDeleteMarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteMark', Sort.desc);
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection, QAfterSortBy>
      thenByInn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inn', Sort.asc);
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection, QAfterSortBy>
      thenByInnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inn', Sort.desc);
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection, QAfterSortBy>
      thenByKpp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kpp', Sort.asc);
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection, QAfterSortBy>
      thenByKppDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kpp', Sort.desc);
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection, QAfterSortBy>
      thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension OganizationsCollectionQueryWhereDistinct
    on QueryBuilder<OganizationsCollection, OganizationsCollection, QDistinct> {
  QueryBuilder<OganizationsCollection, OganizationsCollection, QDistinct>
      distinctByAdress({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'adress', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection, QDistinct>
      distinctByDeleteMark() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deleteMark');
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection, QDistinct>
      distinctByInn({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'inn', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection, QDistinct>
      distinctByKpp({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'kpp', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<OganizationsCollection, OganizationsCollection, QDistinct>
      distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension OganizationsCollectionQueryProperty on QueryBuilder<
    OganizationsCollection, OganizationsCollection, QQueryProperty> {
  QueryBuilder<OganizationsCollection, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<OganizationsCollection, String, QQueryOperations>
      adressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'adress');
    });
  }

  QueryBuilder<OganizationsCollection, bool, QQueryOperations>
      deleteMarkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deleteMark');
    });
  }

  QueryBuilder<OganizationsCollection, String, QQueryOperations> innProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'inn');
    });
  }

  QueryBuilder<OganizationsCollection, String, QQueryOperations> kppProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'kpp');
    });
  }

  QueryBuilder<OganizationsCollection, String, QQueryOperations>
      nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}
