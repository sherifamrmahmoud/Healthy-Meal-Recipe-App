import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti5/features/home/cubit/homeCubit.dart';
import 'package:nti5/features/home/cubit/HomeStates.dart';
import 'package:nti5/features/home/models/meal.dart';

class MealCard extends StatelessWidget {
  final Meal meal;

  const MealCard({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<Homecubit>();

    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🔹 Image + Favorite
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  meal.image,
                  height: 120,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    height: 120,
                    color: Colors.grey.shade300,
                    child: const Icon(
                      Icons.fastfood,
                      size: 40,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),

              Positioned(
                right: 8,
                top: 8,
                child: BlocBuilder<Homecubit, HomeStates>(
                  builder: (context, state) {
                    final isFav = cubit.isFavorite(meal);

                    return GestureDetector(
                      onTap: () {
                        cubit.toggleFavorite(meal);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          isFav ? Icons.favorite : Icons.favorite_border,
                          size: 18,
                          color: isFav ? Colors.red : Colors.black,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          // 🔹 Title
          Text(
            meal.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),

          const Spacer(),

          // 🔹 Info Row
          Row(
            children: [
              const Icon(
                Icons.local_fire_department,
                size: 14,
                color: Colors.orange,
              ),
              const SizedBox(width: 4),
              Text(meal.kcal),

              const SizedBox(width: 12),
              const Icon(Icons.access_time, size: 14, color: Colors.grey),
              const SizedBox(width: 4),
              Text(meal.time),
            ],
          ),
        ],
      ),
    );
  }
}
