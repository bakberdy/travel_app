
import 'package:equatable/equatable.dart';
import 'package:travel_app/src/features/routes/domain/entities/route_type_entity.dart';
import 'location_entity.dart';
import '../../presentation/types/route_difficulty.dart';

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
  final RouteTypeEntity type;

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
    required this.type,
  });
  @override
  List<Object?> get props => [title, description, location, coordinates];
}
