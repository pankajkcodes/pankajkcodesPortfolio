import 'package:flutter/material.dart';

// GENERATE STARTS CODE
class GenerateStars extends StatelessWidget {
  final double star;
  final String skillname;

  const GenerateStars({Key? key, required this.skillname, required this.star})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Widget> stars = [
      SizedBox(
          width: 180,
          child: Text(
            skillname,
            style: const TextStyle(fontSize: 30),
          )),
    ];
    for (var i = 1; i <= star; i++) {
      stars.add(Icon(
        Icons.star,
        color: Theme.of(context).primaryColor,
      ));
    }
    for (var i = star; i <= 4; i++) {
      stars.add(const Icon(Icons.star_outline));
    }

    return Row(
      children: stars,
    );
  }
}

// SKILLS CODE

class SkillsSection extends StatelessWidget {
  const SkillsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
          child: Column(
            children: const [
              GenerateStars(skillname: 'Html/css/js', star: 4.0),
              GenerateStars(skillname: 'PHP/MySql', star: 4.0),
              GenerateStars(skillname: 'Java/Kotlin', star: 5.0),
              GenerateStars(skillname: 'Android', star: 5.0),
              GenerateStars(skillname: 'flutter', star: 4.0),
            ],
          ),
        ),
      ],
    );
  }
}
