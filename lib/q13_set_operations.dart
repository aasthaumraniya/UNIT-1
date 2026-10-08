void main() {
  Set<String> myHobbies = {"Coding", "Reading", "Gaming", "Photography"};
  Set<String> friendHobbies = {"Gaming", "Cooking", "Photography", "Traveling"};

  print("My Hobbies: $myHobbies");
  print("Friend's Hobbies: $friendHobbies");

  // Union
  print("Union: ${myHobbies.union(friendHobbies)}");

  // Intersection
  print("Intersection: ${myHobbies.intersection(friendHobbies)}");

  // Difference
  print("Difference (My - Friend): ${myHobbies.difference(friendHobbies)}");
}
