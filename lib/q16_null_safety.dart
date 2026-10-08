void main() {
  String? futureCareerGoal;

  // Initially null
  print("Initial state of futureCareerGoal: $futureCareerGoal");

  // Default value using ??
  print("Default Goal using ??: ${futureCareerGoal ?? "Software Engineer"}");

  // Assigning actual goal using ??=
  futureCareerGoal ??= "Mobile App Architect";

  print("Assigned Goal after ??=: $futureCareerGoal");
}
