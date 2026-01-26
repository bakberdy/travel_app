import 'package:equatable/equatable.dart';
import 'location_entity.dart';
import '../types/route_difficulty.dart';

class RouteEntity extends Equatable {
  final String title;
  final String description;
  final String imageUrl;
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
    required this.imageUrl,
  });
  @override
  List<Object?> get props => [title, description, location, coordinates];
}


