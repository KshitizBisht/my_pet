/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;
import 'package:collection/collection.dart';


/** This is an auto generated class representing the Pet type in your schema. */
class Pet extends amplify_core.Model {
  static const classType = const _PetModelType();
  final String id;
  final String? _name;
  final String? _type;
  final String? _breed;
  final String? _petImageKey;
  final String? _petImageUrl;
  final int? _age;
  final String? _diet;
  final String? _nature;
  final User? _user;
  final List<PetRequest>? _petRequests;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  PetModelIdentifier get modelIdentifier {
      return PetModelIdentifier(
        id: id
      );
  }
  
  String get name {
    try {
      return _name!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get type {
    try {
      return _type!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get breed {
    try {
      return _breed!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get petImageKey {
    return _petImageKey;
  }
  
  String? get petImageUrl {
    return _petImageUrl;
  }
  
  int get age {
    try {
      return _age!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get diet {
    try {
      return _diet!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get nature {
    try {
      return _nature!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  User get user {
    try {
      return _user!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<PetRequest>? get petRequests {
    return _petRequests;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Pet._internal({required this.id, required name, required type, required breed, petImageKey, petImageUrl, required age, required diet, required nature, required user, petRequests, createdAt, updatedAt}): _name = name, _type = type, _breed = breed, _petImageKey = petImageKey, _petImageUrl = petImageUrl, _age = age, _diet = diet, _nature = nature, _user = user, _petRequests = petRequests, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Pet({String? id, required String name, required String type, required String breed, String? petImageKey, String? petImageUrl, required int age, required String diet, required String nature, required User user, List<PetRequest>? petRequests}) {
    return Pet._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      name: name,
      type: type,
      breed: breed,
      petImageKey: petImageKey,
      petImageUrl: petImageUrl,
      age: age,
      diet: diet,
      nature: nature,
      user: user,
      petRequests: petRequests != null ? List<PetRequest>.unmodifiable(petRequests) : petRequests);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Pet &&
      id == other.id &&
      _name == other._name &&
      _type == other._type &&
      _breed == other._breed &&
      _petImageKey == other._petImageKey &&
      _petImageUrl == other._petImageUrl &&
      _age == other._age &&
      _diet == other._diet &&
      _nature == other._nature &&
      _user == other._user &&
      DeepCollectionEquality().equals(_petRequests, other._petRequests);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Pet {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("type=" + "$_type" + ", ");
    buffer.write("breed=" + "$_breed" + ", ");
    buffer.write("petImageKey=" + "$_petImageKey" + ", ");
    buffer.write("petImageUrl=" + "$_petImageUrl" + ", ");
    buffer.write("age=" + (_age != null ? _age!.toString() : "null") + ", ");
    buffer.write("diet=" + "$_diet" + ", ");
    buffer.write("nature=" + "$_nature" + ", ");
    buffer.write("user=" + (_user != null ? _user!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Pet copyWith({String? name, String? type, String? breed, String? petImageKey, String? petImageUrl, int? age, String? diet, String? nature, User? user, List<PetRequest>? petRequests}) {
    return Pet._internal(
      id: id,
      name: name ?? this.name,
      type: type ?? this.type,
      breed: breed ?? this.breed,
      petImageKey: petImageKey ?? this.petImageKey,
      petImageUrl: petImageUrl ?? this.petImageUrl,
      age: age ?? this.age,
      diet: diet ?? this.diet,
      nature: nature ?? this.nature,
      user: user ?? this.user,
      petRequests: petRequests ?? this.petRequests);
  }
  
  Pet copyWithModelFieldValues({
    ModelFieldValue<String>? name,
    ModelFieldValue<String>? type,
    ModelFieldValue<String>? breed,
    ModelFieldValue<String?>? petImageKey,
    ModelFieldValue<String?>? petImageUrl,
    ModelFieldValue<int>? age,
    ModelFieldValue<String>? diet,
    ModelFieldValue<String>? nature,
    ModelFieldValue<User>? user,
    ModelFieldValue<List<PetRequest>?>? petRequests
  }) {
    return Pet._internal(
      id: id,
      name: name == null ? this.name : name.value,
      type: type == null ? this.type : type.value,
      breed: breed == null ? this.breed : breed.value,
      petImageKey: petImageKey == null ? this.petImageKey : petImageKey.value,
      petImageUrl: petImageUrl == null ? this.petImageUrl : petImageUrl.value,
      age: age == null ? this.age : age.value,
      diet: diet == null ? this.diet : diet.value,
      nature: nature == null ? this.nature : nature.value,
      user: user == null ? this.user : user.value,
      petRequests: petRequests == null ? this.petRequests : petRequests.value
    );
  }
  
  Pet.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _type = json['type'],
      _breed = json['breed'],
      _petImageKey = json['petImageKey'],
      _petImageUrl = json['petImageUrl'],
      _age = (json['age'] as num?)?.toInt(),
      _diet = json['diet'],
      _nature = json['nature'],
      _user = json['user']?['serializedData'] != null
        ? User.fromJson(new Map<String, dynamic>.from(json['user']['serializedData']))
        : null,
      _petRequests = json['petRequests'] is List
        ? (json['petRequests'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => PetRequest.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'type': _type, 'breed': _breed, 'petImageKey': _petImageKey, 'petImageUrl': _petImageUrl, 'age': _age, 'diet': _diet, 'nature': _nature, 'user': _user?.toJson(), 'petRequests': _petRequests?.map((PetRequest? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'name': _name,
    'type': _type,
    'breed': _breed,
    'petImageKey': _petImageKey,
    'petImageUrl': _petImageUrl,
    'age': _age,
    'diet': _diet,
    'nature': _nature,
    'user': _user,
    'petRequests': _petRequests,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<PetModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<PetModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final TYPE = amplify_core.QueryField(fieldName: "type");
  static final BREED = amplify_core.QueryField(fieldName: "breed");
  static final PETIMAGEKEY = amplify_core.QueryField(fieldName: "petImageKey");
  static final PETIMAGEURL = amplify_core.QueryField(fieldName: "petImageUrl");
  static final AGE = amplify_core.QueryField(fieldName: "age");
  static final DIET = amplify_core.QueryField(fieldName: "diet");
  static final NATURE = amplify_core.QueryField(fieldName: "nature");
  static final USER = amplify_core.QueryField(
    fieldName: "user",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'User'));
  static final PETREQUESTS = amplify_core.QueryField(
    fieldName: "petRequests",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'PetRequest'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Pet";
    modelSchemaDefinition.pluralName = "Pets";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.OWNER,
        ownerField: "userID",
        identityClaim: "cognito:username",
        provider: amplify_core.AuthRuleProvider.USERPOOLS,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE,
          amplify_core.ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["userID"], name: "byUser")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Pet.NAME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Pet.TYPE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Pet.BREED,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Pet.PETIMAGEKEY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Pet.PETIMAGEURL,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Pet.AGE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Pet.DIET,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Pet.NATURE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Pet.USER,
      isRequired: true,
      targetNames: ['userID'],
      ofModelName: 'User'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Pet.PETREQUESTS,
      isRequired: false,
      ofModelName: 'PetRequest',
      associatedKey: PetRequest.PET
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _PetModelType extends amplify_core.ModelType<Pet> {
  const _PetModelType();
  
  @override
  Pet fromJson(Map<String, dynamic> jsonData) {
    return Pet.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Pet';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Pet] in your schema.
 */
class PetModelIdentifier implements amplify_core.ModelIdentifier<Pet> {
  final String id;

  /** Create an instance of PetModelIdentifier using [id] the primary key. */
  const PetModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'PetModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is PetModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}