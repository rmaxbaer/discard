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
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the ListsRestaurant type in your schema. */
@immutable
class ListsRestaurant extends Model {
  static const classType = const _ListsRestaurantModelType();
  final String id;
  final Lists? _lists;
  final Restaurant? _restaurant;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  ListsRestaurantModelIdentifier get modelIdentifier {
      return ListsRestaurantModelIdentifier(
        id: id
      );
  }
  
  Lists get lists {
    try {
      return _lists!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  Restaurant get restaurant {
    try {
      return _restaurant!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const ListsRestaurant._internal({required this.id, required lists, required restaurant, createdAt, updatedAt}): _lists = lists, _restaurant = restaurant, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory ListsRestaurant({String? id, required Lists lists, required Restaurant restaurant}) {
    return ListsRestaurant._internal(
      id: id == null ? UUID.getUUID() : id,
      lists: lists,
      restaurant: restaurant);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListsRestaurant &&
      id == other.id &&
      _lists == other._lists &&
      _restaurant == other._restaurant;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ListsRestaurant {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("lists=" + (_lists != null ? _lists!.toString() : "null") + ", ");
    buffer.write("restaurant=" + (_restaurant != null ? _restaurant!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ListsRestaurant copyWith({Lists? lists, Restaurant? restaurant}) {
    return ListsRestaurant._internal(
      id: id,
      lists: lists ?? this.lists,
      restaurant: restaurant ?? this.restaurant);
  }
  
  ListsRestaurant.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _lists = json['lists']?['serializedData'] != null
        ? Lists.fromJson(new Map<String, dynamic>.from(json['lists']['serializedData']))
        : null,
      _restaurant = json['restaurant']?['serializedData'] != null
        ? Restaurant.fromJson(new Map<String, dynamic>.from(json['restaurant']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'lists': _lists?.toJson(), 'restaurant': _restaurant?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'lists': _lists, 'restaurant': _restaurant, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<ListsRestaurantModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<ListsRestaurantModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField LISTS = QueryField(
    fieldName: "lists",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Lists'));
  static final QueryField RESTAURANT = QueryField(
    fieldName: "restaurant",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Restaurant'));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ListsRestaurant";
    modelSchemaDefinition.pluralName = "ListsRestaurants";
    
    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["listsId"], name: "byLists"),
      ModelIndex(fields: const ["restaurantId"], name: "byRestaurant")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: ListsRestaurant.LISTS,
      isRequired: true,
      targetNames: ['listsId'],
      ofModelName: 'Lists'
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: ListsRestaurant.RESTAURANT,
      isRequired: true,
      targetNames: ['restaurantId'],
      ofModelName: 'Restaurant'
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

class _ListsRestaurantModelType extends ModelType<ListsRestaurant> {
  const _ListsRestaurantModelType();
  
  @override
  ListsRestaurant fromJson(Map<String, dynamic> jsonData) {
    return ListsRestaurant.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'ListsRestaurant';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [ListsRestaurant] in your schema.
 */
@immutable
class ListsRestaurantModelIdentifier implements ModelIdentifier<ListsRestaurant> {
  final String id;

  /** Create an instance of ListsRestaurantModelIdentifier using [id] the primary key. */
  const ListsRestaurantModelIdentifier({
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
  String toString() => 'ListsRestaurantModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ListsRestaurantModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}