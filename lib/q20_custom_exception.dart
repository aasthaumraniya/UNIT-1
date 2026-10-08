class LowAttendanceException implements Exception {
  final String studentName;
  final double attendancePercentage;

  LowAttendanceException(this.studentName, this.attendancePercentage);

  @override
  String toString() {
    return "LowAttendanceException: $studentName has attendance of ${attendancePercentage.toStringAsFixed(1)}% which is below the required 75%.";
  }
}

void checkAttendance(String name, double attendance) {
  if (attendance < 75.0) {
    throw LowAttendanceException(name, attendance);
  } else {
    print("Attendance check passed for $name: ${attendance.toStringAsFixed(1)}%");
  }
}

void main() {
  String studentName = "Rahul Sharma";
  double hypotheticalAttendance = 68.5; // Below 75%

  try {
    print("Checking attendance for $studentName ($hypotheticalAttendance%)...");
    checkAttendance(studentName, hypotheticalAttendance);
  } catch (e) {
    print("Exception Caught: $e");
  }
}
