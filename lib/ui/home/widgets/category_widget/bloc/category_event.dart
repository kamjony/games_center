import 'package:equatable/equatable.dart';

class CategoryEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetCategories extends CategoryEvent {}

class SelectCategory extends CategoryEvent {
  final int idSelected;

  SelectCategory({required this.idSelected});

  @override
  List<Object?> get props => [idSelected];

}