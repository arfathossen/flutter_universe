import 'package:flutter/material.dart';
import 'package:flutter_universe/constants.dart';

import 'package:flutter_universe/data.dart';

class DetailsPage extends StatelessWidget {
  final PlanetInfo planetInfo;
  const DetailsPage({super.key, required this.planetInfo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 300,
                          ),
                          Text(
                            planetInfo.name,
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 56,
                              color: primaryTextColor,
                              fontWeight: FontWeight.w900,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            ('Solar System'),
                            style: TextStyle(
                              fontSize: 31,
                              fontFamily: 'Avenir',
                              color: primaryTextColor,
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          const Divider(
                            color: Colors.black38,
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          Text(
                            planetInfo.description ?? '',
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontFamily: 'Avenir',
                                color: contentTextColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          const Divider(
                            color: Colors.black38,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 32),
                      child: Text(
                        ('Gallery'),
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 25,
                          color: primaryTextColor,
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      height: 250,
                      padding: const EdgeInsets.only(left: 32),
                      child: ListView.builder(
                          itemCount: planetInfo.images.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Card(
                              clipBehavior: Clip.antiAlias,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24)),
                              child: AspectRatio(
                                  aspectRatio: 1,
                                  child: Image.network(
                                    planetInfo.images[index],
                                    fit: BoxFit.cover,
                                  )),
                            );
                          }),
                    ),
                  ],
                ),
              ),
              Positioned(
                  right: -64,
                  child: Hero(
                      tag: planetInfo.position,
                      child: Image.asset(planetInfo.iconImage))),
              Positioned(
                  top: 60,
                  left: 32,
                  child: Text(
                    planetInfo.position.toString(),
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 247,
                      color: primaryTextColor.withOpacity(0.08),
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.left,
                  )),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios),
              )
            ],
          )),
    );
  }
}
