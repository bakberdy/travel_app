import 'package:equatable/equatable.dart';

class LocationEntity extends Equatable {
  final String? name;
  final double lat;
  final double long;

  const LocationEntity({
    required this.name,
    required this.lat,
    required this.long,
  });

  @override
  List<Object?> get props => [name, lat, long];
}
