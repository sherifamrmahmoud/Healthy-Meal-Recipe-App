import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti5/features/home/cubit/homeCubit.dart';
import 'package:nti5/features/home/cubit/HomeStates.dart';

class FavoritesScreen extends StatelessWidget {
  final VoidCallback onBackToHome;

  const FavoritesScreen({super.key, required this.onBackToHome});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<Homecubit>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'), 
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: onBackToHome, 
        ),
      ),
      body: BlocBuilder<Homecubit, HomeStates>(
        builder: (context, state) {
          if (cubit.favoriteMeals.isEmpty) {
            return const Center(
              child: Text(
                'No favorites added yet!',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            );
          }

          return ListView.builder(
            itemCount: cubit.favoriteMeals.length,
            itemBuilder: (context, index) {
              final meal = cubit.favoriteMeals[index];

              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(8),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      meal.image,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => const Icon(
                        Icons.fastfood,
                        size: 40,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                  title: Text(
                    meal.title,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('${meal.time} • ${meal.kcal}'),
                  trailing: IconButton(
                    icon: const Icon(Icons.favorite, color: Colors.red),
                    onPressed: () {
                      cubit.toggleFavorite(meal);
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}