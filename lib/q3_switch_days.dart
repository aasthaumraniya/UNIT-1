void main() {
  List<String> days = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ];

  for (String day in days) {
    switch (day) {
      case "Monday":
        print("Monday: Focus on week planning and new goals.");
        break;
      case "Tuesday":
        print("Tuesday: Deep work on core assignments.");
        break;
      case "Wednesday":
        print("Wednesday: Mid-week progress evaluation.");
        break;
      case "Thursday":
        print("Thursday: Reviewing code and preparing reports.");
        break;
      case "Friday":
        print("Friday: Wrapping up weekly deliverables.");
        break;
      case "Saturday":
        print("Saturday: Relax and spend time on hobbies.");
        break;
      case "Sunday":
        print("Sunday: Recharge and prepare for the upcoming week.");
        break;
      default:
        print("Invalid day name.");
    }
  }
}
