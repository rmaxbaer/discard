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

import 'package:dishplease_app/models/RestaurantDishList.dart';

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the DishList type in your schema. */
@immutable
class DishList extends Model {
  static const classType = const _DishListModelType();
  final String id;
  final String? _profileID;
  final List<RestaurantDishList>? _restaurants;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  DishListModelIdentifier get modelIdentifier {
      return DishListModelIdentifier(
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
  
  List<RestaurantDishList>? get restaurants {
    return _restaurants;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const DishList._internal({required this.id, required profileID, restaurants, createdAt, updatedAt}): _profileID = profileID, _restaurants = restaurants, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory DishList({String? id, required String profileID, List<RestaurantDishList>? restaurants}) {
    return DishList._internal(
      id: id == null ? UUID.getUUID() : id,
      profileID: profileID,
      restaurants: restaurants != null ? List<RestaurantDishList>.unmodifiable(restaurants) : restaurants);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DishList &&
      id == other.id &&
      _profileID == other._profileID &&
      DeepCollectionEquality().equals(_restaurants, other._restaurants);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("DishList {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("profileID=" + "$_profileID" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  DishList copyWith({String? profileID, List<RestaurantDishList>? restaurants}) {
    return DishList._internal(
      id: id,
      profileID: profileID ?? this.profileID,
      restaurants: restaurants ?? this.restaurants);
  }
  
  DishList.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _profileID = json['profileID'],
      _restaurants = json['restaurants'] is List
        ? (json['restaurants'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => RestaurantDishList.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'profileID': _profileID, 'restaurants': _restaurants?.map((RestaurantDishList? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'profileID': _profileID, 'restaurants': _restaurants, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<DishListModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<DishListModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField PROFILEID = QueryField(fieldName: "profileID");
  static final QueryField RESTAURANTS = QueryField(
    fieldName: "restaurants",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (RestaurantDishList).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "DishList";
    modelSchemaDefinition.pluralName = "DishLists";
    
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
    
    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["profileID"], name: "byProfile")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: DishList.PROFILEID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: DishList.RESTAURANTS,
      isRequired: false,
      ofModelName: (RestaurantDishList).toString(),
      associatedKey: RestaurantDishList.DISHLIST
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

class _DishListModelType extends ModelType<DishList> {
  const _DishListModelType();
  
  @override
  DishList fromJson(Map<String, dynamic> jsonData) {
    return DishList.fromJson(jsonData);
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [DishList] in your schema.
 */
@immutable
class DishListModelIdentifier implements ModelIdentifier<DishList> {
  final String id;

  /** Create an instance of DishListModelIdentifier using [id] the primary key. */
  const DishListModelIdentifier({
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
  String toString() => 'DishListModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is DishListModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}