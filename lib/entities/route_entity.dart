import 'package:equatable/equatable.dart';
import 'package:travel_app/entities/location_entity.dart';

class RouteEntity extends Equatable {
  final String title;
  final String description;
  final LocationEntity? location;
  final List<LocationEntity> coordinates;
  final String direction; //for example Заилийский Алатау
  final String gorge; // ущелье, например Большое Алматинское Ущелье
  final RouteDifficulty difficulty;
  final double distanceKm;
    
  const RouteEntity({
    required this.title,
    required this.location,
    required this.coordinates,
    required this.description,
    required this.direction,
    required this.gorge,
    required this.difficulty,
    required this.distanceKm,
  });
  @override
  List<Object?> get props => [title, description, location, coordinates];
}

enum RouteDifficulty { easy, medium, hard }
