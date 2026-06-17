import 'package:nti5/features/home/models/meal.dart';

abstract class HomeStates {}

class HomeInitialState extends HomeStates {}

class HomeLoadingState extends HomeStates {}

class HomeSuccessState extends HomeStates {
  List<Meal> meals;
  HomeSuccessState(this.meals);
}

class HomeFailureState extends HomeStates {
  String error;
  HomeFailureState(this.error);
}
