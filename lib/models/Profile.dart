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


/** This is an auto generated class representing the Profile type in your schema. */
@immutable
class Profile extends Model {
  static const classType = const _ProfileModelType();
  final String id;
  final List<Review>? _Reviews;
  final String? _firstName;
  final String? _lastName;
  final String? _username;
  final List<ReviewProfile>? _LikedReviews;
  final List<Comment>? _Comments;
  final List<Lists>? _UserLists;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  ProfileModelIdentifier get modelIdentifier {
      return ProfileModelIdentifier(
        id: id
      );
  }
  
  List<Review>? get Reviews {
    return _Reviews;
  }
  
  String get firstName {
    try {
      return _firstName!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get lastName {
    try {
      return _lastName!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get username {
    try {
      return _username!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<ReviewProfile>? get LikedReviews {
    return _LikedReviews;
  }
  
  List<Comment>? get Comments {
    return _Comments;
  }
  
  List<Lists>? get UserLists {
    return _UserLists;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Profile._internal({required this.id, Reviews, required firstName, required lastName, required username, LikedReviews, Comments, UserLists, createdAt, updatedAt}): _Reviews = Reviews, _firstName = firstName, _lastName = lastName, _username = username, _LikedReviews = LikedReviews, _Comments = Comments, _UserLists = UserLists, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Profile({String? id, List<Review>? Reviews, required String firstName, required String lastName, required String username, List<ReviewProfile>? LikedReviews, List<Comment>? Comments, List<Lists>? UserLists}) {
    return Profile._internal(
      id: id == null ? UUID.getUUID() : id,
      Reviews: Reviews != null ? List<Review>.unmodifiable(Reviews) : Reviews,
      firstName: firstName,
      lastName: lastName,
      username: username,
      LikedReviews: LikedReviews != null ? List<ReviewProfile>.unmodifiable(LikedReviews) : LikedReviews,
      Comments: Comments != null ? List<Comment>.unmodifiable(Comments) : Comments,
      UserLists: UserLists != null ? List<Lists>.unmodifiable(UserLists) : UserLists);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Profile &&
      id == other.id &&
      DeepCollectionEquality().equals(_Reviews, other._Reviews) &&
      _firstName == other._firstName &&
      _lastName == other._lastName &&
      _username == other._username &&
      DeepCollectionEquality().equals(_LikedReviews, other._LikedReviews) &&
      DeepCollectionEquality().equals(_Comments, other._Comments) &&
      DeepCollectionEquality().equals(_UserLists, other._UserLists);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Profile {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("firstName=" + "$_firstName" + ", ");
    buffer.write("lastName=" + "$_lastName" + ", ");
    buffer.write("username=" + "$_username" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Profile copyWith({List<Review>? Reviews, String? firstName, String? lastName, String? username, List<ReviewProfile>? LikedReviews, List<Comment>? Comments, List<Lists>? UserLists}) {
    return Profile._internal(
      id: id,
      Reviews: Reviews ?? this.Reviews,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      username: username ?? this.username,
      LikedReviews: LikedReviews ?? this.LikedReviews,
      Comments: Comments ?? this.Comments,
      UserLists: UserLists ?? this.UserLists);
  }
  
  Profile.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _Reviews = json['Reviews'] is List
        ? (json['Reviews'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Review.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _firstName = json['firstName'],
      _lastName = json['lastName'],
      _username = json['username'],
      _LikedReviews = json['LikedReviews'] is List
        ? (json['LikedReviews'] as List)
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
      _UserLists = json['UserLists'] is List
        ? (json['UserLists'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Lists.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'Reviews': _Reviews?.map((Review? e) => e?.toJson()).toList(), 'firstName': _firstName, 'lastName': _lastName, 'username': _username, 'LikedReviews': _LikedReviews?.map((ReviewProfile? e) => e?.toJson()).toList(), 'Comments': _Comments?.map((Comment? e) => e?.toJson()).toList(), 'UserLists': _UserLists?.map((Lists? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'Reviews': _Reviews, 'firstName': _firstName, 'lastName': _lastName, 'username': _username, 'LikedReviews': _LikedReviews, 'Comments': _Comments, 'UserLists': _UserLists, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<ProfileModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<ProfileModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField REVIEWS = QueryField(
    fieldName: "Reviews",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Review'));
  static final QueryField FIRSTNAME = QueryField(fieldName: "firstName");
  static final QueryField LASTNAME = QueryField(fieldName: "lastName");
  static final QueryField USERNAME = QueryField(fieldName: "username");
  static final QueryField LIKEDREVIEWS = QueryField(
    fieldName: "LikedReviews",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'ReviewProfile'));
  static final QueryField COMMENTS = QueryField(
    fieldName: "Comments",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Comment'));
  static final QueryField USERLISTS = QueryField(
    fieldName: "UserLists",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Lists'));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Profile";
    modelSchemaDefinition.pluralName = "Profiles";
    
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
          ModelOperation.READ,
          ModelOperation.UPDATE,
          ModelOperation.DELETE
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Profile.REVIEWS,
      isRequired: false,
      ofModelName: 'Review',
      associatedKey: Review.PROFILEID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Profile.FIRSTNAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Profile.LASTNAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Profile.USERNAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Profile.LIKEDREVIEWS,
      isRequired: false,
      ofModelName: 'ReviewProfile',
      associatedKey: ReviewProfile.PROFILE
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Profile.COMMENTS,
      isRequired: false,
      ofModelName: 'Comment',
      associatedKey: Comment.PROFILEID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Profile.USERLISTS,
      isRequired: false,
      ofModelName: 'Lists',
      associatedKey: Lists.PROFILEID
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

class _ProfileModelType extends ModelType<Profile> {
  const _ProfileModelType();
  
  @override
  Profile fromJson(Map<String, dynamic> jsonData) {
    return Profile.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Profile';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Profile] in your schema.
 */
@immutable
class ProfileModelIdentifier implements ModelIdentifier<Profile> {
  final String id;

  /** Create an instance of ProfileModelIdentifier using [id] the primary key. */
  const ProfileModelIdentifier({
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
  String toString() => 'ProfileModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ProfileModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}