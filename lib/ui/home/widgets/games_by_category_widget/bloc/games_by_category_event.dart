import 'package:equatable/equatable.dart';

class GamesByCategoryEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetGamesByCategory extends GamesByCategoryEvent {
  final int idSelected;
  final String categoryName;

  GetGamesByCategory({required this.idSelected, required this.categoryName});

  @override
  List<Object?> get props => [idSelected, categoryName];

}