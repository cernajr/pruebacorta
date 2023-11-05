import 'package:flutter/material.dart';

class RealEstateApp extends StatefulWidget {
  const RealEstateApp({super.key});
  @override
  State<RealEstateApp> createState() => _RealEstateAppState();
}

class _RealEstateAppState extends State<RealEstateApp> {
  static const cardImage = NetworkImage(
      'https://fachadasde-casas.com/wp-content/uploads/2018/06/Fachadas-de-casas-blancas-de-dos-pisos-4.jpg');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return const IconButton(
              icon: Icon(Icons.close),
              onPressed: null,
            );
          },
        ),
        title: const Center(
          child: Text(
            '1499 Galenia Road',
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: const <Widget>[
          IconButton(
            icon: Icon(Icons.keyboard_arrow_up),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.keyboard_arrow_down),
            onPressed: null,
          )
        ],
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 212,
                  child: Ink.image(
                    image: cardImage,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                const ListTile(
                  title: Text(
                    '\$599,000',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('1499 Galenia Rd, Austin, TX',
                      style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.ios_share),
                        onPressed: null,
                      ),
                      IconButton(
                        icon: Icon(Icons.favorite_border),
                        onPressed: null,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceEvenly, 
                  children: [
                    Column(
                      children: [
                        Text("4",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Text('Beds'),
                      ],
                    ),
                    Column(
                      children: [
                        Text("3+",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Text('Baths'),
                      ],
                    ),
                    Column(
                      children: [
                        Text("4,203",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Text('Sq. ft'),
                      ],
                    ),
                    Column(
                      children: [
                        Text("8,843",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Text('Lot Sq. ft'),
                      ],
                    ),
                  ], 
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
          const SizedBox(height: 30),
          const Card(
              child: Row(
            children: [
              SizedBox(width: 10),
              Icon(
                Icons.map,
                size: 35,
              ),
              SizedBox(width: 5),
              Text(
                "View Map",
                style: TextStyle(fontSize: 20, color: Colors.blue, fontWeight: FontWeight.w400),
              ),
              SizedBox(width: 40),
              Icon(
                Icons.directions_car,
                size: 35,
              ),
              SizedBox(width: 5),
              Text("10 minutes away",
                  style: TextStyle(fontSize: 20, color: Colors.blue, fontWeight: FontWeight.w400)),
            ],
          )),
          const SizedBox(height: 10),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Open Houses",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Text("Friday 1:00 pm - 4:00 pm",
                        style: TextStyle(fontSize: 18)),
                    SizedBox(width: 130),
                    Text("2/24"),
                    SizedBox(width: 10),
                    Icon(Icons.keyboard_arrow_right),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Text("Saturday 1:00 pm - 4:00 pm",
                        style: TextStyle(fontSize: 18)),
                    SizedBox(width: 115),
                    Text("2/25"),
                    SizedBox(width: 8),
                    Icon(Icons.keyboard_arrow_right),
                  ],
                ),
                const SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.redAccent,
                  ),
                  child: const TextButton(
                    onPressed:null,
                    child: Text(
                      'Contact Agent',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
