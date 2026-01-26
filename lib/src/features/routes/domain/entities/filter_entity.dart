import 'package:equatable/equatable.dart';

class FilterEntity  extends Equatable{
  final String label;
  final FilterType type;

  const FilterEntity({required this.label, required this.type});
  
  @override
  List<Object?> get props => [label, type];
}

enum FilterType{
  difficulty,
  range,
  type,
  category
}