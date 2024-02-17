class ProfileData {
  String name;
  String age;
  String height;
  String location;
  String primaryLocation;
  String college;
  List<ProfilePrompt> prompts;
  List<String> profileImages;

  ProfileData({
    required this.name,
    required this.age,
    required this.height,
    required this.location,
    required this.primaryLocation,
    required this.college,
    required this.prompts,
    required this.profileImages,
  });
}

class ProfilePrompt {
  String prompt;
  String answer;

  ProfilePrompt({
    required this.prompt,
    required this.answer,
  });
}

ProfileData exampleProfile = ProfileData(
  name: "Amaka",
  age: "25",
  height: "5'7",
  location: "Chelsea",
  primaryLocation: "London, UK",
  college: "Imperial College London",
  prompts: [
    ProfilePrompt(
      prompt: "I get along the most with:",
      answer:
          "People who understand that a semicolon isn't just a punctuation mark in literature;",
    ),
    ProfilePrompt(
      prompt: "You should leave a comment if: ",
      answer:
          "You can explain why 'Hello World' in Java feels like writing a formal letter to your neighbor just to say hi.",
    ),
    ProfilePrompt(
      prompt: "My Most Irrational Fear…:",
      answer:
          "Ending up in a reality where the only programming language is PHP.",
    ),
  ],
  profileImages: ["", "", ""],
);
