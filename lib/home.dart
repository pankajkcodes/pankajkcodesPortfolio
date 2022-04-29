import 'package:flutter/material.dart';
import 'package:pankajkcodes/projects_widget.dart';
import 'package:pankajkcodes/skills_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HeroWidget(),
          const Text(
            "My latest Projects",
            style: TextStyle(color: Colors.green),
          ),
          ProjectSection(),
          const Text(
            "My Skills",
            style: TextStyle(color: Colors.green),
          ),
          const SkillsSection(),
          const Text(
            "Social Links",
            style: TextStyle(color: Colors.green),
          ),
          const SocialMediaSection()
        ],
      ),
    );
  }
}

// HERO SECTION CODE
class HeroWidget extends StatelessWidget {
  const HeroWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 600),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Image.asset(
          //   "images/computer.jpg",
          //   fit: BoxFit.cover,
          //   width: double.infinity,
          // ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
                'Hello Everybody,\n I am PANKAJ \n Android App Developer \n with Excellent problem Solving Skill and ability to perform well in a Team. Passionate about Coding .',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width > 768 ? 40 : 15,
                  color: Colors.black,
                )),
          )
        ],
      ),
    );
  }
}

// SOCIAL LINKS WIDGET
class SocialMediaSection extends StatelessWidget {
  const SocialMediaSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.facebook)),
        IconButton(onPressed: () {}, icon: Image.asset('images/yt.png')),
        IconButton(onPressed: () {}, icon: Image.asset('images/linkedin.png')),
        IconButton(onPressed: () {}, icon: Image.asset('images/twitter.png')),
        IconButton(onPressed: () {}, icon: Image.asset('images/instagram.png')),
      ],
    );
  }
}
