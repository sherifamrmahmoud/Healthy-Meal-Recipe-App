// Karim Toson || kareemtoson1@gmail.com || Tue Apr 28 2026 19:37:37

class Meal {
  final String image;
  final String title;
  final String kcal;
  final String time;
  final String mealType;

  Meal({
    required this.image,
    required this.title,
    required this.kcal,
    required this.time,
    required this.mealType,
  });

  Map<String, dynamic> toJason() {
    return {
      'title': title,
      'kcal': kcal,
      'time': time,
      'mealType': mealType,
      'image': image,
    };
  }

  factory Meal.fromMap(Map<String, dynamic> jason) {
    return Meal(
      image: jason['image'],
      title: jason['title'],
      kcal: jason['kcal'],
      time: jason['time'],
      mealType: jason['mealType'],
    );
  }
}
