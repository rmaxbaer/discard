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
import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Review type in your schema. */
@immutable
class Review extends Model {
  static const classType = const _ReviewModelType();
  final String id;
  final String? _profileID;
  final String? _restaurantID;
  final int? _rating;
  final String? _body;
  final List<ReviewImage>? _ReviewImages;
  final List<ReviewProfile>? _LikedBy;
  final List<Comment>? _Comments;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  ReviewModelIdentifier get modelIdentifier {
      return ReviewModelIdentifier(
        id: id
      );
  }
  
  String get profileID {
    try {
      return _profileID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get restaurantID {
    try {
      return _restaurantID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int get rating {
    try {
      return _rating!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get body {
    return _body;
  }
  
  List<ReviewImage>? get ReviewImages {
    return _ReviewImages;
  }
  
  List<ReviewProfile>? get LikedBy {
    return _LikedBy;
  }
  
  List<Comment>? get Comments {
    return _Comments;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Review._internal({required this.id, required profileID, required restaurantID, required rating, body, ReviewImages, LikedBy, Comments, createdAt, updatedAt}): _profileID = profileID, _restaurantID = restaurantID, _rating = rating, _body = body, _ReviewImages = ReviewImages, _LikedBy = LikedBy, _Comments = Comments, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Review({String? id, required String profileID, required String restaurantID, required int rating, String? body, List<ReviewImage>? ReviewImages, List<ReviewProfile>? LikedBy, List<Comment>? Comments}) {
    return Review._internal(
      id: id == null ? UUID.getUUID() : id,
      profileID: profileID,
      restaurantID: restaurantID,
      rating: rating,
      body: body,
      ReviewImages: ReviewImages != null ? List<ReviewImage>.unmodifiable(ReviewImages) : ReviewImages,
      LikedBy: LikedBy != null ? List<ReviewProfile>.unmodifiable(LikedBy) : LikedBy,
      Comments: Comments != null ? List<Comment>.unmodifiable(Comments) : Comments);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Review &&
      id == other.id &&
      _profileID == other._profileID &&
      _restaurantID == other._restaurantID &&
      _rating == other._rating &&
      _body == other._body &&
      DeepCollectionEquality().equals(_ReviewImages, other._ReviewImages) &&
      DeepCollectionEquality().equals(_LikedBy, other._LikedBy) &&
      DeepCollectionEquality().equals(_Comments, other._Comments);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Review {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("profileID=" + "$_profileID" + ", ");
    buffer.write("restaurantID=" + "$_restaurantID" + ", ");
    buffer.write("rating=" + (_rating != null ? _rating!.toString() : "null") + ", ");
    buffer.write("body=" + "$_body" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Review copyWith({String? profileID, String? restaurantID, int? rating, String? body, List<ReviewImage>? ReviewImages, List<ReviewProfile>? LikedBy, List<Comment>? Comments}) {
    return Review._internal(
      id: id,
      profileID: profileID ?? this.profileID,
      restaurantID: restaurantID ?? this.restaurantID,
      rating: rating ?? this.rating,
      body: body ?? this.body,
      ReviewImages: ReviewImages ?? this.ReviewImages,
      LikedBy: LikedBy ?? this.LikedBy,
      Comments: Comments ?? this.Comments);
  }
  
  Review.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _profileID = json['profileID'],
      _restaurantID = json['restaurantID'],
      _rating = (json['rating'] as num?)?.toInt(),
      _body = json['body'],
      _ReviewImages = json['ReviewImages'] is List
        ? (json['ReviewImages'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => ReviewImage.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _LikedBy = json['LikedBy'] is List
        ? (json['LikedBy'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => ReviewProfile.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _Comments = json['Comments'] is List
        ? (json['Comments'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Comment.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'profileID': _profileID, 'restaurantID': _restaurantID, 'rating': _rating, 'body': _body, 'ReviewImages': _ReviewImages?.map((ReviewImage? e) => e?.toJson()).toList(), 'LikedBy': _LikedBy?.map((ReviewProfile? e) => e?.toJson()).toList(), 'Comments': _Comments?.map((Comment? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'profileID': _profileID, 'restaurantID': _restaurantID, 'rating': _rating, 'body': _body, 'ReviewImages': _ReviewImages, 'LikedBy': _LikedBy, 'Comments': _Comments, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<ReviewModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<ReviewModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField PROFILEID = QueryField(fieldName: "profileID");
  static final QueryField RESTAURANTID = QueryField(fieldName: "restaurantID");
  static final QueryField RATING = QueryField(fieldName: "rating");
  static final QueryField BODY = QueryField(fieldName: "body");
  static final QueryField REVIEWIMAGES = QueryField(
    fieldName: "ReviewImages",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'ReviewImage'));
  static final QueryField LIKEDBY = QueryField(
    fieldName: "LikedBy",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'ReviewProfile'));
  static final QueryField COMMENTS = QueryField(
    fieldName: "Comments",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Comment'));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Review";
    modelSchemaDefinition.pluralName = "Reviews";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ]),
      AuthRule(
        authStrategy: AuthStrategy.OWNER,
        ownerField: "owner",
        identityClaim: "cognito:username",
        provider: AuthRuleProvider.USERPOOLS,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ]),
      AuthRule(
        authStrategy: AuthStrategy.GROUPS,
        groupClaim: "cognito:groups",
        groups: [ "admin" ],
        provider: AuthRuleProvider.USERPOOLS,
        operations: [
          ModelOperation.READ,
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE
        ])
    ];
    
    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["profileID"], name: "byProfile"),
      ModelIndex(fields: const ["restaurantID"], name: "byRestaurant")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Review.PROFILEID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Review.RESTAURANTID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Review.RATING,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Review.BODY,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Review.REVIEWIMAGES,
      isRequired: false,
      ofModelName: 'ReviewImage',
      associatedKey: ReviewImage.REVIEWID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Review.LIKEDBY,
      isRequired: false,
      ofModelName: 'ReviewProfile',
      associatedKey: ReviewProfile.REVIEW
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Review.COMMENTS,
      isRequired: false,
      ofModelName: 'Comment',
      associatedKey: Comment.REVIEWID
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

class _ReviewModelType extends ModelType<Review> {
  const _ReviewModelType();
  
  @override
  Review fromJson(Map<String, dynamic> jsonData) {
    return Review.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Review';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Review] in your schema.
 */
@immutable
class ReviewModelIdentifier implements ModelIdentifier<Review> {
  final String id;

  /** Create an instance of ReviewModelIdentifier using [id] the primary key. */
  const ReviewModelIdentifier({
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
  String toString() => 'ReviewModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ReviewModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}