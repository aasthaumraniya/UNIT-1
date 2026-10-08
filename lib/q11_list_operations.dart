void main() {
  List<String> movies = [
    "Inception",
    "Interstellar",
    "The Dark Knight",
    "Avatar",
    "Titanic"
  ];

  print("Initial Movies List: $movies");

  // add
  movies.add("The Matrix");
  print("After add('The Matrix'): $movies");

  // remove
  movies.remove("Titanic");
  print("After remove('Titanic'): $movies");

  // sort
  movies.sort();
  print("After sort(): $movies");
}
