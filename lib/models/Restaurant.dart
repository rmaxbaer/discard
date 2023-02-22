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


/** This is an auto generated class representing the Restaurant type in your schema. */
@immutable
class Restaurant extends Model {
  static const classType = const _RestaurantModelType();
  final String id;
  final List<Review>? _Reviews;
  final String? _name;
  final String? _phone;
  final String? _googleKey;
  final List<ListsRestaurant>? _listss;
  final String? _iconImage;
  final String? _coverImage;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  RestaurantModelIdentifier get modelIdentifier {
      return RestaurantModelIdentifier(
        id: id
      );
  }
  
  List<Review>? get Reviews {
    return _Reviews;
  }
  
  String get name {
    try {
      return _name!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get phone {
    return _phone;
  }
  
  String? get googleKey {
    return _googleKey;
  }
  
  List<ListsRestaurant>? get listss {
    return _listss;
  }
  
  String? get iconImage {
    return _iconImage;
  }
  
  String? get coverImage {
    return _coverImage;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Restaurant._internal({required this.id, Reviews, required name, phone, googleKey, listss, iconImage, coverImage, createdAt, updatedAt}): _Reviews = Reviews, _name = name, _phone = phone, _googleKey = googleKey, _listss = listss, _iconImage = iconImage, _coverImage = coverImage, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Restaurant({String? id, List<Review>? Reviews, required String name, String? phone, String? googleKey, List<ListsRestaurant>? listss, String? iconImage, String? coverImage}) {
    return Restaurant._internal(
      id: id == null ? UUID.getUUID() : id,
      Reviews: Reviews != null ? List<Review>.unmodifiable(Reviews) : Reviews,
      name: name,
      phone: phone,
      googleKey: googleKey,
      listss: listss != null ? List<ListsRestaurant>.unmodifiable(listss) : listss,
      iconImage: iconImage,
      coverImage: coverImage);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Restaurant &&
      id == other.id &&
      DeepCollectionEquality().equals(_Reviews, other._Reviews) &&
      _name == other._name &&
      _phone == other._phone &&
      _googleKey == other._googleKey &&
      DeepCollectionEquality().equals(_listss, other._listss) &&
      _iconImage == other._iconImage &&
      _coverImage == other._coverImage;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Restaurant {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("phone=" + "$_phone" + ", ");
    buffer.write("googleKey=" + "$_googleKey" + ", ");
    buffer.write("iconImage=" + "$_iconImage" + ", ");
    buffer.write("coverImage=" + "$_coverImage" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Restaurant copyWith({List<Review>? Reviews, String? name, String? phone, String? googleKey, List<ListsRestaurant>? listss, String? iconImage, String? coverImage}) {
    return Restaurant._internal(
      id: id,
      Reviews: Reviews ?? this.Reviews,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      googleKey: googleKey ?? this.googleKey,
      listss: listss ?? this.listss,
      iconImage: iconImage ?? this.iconImage,
      coverImage: coverImage ?? this.coverImage);
  }
  
  Restaurant.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _Reviews = json['Reviews'] is List
        ? (json['Reviews'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Review.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _name = json['name'],
      _phone = json['phone'],
      _googleKey = json['googleKey'],
      _listss = json['listss'] is List
        ? (json['listss'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => ListsRestaurant.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _iconImage = json['iconImage'],
      _coverImage = json['coverImage'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'Reviews': _Reviews?.map((Review? e) => e?.toJson()).toList(), 'name': _name, 'phone': _phone, 'googleKey': _googleKey, 'listss': _listss?.map((ListsRestaurant? e) => e?.toJson()).toList(), 'iconImage': _iconImage, 'coverImage': _coverImage, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'Reviews': _Reviews, 'name': _name, 'phone': _phone, 'googleKey': _googleKey, 'listss': _listss, 'iconImage': _iconImage, 'coverImage': _coverImage, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<RestaurantModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<RestaurantModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField REVIEWS = QueryField(
    fieldName: "Reviews",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Review'));
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField PHONE = QueryField(fieldName: "phone");
  static final QueryField GOOGLEKEY = QueryField(fieldName: "googleKey");
  static final QueryField LISTSS = QueryField(
    fieldName: "listss",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'ListsRestaurant'));
  static final QueryField ICONIMAGE = QueryField(fieldName: "iconImage");
  static final QueryField COVERIMAGE = QueryField(fieldName: "coverImage");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Restaurant";
    modelSchemaDefinition.pluralName = "Restaurants";
    
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
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Restaurant.REVIEWS,
      isRequired: false,
      ofModelName: 'Review',
      associatedKey: Review.RESTAURANTID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Restaurant.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Restaurant.PHONE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Restaurant.GOOGLEKEY,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Restaurant.LISTSS,
      isRequired: false,
      ofModelName: 'ListsRestaurant',
      associatedKey: ListsRestaurant.RESTAURANT
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Restaurant.ICONIMAGE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Restaurant.COVERIMAGE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
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

class _RestaurantModelType extends ModelType<Restaurant> {
  const _RestaurantModelType();
  
  @override
  Restaurant fromJson(Map<String, dynamic> jsonData) {
    return Restaurant.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Restaurant';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Restaurant] in your schema.
 */
@immutable
class RestaurantModelIdentifier implements ModelIdentifier<Restaurant> {
  final String id;

  /** Create an instance of RestaurantModelIdentifier using [id] the primary key. */
  const RestaurantModelIdentifier({
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
  String toString() => 'RestaurantModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is RestaurantModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}