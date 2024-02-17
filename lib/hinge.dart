import 'package:flutter/material.dart';
import 'package:hinge_clone/data.dart';

class HingeClone extends StatefulWidget {
  const HingeClone({super.key});

  @override
  State<HingeClone> createState() => _HingeCloneState();
}

class _HingeCloneState extends State<HingeClone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      body: Column(
        children: [
          Expanded(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Stack(
                  children: [
                    ListView(
                      children: [
                        NamedSection(),
                        SizedBox(
                          height: 4,
                        ),
                        ProfileImage(
                          imageAsset: "assets/example_images/image_1.jpg",
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        PromptSection(
                          prompt: exampleProfile.prompts[0],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AboutMeSection(),
                        SizedBox(
                          height: 20,
                        ),
                        ProfileImage(
                          imageAsset: "assets/example_images/image_2.jpg",
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        PromptSection(
                          prompt: exampleProfile.prompts[1],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ProfileImage(
                          imageAsset: "assets/example_images/image_3.jpg",
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        PromptSection(
                          prompt: exampleProfile.prompts[2],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ProfileImage(
                          imageAsset: "assets/example_images/image_4.jpg",
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.grey.withOpacity(0.5), // Shadow color
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/reject_icon.png",
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          TabSection(),
        ],
      ),
    );
  }
}

class TabSection extends StatelessWidget {
  const TabSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF1A1A1A),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 40,
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TabIcon("assets/icons/home_icon.png"),
            TabIcon("assets/icons/star_icon.png"),
            TabIcon("assets/icons/likes_icon.png"),
            TabIcon("assets/icons/chat_icon.png"),
            TabIcon("assets/icons/profile_icon.png"),
          ],
        ),
      ),
    );
  }
}

class TabIcon extends StatelessWidget {
  final String tabAsset;

  const TabIcon(
    this.tabAsset, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      tabAsset,
      height: 28,
    );
  }
}

class PromptSection extends StatelessWidget {
  final ProfilePrompt prompt;

  const PromptSection({
    super.key,
    required this.prompt,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 60),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                prompt.prompt,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                prompt.answer,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            height: 40,
            width: 50,
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Shadow color
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/icons/heart_icon.png",
                  width: 24,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class NamedSection extends StatelessWidget {
  const NamedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          exampleProfile.name,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Image.asset(
            "assets/icons/active_icon.png",
            width: 10,
          ),
        ),
        SizedBox(
          width: 4,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text(
            "Active now",
            style: TextStyle(color: Color(0xFF509C7F), fontSize: 12),
          ),
        )
      ],
    );
  }
}

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              IconText(
                imageAsset: "assets/icons/age_icon.png",
                text: exampleProfile.age,
              ),
              VerticalDivider(),
              IconText(
                imageAsset: "assets/icons/height_icon.png",
                text: exampleProfile.height,
              ),
              VerticalDivider(),
              IconText(
                imageAsset: "assets/icons/location_icon.png",
                text: exampleProfile.location,
              ),
            ],
          ),
          SizedBox(
            height: 14,
          ),
          HorizontalDivider(),
          SizedBox(
            height: 14,
          ),
          IconText(
            imageAsset: "assets/icons/college_icon.png",
            text: exampleProfile.college,
          ),
          SizedBox(
            height: 14,
          ),
          HorizontalDivider(),
          SizedBox(
            height: 14,
          ),
          IconText(
            imageAsset: "assets/icons/primary_location_icon.png",
            text: exampleProfile.primaryLocation,
          ),
        ],
      ),
    );
  }
}

class ProfileImage extends StatelessWidget {
  final String imageAsset;
  const ProfileImage({
    super.key,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.asset(
                  imageAsset,
                  height: 300,
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            height: 40,
            width: 50,
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Shadow color
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/icons/heart_icon.png",
                  width: 24,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class VerticalDivider extends StatelessWidget {
  const VerticalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      height: 20,
      width: 0.2,
      color: Colors.grey,
    );
  }
}

class HorizontalDivider extends StatelessWidget {
  const HorizontalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      height: 0.1,
      color: Colors.grey,
    );
  }
}

class IconText extends StatelessWidget {
  final String imageAsset;
  final String text;

  const IconText({
    super.key,
    required this.imageAsset,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imageAsset,
          height: 20,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 12,
          ),
        )
      ],
    );
  }
}
