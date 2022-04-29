// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/material.dart';
// PROJECT SECTION CODE

class ProjectSection extends StatelessWidget {
  final List<Map> projets = [
    {
      "title": "Social Media App",
      "url": "instagram.com",
      "image":
          "https://images.unsplash.com/photo-1509395062183-67c5ad6faff9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80"
    },
    {
      "title": "E Commerce App",
      "url": "instagram.com",
      "image":
          "https://images.unsplash.com/photo-1512486130939-2c4f79935e4f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80"
    },
    {
      "title": "Food Delivery App",
      "url": "https://github.com/pankajkcodes/foodorderingapp",
      "image":
          "https://images.unsplash.com/photo-1617347454431-f49d7ff5c3b1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1715&q=80"
    },
    {
      "title": "E Learning App",
      "url": "pankajkcodes.com",
      "image":
          "https://images.unsplash.com/photo-1585247226801-bc613c441316?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80"
    },
    {
      "title": "Job Portal App",
      "url": "pankajkcodes.com",
      "image":
          "https://images.unsplash.com/photo-1516131206008-dd041a9764fd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80"
    },
    {
      "title": "Wallpapers App",
      "url": "pankajkcodes.com",
      "image":
          "https://images.unsplash.com/photo-1516131206008-dd041a9764fd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80"
    },
  ];

  ProjectSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300, crossAxisSpacing: 10, mainAxisSpacing: 10),
      children: projets
          .map((e) => Container(
                margin: const EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: GridTile(
                    header: GridTileBar(
                      title: Text(e["title"]),
                      backgroundColor: Theme.of(context).primaryColorDark,
                    ),
                    child: Image.network(e["image"]),
                    footer: GridTileBar(
                      title: TextButton.icon(
                          onPressed: () {
                            window.open(e["url"], 'code link');
                          },
                          icon: Icon(Icons.code,
                              color: Theme.of(context).primaryColorDark),
                          label: Text(
                            'View code',
                            style: TextStyle(
                                color: Theme.of(context).primaryColorDark),
                          )),
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
              ))
          .toList(),
    );
  }
}
