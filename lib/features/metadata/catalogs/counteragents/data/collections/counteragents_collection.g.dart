// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counteragents_collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCounteragentsCollectionCollection on Isar {
  IsarCollection<CounteragentsCollection> get counteragentsCollections =>
      this.collection();
}

const CounteragentsCollectionSchema = CollectionSchema(
  name: r'CounteragentsCollection',
  id: -6984499157050514122,
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
  estimateSize: _counteragentsCollectionEstimateSize,
  serialize: _counteragentsCollectionSerialize,
  deserialize: _counteragentsCollectionDeserialize,
  deserializeProp: _counteragentsCollectionDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _counteragentsCollectionGetId,
  getLinks: _counteragentsCollectionGetLinks,
  attach: _counteragentsCollectionAttach,
  version: '3.1.0+1',
);

int _counteragentsCollectionEstimateSize(
  CounteragentsCollection object,
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

void _counteragentsCollectionSerialize(
  CounteragentsCollection object,
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

CounteragentsCollection _counteragentsCollectionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CounteragentsCollection();
  object.adress = reader.readString(offsets[0]);
  object.deleteMark = reader.readBool(offsets[1]);
  object.id = id;
  object.inn = reader.readString(offsets[2]);
  object.kpp = reader.readString(offsets[3]);
  object.name = reader.readString(offsets[4]);
  return object;
}

P _counteragentsCollectionDeserializeProp<P>(
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

Id _counteragentsCollectionGetId(CounteragentsCollection object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _counteragentsCollectionGetLinks(
    CounteragentsCollection object) {
  return [];
}

void _counteragentsCollectionAttach(
    IsarCollection<dynamic> col, Id id, CounteragentsCollection object) {
  object.id = id;
}

extension CounteragentsCollectionQueryWhereSort
    on QueryBuilder<CounteragentsCollection, CounteragentsCollection, QWhere> {
  QueryBuilder<CounteragentsCollection, CounteragentsCollection, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CounteragentsCollectionQueryWhere on QueryBuilder<
    CounteragentsCollection, CounteragentsCollection, QWhereClause> {
  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

extension CounteragentsCollectionQueryFilter on QueryBuilder<
    CounteragentsCollection, CounteragentsCollection, QFilterCondition> {
  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
      QAfterFilterCondition> adressIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'adress',
        value: '',
      ));
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
      QAfterFilterCondition> adressIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'adress',
        value: '',
      ));
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
      QAfterFilterCondition> deleteMarkEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deleteMark',
        value: value,
      ));
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
      QAfterFilterCondition> innIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'inn',
        value: '',
      ));
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
      QAfterFilterCondition> innIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'inn',
        value: '',
      ));
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
      QAfterFilterCondition> kppIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kpp',
        value: '',
      ));
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
      QAfterFilterCondition> kppIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'kpp',
        value: '',
      ));
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
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

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
      QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection,
      QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension CounteragentsCollectionQueryObject on QueryBuilder<
    CounteragentsCollection, CounteragentsCollection, QFilterCondition> {}

extension CounteragentsCollectionQueryLinks on QueryBuilder<
    CounteragentsCollection, CounteragentsCollection, QFilterCondition> {}

extension CounteragentsCollectionQuerySortBy
    on QueryBuilder<CounteragentsCollection, CounteragentsCollection, QSortBy> {
  QueryBuilder<CounteragentsCollection, CounteragentsCollection, QAfterSortBy>
      sortByAdress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adress', Sort.asc);
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection, QAfterSortBy>
      sortByAdressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adress', Sort.desc);
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection, QAfterSortBy>
      sortByDeleteMark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteMark', Sort.asc);
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection, QAfterSortBy>
      sortByDeleteMarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteMark', Sort.desc);
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection, QAfterSortBy>
      sortByInn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inn', Sort.asc);
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection, QAfterSortBy>
      sortByInnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inn', Sort.desc);
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection, QAfterSortBy>
      sortByKpp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kpp', Sort.asc);
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection, QAfterSortBy>
      sortByKppDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kpp', Sort.desc);
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection, QAfterSortBy>
      sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension CounteragentsCollectionQuerySortThenBy on QueryBuilder<
    CounteragentsCollection, CounteragentsCollection, QSortThenBy> {
  QueryBuilder<CounteragentsCollection, CounteragentsCollection, QAfterSortBy>
      thenByAdress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adress', Sort.asc);
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection, QAfterSortBy>
      thenByAdressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adress', Sort.desc);
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection, QAfterSortBy>
      thenByDeleteMark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteMark', Sort.asc);
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection, QAfterSortBy>
      thenByDeleteMarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteMark', Sort.desc);
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection, QAfterSortBy>
      thenByInn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inn', Sort.asc);
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection, QAfterSortBy>
      thenByInnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inn', Sort.desc);
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection, QAfterSortBy>
      thenByKpp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kpp', Sort.asc);
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection, QAfterSortBy>
      thenByKppDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kpp', Sort.desc);
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection, QAfterSortBy>
      thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension CounteragentsCollectionQueryWhereDistinct on QueryBuilder<
    CounteragentsCollection, CounteragentsCollection, QDistinct> {
  QueryBuilder<CounteragentsCollection, CounteragentsCollection, QDistinct>
      distinctByAdress({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'adress', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection, QDistinct>
      distinctByDeleteMark() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deleteMark');
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection, QDistinct>
      distinctByInn({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'inn', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection, QDistinct>
      distinctByKpp({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'kpp', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CounteragentsCollection, CounteragentsCollection, QDistinct>
      distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension CounteragentsCollectionQueryProperty on QueryBuilder<
    CounteragentsCollection, CounteragentsCollection, QQueryProperty> {
  QueryBuilder<CounteragentsCollection, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CounteragentsCollection, String, QQueryOperations>
      adressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'adress');
    });
  }

  QueryBuilder<CounteragentsCollection, bool, QQueryOperations>
      deleteMarkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deleteMark');
    });
  }

  QueryBuilder<CounteragentsCollection, String, QQueryOperations>
      innProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'inn');
    });
  }

  QueryBuilder<CounteragentsCollection, String, QQueryOperations>
      kppProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'kpp');
    });
  }

  QueryBuilder<CounteragentsCollection, String, QQueryOperations>
      nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}
