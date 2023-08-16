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


/** This is an auto generated class representing the PetCarers type in your schema. */
class PetCarers extends amplify_core.Model {
  static const classType = const _PetCarersModelType();
  final String id;
  final String? _title;
  final int? _rating;
  final String? _postcode;
  final int? _numberOfRater;
  final String? _description;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  PetCarersModelIdentifier get modelIdentifier {
      return PetCarersModelIdentifier(
        id: id
      );
  }
  
  String get title {
    try {
      return _title!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int? get rating {
    return _rating;
  }
  
  String? get postcode {
    return _postcode;
  }
  
  int? get numberOfRater {
    return _numberOfRater;
  }
  
  String? get description {
    return _description;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const PetCarers._internal({required this.id, required title, rating, postcode, numberOfRater, description, createdAt, updatedAt}): _title = title, _rating = rating, _postcode = postcode, _numberOfRater = numberOfRater, _description = description, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory PetCarers({String? id, required String title, int? rating, String? postcode, int? numberOfRater, String? description}) {
    return PetCarers._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      title: title,
      rating: rating,
      postcode: postcode,
      numberOfRater: numberOfRater,
      description: description);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PetCarers &&
      id == other.id &&
      _title == other._title &&
      _rating == other._rating &&
      _postcode == other._postcode &&
      _numberOfRater == other._numberOfRater &&
      _description == other._description;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("PetCarers {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("title=" + "$_title" + ", ");
    buffer.write("rating=" + (_rating != null ? _rating!.toString() : "null") + ", ");
    buffer.write("postcode=" + "$_postcode" + ", ");
    buffer.write("numberOfRater=" + (_numberOfRater != null ? _numberOfRater!.toString() : "null") + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  PetCarers copyWith({String? title, int? rating, String? postcode, int? numberOfRater, String? description}) {
    return PetCarers._internal(
      id: id,
      title: title ?? this.title,
      rating: rating ?? this.rating,
      postcode: postcode ?? this.postcode,
      numberOfRater: numberOfRater ?? this.numberOfRater,
      description: description ?? this.description);
  }
  
  PetCarers copyWithModelFieldValues({
    ModelFieldValue<String>? title,
    ModelFieldValue<int?>? rating,
    ModelFieldValue<String?>? postcode,
    ModelFieldValue<int?>? numberOfRater,
    ModelFieldValue<String?>? description
  }) {
    return PetCarers._internal(
      id: id,
      title: title == null ? this.title : title.value,
      rating: rating == null ? this.rating : rating.value,
      postcode: postcode == null ? this.postcode : postcode.value,
      numberOfRater: numberOfRater == null ? this.numberOfRater : numberOfRater.value,
      description: description == null ? this.description : description.value
    );
  }
  
  PetCarers.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _title = json['title'],
      _rating = (json['rating'] as num?)?.toInt(),
      _postcode = json['postcode'],
      _numberOfRater = (json['numberOfRater'] as num?)?.toInt(),
      _description = json['description'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'title': _title, 'rating': _rating, 'postcode': _postcode, 'numberOfRater': _numberOfRater, 'description': _description, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'title': _title,
    'rating': _rating,
    'postcode': _postcode,
    'numberOfRater': _numberOfRater,
    'description': _description,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<PetCarersModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<PetCarersModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final TITLE = amplify_core.QueryField(fieldName: "title");
  static final RATING = amplify_core.QueryField(fieldName: "rating");
  static final POSTCODE = amplify_core.QueryField(fieldName: "postcode");
  static final NUMBEROFRATER = amplify_core.QueryField(fieldName: "numberOfRater");
  static final DESCRIPTION = amplify_core.QueryField(fieldName: "description");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "PetCarers";
    modelSchemaDefinition.pluralName = "PetCarers";
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PetCarers.TITLE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PetCarers.RATING,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PetCarers.POSTCODE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PetCarers.NUMBEROFRATER,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PetCarers.DESCRIPTION,
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

class _PetCarersModelType extends amplify_core.ModelType<PetCarers> {
  const _PetCarersModelType();
  
  @override
  PetCarers fromJson(Map<String, dynamic> jsonData) {
    return PetCarers.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'PetCarers';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [PetCarers] in your schema.
 */
class PetCarersModelIdentifier implements amplify_core.ModelIdentifier<PetCarers> {
  final String id;

  /** Create an instance of PetCarersModelIdentifier using [id] the primary key. */
  const PetCarersModelIdentifier({
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
  String toString() => 'PetCarersModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is PetCarersModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}