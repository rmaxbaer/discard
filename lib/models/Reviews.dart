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

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Reviews type in your schema. */
@immutable
class Reviews extends Model {
  static const classType = const _ReviewsModelType();
  final String id;
  final bool? _recommended;
  final String? _review;
  final int? _rating;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  ReviewsModelIdentifier get modelIdentifier {
      return ReviewsModelIdentifier(
        id: id
      );
  }
  
  bool? get recommended {
    return _recommended;
  }
  
  String? get review {
    return _review;
  }
  
  int? get rating {
    return _rating;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Reviews._internal({required this.id, recommended, review, rating, createdAt, updatedAt}): _recommended = recommended, _review = review, _rating = rating, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Reviews({String? id, bool? recommended, String? review, int? rating}) {
    return Reviews._internal(
      id: id == null ? UUID.getUUID() : id,
      recommended: recommended,
      review: review,
      rating: rating);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Reviews &&
      id == other.id &&
      _recommended == other._recommended &&
      _review == other._review &&
      _rating == other._rating;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Reviews {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("recommended=" + (_recommended != null ? _recommended!.toString() : "null") + ", ");
    buffer.write("review=" + "$_review" + ", ");
    buffer.write("rating=" + (_rating != null ? _rating!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Reviews copyWith({bool? recommended, String? review, int? rating}) {
    return Reviews._internal(
      id: id,
      recommended: recommended ?? this.recommended,
      review: review ?? this.review,
      rating: rating ?? this.rating);
  }
  
  Reviews.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _recommended = json['recommended'],
      _review = json['review'],
      _rating = (json['rating'] as num?)?.toInt(),
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'recommended': _recommended, 'review': _review, 'rating': _rating, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'recommended': _recommended, 'review': _review, 'rating': _rating, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<ReviewsModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<ReviewsModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField RECOMMENDED = QueryField(fieldName: "recommended");
  static final QueryField REVIEW = QueryField(fieldName: "review");
  static final QueryField RATING = QueryField(fieldName: "rating");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Reviews";
    modelSchemaDefinition.pluralName = "Reviews";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Reviews.RECOMMENDED,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Reviews.REVIEW,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Reviews.RATING,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _ReviewsModelType extends ModelType<Reviews> {
  const _ReviewsModelType();
  
  @override
  Reviews fromJson(Map<String, dynamic> jsonData) {
    return Reviews.fromJson(jsonData);
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Reviews] in your schema.
 */
@immutable
class ReviewsModelIdentifier implements ModelIdentifier<Reviews> {
  final String id;

  /** Create an instance of ReviewsModelIdentifier using [id] the primary key. */
  const ReviewsModelIdentifier({
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
  String toString() => 'ReviewsModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ReviewsModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}