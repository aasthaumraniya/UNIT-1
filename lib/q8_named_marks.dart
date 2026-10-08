void printSubjectMarks({
  required double mobileDev,
  required double dbms,
  required double softwareEng,
  required double computerNetworks,
}) {
  print("Subject Marks for Current Semester:");
  print("1. Mobile Application Development: $mobileDev");
  print("2. Database Management Systems: $dbms");
  print("3. Software Engineering: $softwareEng");
  print("4. Computer Networks: $computerNetworks");
}

void main() {
  printSubjectMarks(
    mobileDev: 88.0,
    dbms: 92.5,
    softwareEng: 81.0,
    computerNetworks: 76.0,
  );
}
