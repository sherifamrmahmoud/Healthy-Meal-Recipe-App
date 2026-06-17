import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti5/features/home/cubit/homeCubit.dart';
import 'package:nti5/features/home/cubit/HomeStates.dart';
import 'package:nti5/features/home/widgets/meal_card.dart';

class MealsSection extends StatelessWidget {
  const MealsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Homecubit, HomeStates>(
      builder: (context, state) {
        if (state is HomeLoadingState) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is HomeSuccessState) {
          return Expanded(
            child: GridView.builder(
              itemCount: state.meals.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) {
                return MealCard(meal: state.meals[index]);
              },
            ),
          );
        } else if (state is HomeFailureState) {
          return Center(child: Text(state.error));
        }

        return const SizedBox();
      },
    );
  }
}
