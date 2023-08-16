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


/** This is an auto generated class representing the User type in your schema. */
class User extends amplify_core.Model {
  static const classType = const _UserModelType();
  final String id;
  final String? _name;
  final String? _email;
  final String? _location;
  final bool? _isCaretaker;
  final String? _userImagekey;
  final String? _userImageurl;
  final List<Pet>? _pets;
  final List<Request>? _requests;
  final List<Review>? _writtenReviews;
  final List<Review>? _receivedReviews;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  UserModelIdentifier get modelIdentifier {
      return UserModelIdentifier(
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
  
  String get email {
    try {
      return _email!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get location {
    return _location;
  }
  
  bool get isCaretaker {
    try {
      return _isCaretaker!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get userImagekey {
    return _userImagekey;
  }
  
  String? get userImageurl {
    return _userImageurl;
  }
  
  List<Pet>? get pets {
    return _pets;
  }
  
  List<Request>? get requests {
    return _requests;
  }
  
  List<Review>? get writtenReviews {
    return _writtenReviews;
  }
  
  List<Review>? get receivedReviews {
    return _receivedReviews;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const User._internal({required this.id, required name, required email, location, required isCaretaker, userImagekey, userImageurl, pets, requests, writtenReviews, receivedReviews, createdAt, updatedAt}): _name = name, _email = email, _location = location, _isCaretaker = isCaretaker, _userImagekey = userImagekey, _userImageurl = userImageurl, _pets = pets, _requests = requests, _writtenReviews = writtenReviews, _receivedReviews = receivedReviews, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory User({String? id, required String name, required String email, String? location, required bool isCaretaker, String? userImagekey, String? userImageurl, List<Pet>? pets, List<Request>? requests, List<Review>? writtenReviews, List<Review>? receivedReviews}) {
    return User._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      name: name,
      email: email,
      location: location,
      isCaretaker: isCaretaker,
      userImagekey: userImagekey,
      userImageurl: userImageurl,
      pets: pets != null ? List<Pet>.unmodifiable(pets) : pets,
      requests: requests != null ? List<Request>.unmodifiable(requests) : requests,
      writtenReviews: writtenReviews != null ? List<Review>.unmodifiable(writtenReviews) : writtenReviews,
      receivedReviews: receivedReviews != null ? List<Review>.unmodifiable(receivedReviews) : receivedReviews);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
      id == other.id &&
      _name == other._name &&
      _email == other._email &&
      _location == other._location &&
      _isCaretaker == other._isCaretaker &&
      _userImagekey == other._userImagekey &&
      _userImageurl == other._userImageurl &&
      DeepCollectionEquality().equals(_pets, other._pets) &&
      DeepCollectionEquality().equals(_requests, other._requests) &&
      DeepCollectionEquality().equals(_writtenReviews, other._writtenReviews) &&
      DeepCollectionEquality().equals(_receivedReviews, other._receivedReviews);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("User {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("location=" + "$_location" + ", ");
    buffer.write("isCaretaker=" + (_isCaretaker != null ? _isCaretaker!.toString() : "null") + ", ");
    buffer.write("userImagekey=" + "$_userImagekey" + ", ");
    buffer.write("userImageurl=" + "$_userImageurl" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  User copyWith({String? name, String? email, String? location, bool? isCaretaker, String? userImagekey, String? userImageurl, List<Pet>? pets, List<Request>? requests, List<Review>? writtenReviews, List<Review>? receivedReviews}) {
    return User._internal(
      id: id,
      name: name ?? this.name,
      email: email ?? this.email,
      location: location ?? this.location,
      isCaretaker: isCaretaker ?? this.isCaretaker,
      userImagekey: userImagekey ?? this.userImagekey,
      userImageurl: userImageurl ?? this.userImageurl,
      pets: pets ?? this.pets,
      requests: requests ?? this.requests,
      writtenReviews: writtenReviews ?? this.writtenReviews,
      receivedReviews: receivedReviews ?? this.receivedReviews);
  }
  
  User copyWithModelFieldValues({
    ModelFieldValue<String>? name,
    ModelFieldValue<String>? email,
    ModelFieldValue<String?>? location,
    ModelFieldValue<bool>? isCaretaker,
    ModelFieldValue<String?>? userImagekey,
    ModelFieldValue<String?>? userImageurl,
    ModelFieldValue<List<Pet>?>? pets,
    ModelFieldValue<List<Request>?>? requests,
    ModelFieldValue<List<Review>?>? writtenReviews,
    ModelFieldValue<List<Review>?>? receivedReviews
  }) {
    return User._internal(
      id: id,
      name: name == null ? this.name : name.value,
      email: email == null ? this.email : email.value,
      location: location == null ? this.location : location.value,
      isCaretaker: isCaretaker == null ? this.isCaretaker : isCaretaker.value,
      userImagekey: userImagekey == null ? this.userImagekey : userImagekey.value,
      userImageurl: userImageurl == null ? this.userImageurl : userImageurl.value,
      pets: pets == null ? this.pets : pets.value,
      requests: requests == null ? this.requests : requests.value,
      writtenReviews: writtenReviews == null ? this.writtenReviews : writtenReviews.value,
      receivedReviews: receivedReviews == null ? this.receivedReviews : receivedReviews.value
    );
  }
  
  User.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _email = json['email'],
      _location = json['location'],
      _isCaretaker = json['isCaretaker'],
      _userImagekey = json['userImagekey'],
      _userImageurl = json['userImageurl'],
      _pets = json['pets'] is List
        ? (json['pets'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Pet.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _requests = json['requests'] is List
        ? (json['requests'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Request.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _writtenReviews = json['writtenReviews'] is List
        ? (json['writtenReviews'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Review.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _receivedReviews = json['receivedReviews'] is List
        ? (json['receivedReviews'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Review.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'email': _email, 'location': _location, 'isCaretaker': _isCaretaker, 'userImagekey': _userImagekey, 'userImageurl': _userImageurl, 'pets': _pets?.map((Pet? e) => e?.toJson()).toList(), 'requests': _requests?.map((Request? e) => e?.toJson()).toList(), 'writtenReviews': _writtenReviews?.map((Review? e) => e?.toJson()).toList(), 'receivedReviews': _receivedReviews?.map((Review? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'name': _name,
    'email': _email,
    'location': _location,
    'isCaretaker': _isCaretaker,
    'userImagekey': _userImagekey,
    'userImageurl': _userImageurl,
    'pets': _pets,
    'requests': _requests,
    'writtenReviews': _writtenReviews,
    'receivedReviews': _receivedReviews,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<UserModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<UserModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final EMAIL = amplify_core.QueryField(fieldName: "email");
  static final LOCATION = amplify_core.QueryField(fieldName: "location");
  static final ISCARETAKER = amplify_core.QueryField(fieldName: "isCaretaker");
  static final USERIMAGEKEY = amplify_core.QueryField(fieldName: "userImagekey");
  static final USERIMAGEURL = amplify_core.QueryField(fieldName: "userImageurl");
  static final PETS = amplify_core.QueryField(
    fieldName: "pets",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Pet'));
  static final REQUESTS = amplify_core.QueryField(
    fieldName: "requests",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Request'));
  static final WRITTENREVIEWS = amplify_core.QueryField(
    fieldName: "writtenReviews",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Review'));
  static final RECEIVEDREVIEWS = amplify_core.QueryField(
    fieldName: "receivedReviews",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Review'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "User";
    modelSchemaDefinition.pluralName = "Users";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.OWNER,
        ownerField: "owner",
        identityClaim: "cognito:username",
        provider: amplify_core.AuthRuleProvider.USERPOOLS,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE,
          amplify_core.ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.NAME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.EMAIL,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.LOCATION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.ISCARETAKER,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.USERIMAGEKEY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.USERIMAGEURL,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.PETS,
      isRequired: false,
      ofModelName: 'Pet',
      associatedKey: Pet.USER
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.REQUESTS,
      isRequired: false,
      ofModelName: 'Request',
      associatedKey: Request.OWNER
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.WRITTENREVIEWS,
      isRequired: false,
      ofModelName: 'Review',
      associatedKey: Review.REVIEWER
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.RECEIVEDREVIEWS,
      isRequired: false,
      ofModelName: 'Review',
      associatedKey: Review.REVIEWEE
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

class _UserModelType extends amplify_core.ModelType<User> {
  const _UserModelType();
  
  @override
  User fromJson(Map<String, dynamic> jsonData) {
    return User.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'User';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [User] in your schema.
 */
class UserModelIdentifier implements amplify_core.ModelIdentifier<User> {
  final String id;

  /** Create an instance of UserModelIdentifier using [id] the primary key. */
  const UserModelIdentifier({
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
  String toString() => 'UserModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is UserModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}