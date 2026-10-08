import 'dart:async';

Future<String> fetchCollegeName() {
  return Future.delayed(
    const Duration(seconds: 2),
    () => "National Institute of Technology",
  );
}

void main() {
  print("Requesting college name from server...");

  fetchCollegeName().then((college) {
    print("Received Result via .then(): College Name is '$college'");
  });

  print("Immediate Message: Request sent successfully! Waiting 2 seconds...");
}
