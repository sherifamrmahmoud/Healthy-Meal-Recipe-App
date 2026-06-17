import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti5/core/styles/styles_manager.dart';
import 'package:nti5/features/home/cubit/HomeStates.dart';
import 'package:nti5/features/home/cubit/homeCubit.dart';
import 'package:nti5/features/home/widgets/category_chip.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  final List<String> categories = const [
    "Breakfast",
    "Lunch",
    "Dinner",
    "snacks",
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Category", style: StylesManager.titleText20Style),
            GestureDetector(
              onTap: () {},
              child: Text(
                "See All",
                style: StylesManager.titleText18StylePrimry,
              ),
            ),
          ],
        ),
        SizedBox(height: height * 0.02),
        BlocBuilder<Homecubit, HomeStates>(
          builder: (context, state) {
            final cubit = context.read<Homecubit>();

            return SizedBox(
              height: height * 0.05,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return CategoryChip(
                    text: categories[index],
                    
                    isSelected: cubit.selectedCategoryIndex == index,
                    onTap: () {
                      cubit.getFilteredMeals(categories[index], index);
                    },
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
