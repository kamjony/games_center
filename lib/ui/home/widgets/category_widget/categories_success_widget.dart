import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:games_center/repository/models/games_list_model.dart';
import 'package:games_center/ui/home/widgets/category_widget/bloc/category_bloc.dart';
import 'package:games_center/ui/home/widgets/category_widget/bloc/category_event.dart';
import 'package:games_center/ui/home/widgets/category_widget/bloc/category_state.dart';
import 'package:games_center/ui/home/widgets/category_widget/category_item.dart';
import 'package:games_center/ui/home/widgets/games_by_category_widget/bloc/games_by_category_bloc.dart';
import 'package:games_center/ui/home/widgets/games_by_category_widget/bloc/games_by_category_event.dart';

class CategoriesSuccessWidget extends StatelessWidget {
  const CategoriesSuccessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, state) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .15,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return CategoryItem(
                  key: ValueKey('${state.categories![index].name}$index'),
                    category: state.categories![index],
                    callback: (Genre categorySelected) {
                      context.read<GamesByCategoryBloc>().add(
                        GetGamesByCategory(
                            idSelected: categorySelected.id!,
                            categoryName: categorySelected.name ?? ''
                        )
                      );
                      context.read<CategoryBloc>().add(
                        SelectCategory(idSelected: categorySelected.id!)
                      );
                    }
                );
              },
              scrollDirection: Axis.horizontal,
              separatorBuilder: (_, __) => const SizedBox(
                width: 16.0,
              ),
              itemCount: state.categories!.length),
        );
      },
    );
  }
}
