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


/** This is an auto generated class representing the PetRequest type in your schema. */
class PetRequest extends amplify_core.Model {
  static const classType = const _PetRequestModelType();
  final String id;
  final Pet? _pet;
  final Request? _request;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  PetRequestModelIdentifier get modelIdentifier {
      return PetRequestModelIdentifier(
        id: id
      );
  }
  
  Pet get pet {
    try {
      return _pet!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  Request get request {
    try {
      return _request!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const PetRequest._internal({required this.id, required pet, required request, createdAt, updatedAt}): _pet = pet, _request = request, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory PetRequest({String? id, required Pet pet, required Request request}) {
    return PetRequest._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      pet: pet,
      request: request);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PetRequest &&
      id == other.id &&
      _pet == other._pet &&
      _request == other._request;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("PetRequest {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("pet=" + (_pet != null ? _pet!.toString() : "null") + ", ");
    buffer.write("request=" + (_request != null ? _request!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  PetRequest copyWith({Pet? pet, Request? request}) {
    return PetRequest._internal(
      id: id,
      pet: pet ?? this.pet,
      request: request ?? this.request);
  }
  
  PetRequest copyWithModelFieldValues({
    ModelFieldValue<Pet>? pet,
    ModelFieldValue<Request>? request
  }) {
    return PetRequest._internal(
      id: id,
      pet: pet == null ? this.pet : pet.value,
      request: request == null ? this.request : request.value
    );
  }
  
  PetRequest.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _pet = json['pet']?['serializedData'] != null
        ? Pet.fromJson(new Map<String, dynamic>.from(json['pet']['serializedData']))
        : null,
      _request = json['request']?['serializedData'] != null
        ? Request.fromJson(new Map<String, dynamic>.from(json['request']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'pet': _pet?.toJson(), 'request': _request?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'pet': _pet,
    'request': _request,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<PetRequestModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<PetRequestModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final PET = amplify_core.QueryField(
    fieldName: "pet",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Pet'));
  static final REQUEST = amplify_core.QueryField(
    fieldName: "request",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Request'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "PetRequest";
    modelSchemaDefinition.pluralName = "PetRequests";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.OWNER,
        ownerField: "requestID",
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
        ownerField: "petID",
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
      amplify_core.ModelIndex(fields: const ["petID"], name: "byPet"),
      amplify_core.ModelIndex(fields: const ["requestID"], name: "byRequest")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: PetRequest.PET,
      isRequired: true,
      targetNames: ['petID'],
      ofModelName: 'Pet'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: PetRequest.REQUEST,
      isRequired: true,
      targetNames: ['requestID'],
      ofModelName: 'Request'
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

class _PetRequestModelType extends amplify_core.ModelType<PetRequest> {
  const _PetRequestModelType();
  
  @override
  PetRequest fromJson(Map<String, dynamic> jsonData) {
    return PetRequest.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'PetRequest';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [PetRequest] in your schema.
 */
class PetRequestModelIdentifier implements amplify_core.ModelIdentifier<PetRequest> {
  final String id;

  /** Create an instance of PetRequestModelIdentifier using [id] the primary key. */
  const PetRequestModelIdentifier({
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
  String toString() => 'PetRequestModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is PetRequestModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}