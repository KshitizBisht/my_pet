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


/** This is an auto generated class representing the Request type in your schema. */
class Request extends amplify_core.Model {
  static const classType = const _RequestModelType();
  final String id;
  final User? _owner;
  final User? _caretaker;
  final List<PetRequest>? _petRequests;
  final RequestStatus? _status;
  final String? _message;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  RequestModelIdentifier get modelIdentifier {
      return RequestModelIdentifier(
        id: id
      );
  }
  
  User get owner {
    try {
      return _owner!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  User get caretaker {
    try {
      return _caretaker!;
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
  
  RequestStatus? get status {
    return _status;
  }
  
  String? get message {
    return _message;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Request._internal({required this.id, required owner, required caretaker, petRequests, status, message, createdAt, updatedAt}): _owner = owner, _caretaker = caretaker, _petRequests = petRequests, _status = status, _message = message, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Request({String? id, required User owner, required User caretaker, List<PetRequest>? petRequests, RequestStatus? status, String? message}) {
    return Request._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      owner: owner,
      caretaker: caretaker,
      petRequests: petRequests != null ? List<PetRequest>.unmodifiable(petRequests) : petRequests,
      status: status,
      message: message);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Request &&
      id == other.id &&
      _owner == other._owner &&
      _caretaker == other._caretaker &&
      DeepCollectionEquality().equals(_petRequests, other._petRequests) &&
      _status == other._status &&
      _message == other._message;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Request {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("owner=" + (_owner != null ? _owner!.toString() : "null") + ", ");
    buffer.write("caretaker=" + (_caretaker != null ? _caretaker!.toString() : "null") + ", ");
    buffer.write("status=" + (_status != null ? amplify_core.enumToString(_status)! : "null") + ", ");
    buffer.write("message=" + "$_message" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Request copyWith({User? owner, User? caretaker, List<PetRequest>? petRequests, RequestStatus? status, String? message}) {
    return Request._internal(
      id: id,
      owner: owner ?? this.owner,
      caretaker: caretaker ?? this.caretaker,
      petRequests: petRequests ?? this.petRequests,
      status: status ?? this.status,
      message: message ?? this.message);
  }
  
  Request copyWithModelFieldValues({
    ModelFieldValue<User>? owner,
    ModelFieldValue<User>? caretaker,
    ModelFieldValue<List<PetRequest>?>? petRequests,
    ModelFieldValue<RequestStatus?>? status,
    ModelFieldValue<String?>? message
  }) {
    return Request._internal(
      id: id,
      owner: owner == null ? this.owner : owner.value,
      caretaker: caretaker == null ? this.caretaker : caretaker.value,
      petRequests: petRequests == null ? this.petRequests : petRequests.value,
      status: status == null ? this.status : status.value,
      message: message == null ? this.message : message.value
    );
  }
  
  Request.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _owner = json['owner']?['serializedData'] != null
        ? User.fromJson(new Map<String, dynamic>.from(json['owner']['serializedData']))
        : null,
      _caretaker = json['caretaker']?['serializedData'] != null
        ? User.fromJson(new Map<String, dynamic>.from(json['caretaker']['serializedData']))
        : null,
      _petRequests = json['petRequests'] is List
        ? (json['petRequests'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => PetRequest.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _status = amplify_core.enumFromString<RequestStatus>(json['status'], RequestStatus.values),
      _message = json['message'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'owner': _owner?.toJson(), 'caretaker': _caretaker?.toJson(), 'petRequests': _petRequests?.map((PetRequest? e) => e?.toJson()).toList(), 'status': amplify_core.enumToString(_status), 'message': _message, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'owner': _owner,
    'caretaker': _caretaker,
    'petRequests': _petRequests,
    'status': _status,
    'message': _message,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<RequestModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<RequestModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final OWNER = amplify_core.QueryField(
    fieldName: "owner",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'User'));
  static final CARETAKER = amplify_core.QueryField(
    fieldName: "caretaker",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'User'));
  static final PETREQUESTS = amplify_core.QueryField(
    fieldName: "petRequests",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'PetRequest'));
  static final STATUS = amplify_core.QueryField(fieldName: "status");
  static final MESSAGE = amplify_core.QueryField(fieldName: "message");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Request";
    modelSchemaDefinition.pluralName = "Requests";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.OWNER,
        ownerField: "ownerID",
        identityClaim: "cognito:username",
        provider: amplify_core.AuthRuleProvider.USERPOOLS,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE,
          amplify_core.ModelOperation.READ
        ]),
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.OWNER,
        ownerField: "caretakerID",
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
      amplify_core.ModelIndex(fields: const ["ownerID"], name: "byUser")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Request.OWNER,
      isRequired: true,
      targetNames: ['ownerID'],
      ofModelName: 'User'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Request.CARETAKER,
      isRequired: true,
      targetNames: ['caretakerID'],
      ofModelName: 'User'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Request.PETREQUESTS,
      isRequired: false,
      ofModelName: 'PetRequest',
      associatedKey: PetRequest.REQUEST
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Request.STATUS,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Request.MESSAGE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
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

class _RequestModelType extends amplify_core.ModelType<Request> {
  const _RequestModelType();
  
  @override
  Request fromJson(Map<String, dynamic> jsonData) {
    return Request.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Request';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Request] in your schema.
 */
class RequestModelIdentifier implements amplify_core.ModelIdentifier<Request> {
  final String id;

  /** Create an instance of RequestModelIdentifier using [id] the primary key. */
  const RequestModelIdentifier({
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
  String toString() => 'RequestModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is RequestModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}