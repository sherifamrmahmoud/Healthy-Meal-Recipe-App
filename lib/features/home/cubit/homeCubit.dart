import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti5/features/home/cubit/HomeStates.dart';
import 'package:nti5/features/home/models/meal.dart'; 

class Homecubit extends Cubit<HomeStates> {
  Homecubit() : super(HomeInitialState());


  int currentTabIndex = 0; 

  int selectedCategoryIndex = 0; 


  List<Meal> dummyMeals = [
    Meal(
      title: 'Healthy Salad',
      kcal: '150 kcal',
      time: '15 min',
      mealType: 'Breakfast',
      image: 'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?q=80&w=500',
    ),
    Meal(
      title: 'Grilled Chicken',
      kcal: '350 kcal',
      time: '30 min',
      mealType: 'Lunch',
      image: 'https://images.unsplash.com/photo-1532550907401-a500c9a57435?q=80&w=500',
    ),
    Meal(
      title: 'Beef Steak',
      kcal: '500 kcal',
      time: '25 min',
      mealType: 'Dinner',
      image: 'https://images.unsplash.com/photo-1432139555190-58524dae6a55?q=80&w=500',
    ),
  ];

  List<Meal> meals = [];
  List<Meal> filteredMeals = [];
  List<Meal> favoriteMeals = []; 


  void changeTab(int index) {
    currentTabIndex = index;
    emit(HomeSuccessState(List.from(meals))); 
  }

  void getMeals() {
    emit(HomeLoadingState());
    try {
      meals = dummyMeals;
      emit(HomeSuccessState(meals));
    } catch (e) {
      emit(HomeFailureState(e.toString()));
    }
  }

 
  void getFilteredMeals(String mealType, int index) {
    selectedCategoryIndex = index;
    emit(HomeLoadingState());
    try {
      filteredMeals = meals.where((mealitem) {
        return mealitem.mealType.toLowerCase() == mealType.toLowerCase();
      }).toList();
      emit(HomeSuccessState(filteredMeals));
    } catch (e) {
      emit(HomeFailureState(e.toString()));
    }
  }


  void toggleFavorite(Meal meal) {
    if (favoriteMeals.contains(meal)) {
      favoriteMeals.remove(meal);
    } else {
      favoriteMeals.add(meal);
    }
    emit(HomeSuccessState(List.from(meals))); 
  }

  bool isFavorite(Meal meal) {
    return favoriteMeals.contains(meal);
  }
}