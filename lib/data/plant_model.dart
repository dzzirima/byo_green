// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Plants {
  final int id;
  final String name;
  final String imagePath;
  final String category;
  final String description;
  final double price;
  final bool isFavorit;
  final String watering;
  final String fertilise;
  final String transplant;
  final String pestcontrol;
  final String healthbenefit;

  Plants({
    required this.id,
    required this.name,
    required this.imagePath,
    required this.category,
    required this.description,
    required this.price,
    required this.isFavorit,
    required this.watering,
    required this.fertilise,
    required this.transplant,
    required this.pestcontrol,
    required this.healthbenefit,
  });

  Plants copyWith({
    int? id,
    String? name,
    String? imagePath,
    String? category,
    String? description,
    double? price,
    bool? isFavorit,
    String? watering,
    String? fertilise,
    String? transplant,
    String? pestcontrol,
    String? healthbenefit,
  }) {
    return Plants(
      id: id ?? this.id,
      name: name ?? this.name,
      imagePath: imagePath ?? this.imagePath,
      category: category ?? this.category,
      description: description ?? this.description,
      price: price ?? this.price,
      isFavorit: isFavorit ?? this.isFavorit,
      watering: watering ?? this.watering,
      fertilise: fertilise ?? this.fertilise,
      transplant: transplant ?? this.transplant,
      pestcontrol: pestcontrol ?? this.pestcontrol,
      healthbenefit: healthbenefit ?? this.healthbenefit,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'imagePath': imagePath,
      'category': category,
      'description': description,
      'price': price,
      'isFavorit': isFavorit,
      'watering': watering,
      'fertilise': fertilise,
      'transplant': transplant,
      'pestcontrol': pestcontrol,
      'healthbenefit': healthbenefit,
    };
  }

  factory Plants.fromMap(Map<String, dynamic> map) {
    return Plants(
      id: map['id'] as int,
      name: map['name'] as String,
      imagePath: map['imagePath'] as String,
      category: map['category'] as String,
      description: map['description'] as String,
      price: map['price'] as double,
      isFavorit: map['isFavorit'] as bool,
      watering: map['watering'] as String,
      fertilise: map['fertilise'] as String,
      transplant: map['transplant'] as String,
      pestcontrol: map['pestcontrol'] as String,
      healthbenefit: map['healthbenefit'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Plants.fromJson(String source) =>
      Plants.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Plants(id: $id, name: $name, imagePath: $imagePath, category: $category, description: $description, price: $price, isFavorit: $isFavorit, watering: $watering, fertilise: $fertilise, transplant: $transplant, pestcontrol: $pestcontrol, healthbenefit: $healthbenefit)';
  }

  @override
  bool operator ==(covariant Plants other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.imagePath == imagePath &&
      other.category == category &&
      other.description == description &&
      other.price == price &&
      other.isFavorit == isFavorit &&
      other.watering == watering &&
      other.fertilise == fertilise &&
      other.transplant == transplant &&
      other.pestcontrol == pestcontrol &&
      other.healthbenefit == healthbenefit;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      imagePath.hashCode ^
      category.hashCode ^
      description.hashCode ^
      price.hashCode ^
      isFavorit.hashCode ^
      watering.hashCode ^
      fertilise.hashCode ^
      transplant.hashCode ^
      pestcontrol.hashCode ^
      healthbenefit.hashCode;
  }
}
