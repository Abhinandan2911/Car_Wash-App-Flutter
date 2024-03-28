// ignore_for_file: sized_box_for_whitespace

import 'package:carwash_app/main.dart';
import 'package:carwash_app/orders.dart';
import 'package:carwash_app/profile_screen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  TextEditingController amtController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    const drawerHeader = UserAccountsDrawerHeader(
      accountEmail: Text('+91 7975533945'),
      accountName: Text(
        'Abhinandan G',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      currentAccountPicture: CircleAvatar(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          child: CircleAvatar(
            backgroundImage: AssetImage(
              'assets/img/logo.png',
            ),
          )),
    );
    final drawerItems = ListView(
      children: <Widget>[
        drawerHeader,
        const ListTile(
          leading: ImageIcon(AssetImage("assets/img/carlogo.png")),
          title: Text(
            'Cars',
            style: TextStyle(
                fontSize: 20,
                //color: Color.fromARGB(255, 7, 139, 255),
                fontWeight: FontWeight.bold),
          ),
          // onTap: () => Navigator.of(context).push(_NewPage(1)),
        ),
        ListTile(
          leading: const Icon(Icons.date_range),
          title: const Text(
            'Orders',
            style: TextStyle(
                fontSize: 20,
                //color: Color.fromARGB(255, 7, 139, 255),
                fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const OrdersPage()),
            );
          },
        ),
        const SizedBox(
          width: 80,
        ),
        ListTile(
          leading: const Icon(Icons.account_box),
          title: const Text(
            'Profile',
            style: TextStyle(
                fontSize: 20,
                //color: Color.fromARGB(255, 7, 139, 255),
                fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfileScreen()),
            );
          },
        ),
        ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text(
              'Logout',
              style: TextStyle(
                  fontSize: 20,
                  //color: Color.fromARGB(255, 7, 139, 255),
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            }),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Sparkle Auto- Care Sevice',
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
      ),
      drawer: Drawer(
        child: drawerItems,
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12.0, 7.0, 7.0, 2.0),
              child: Container(
                height: 40,
                child: const Text(
                  "Cars We Wash",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            carsList(),
            const SizedBox(
              height: 15,
            ),
            washList(),
            const SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.bottomRight,
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: ElevatedButton(
                  child: const Text('place Order'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OrdersPage()),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }

  //Cars We Wash

  Center carsList() {
    return Center(
      child: SizedBox(
        width: double.infinity,
        height: 220,
        // implement ListView
        child: ListView(
          // make it horizontal
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(),
                image: const DecorationImage(
                    image: AssetImage("assets/img/c1.png"), fit: BoxFit.cover),
                color: Colors.lightBlue,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              margin: const EdgeInsets.all(15),
              width: 200,
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Toyota Fortuner',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(),
                image: const DecorationImage(
                    image: AssetImage("assets/img/c1.png"), fit: BoxFit.cover),
                color: Colors.lightBlue,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              margin: const EdgeInsets.all(15),
              width: 200,
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Suzuki Ertiga',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(),
                image: const DecorationImage(
                    image: AssetImage("assets/img/c1.png"), fit: BoxFit.cover),
                color: Colors.lightBlue,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              margin: const EdgeInsets.all(15),
              width: 200,
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Toyota Innova Crysta',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(),
                image: const DecorationImage(
                    image: AssetImage("assets/img/c1.png"), fit: BoxFit.cover),
                color: Colors.lightBlue,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              margin: const EdgeInsets.all(15),
              width: 200,
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Maruti Suzuki',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(),
                image: const DecorationImage(
                    image: AssetImage("assets/img/c1.png"), fit: BoxFit.cover),
                color: Colors.lightBlue,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              margin: const EdgeInsets.all(15),
              width: 200,
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Tata Punch',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(),
                image: const DecorationImage(
                    image: AssetImage("assets/img/c1.png"), fit: BoxFit.cover),
                color: Colors.lightBlue,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              margin: const EdgeInsets.all(15),
              width: 200,
              alignment: Alignment.bottomLeft,
              child: const Text(
                'TATA Nexon',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Wash List
Center washList() {
  return Center(
    child: SizedBox(
      width: double.infinity,
      height: 220,
      // implement ListView
      child: ListView(
        // make it horizontal
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(),
              image: const DecorationImage(
                  image: AssetImage("assets/img/washedcar1.png"),
                  fit: BoxFit.contain),
              color: Colors.transparent,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            margin: const EdgeInsets.all(15),
            width: 250,
            alignment: Alignment.bottomLeft,
            child: const Row(children: [
              Text(
                'Self-Service',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(" ₹1500",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    fontSize: 20,
                    shadows: [
                      Shadow(
                        color: Colors.black, // Choose the color of the shadow
                        blurRadius:
                            0.0, // Adjust the blur radius for the shadow effect
                        offset: Offset(1.0,
                            1.0), // Set the horizontal and vertical offset for the shadow
                      ),
                    ],
                  ))
            ]),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(),
              image: const DecorationImage(
                  image: AssetImage("assets/img/washedcar1.png"),
                  fit: BoxFit.contain),
              color: Colors.transparent,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            margin: const EdgeInsets.all(15),
            width: 250,
            alignment: Alignment.bottomLeft,
            child: const Row(children: [
              Text(
                'Tunnel Car Wash',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(" ₹1500",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    fontSize: 20,
                    shadows: [
                      Shadow(
                        color: Colors.black, // Choose the color of the shadow
                        blurRadius:
                            0.0, // Adjust the blur radius for the shadow effect
                        offset: Offset(1.0,
                            1.0), // Set the horizontal and vertical offset for the shadow
                      ),
                    ],
                  ))
            ]),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(),
              image: const DecorationImage(
                  image: AssetImage("assets/img/washedcar1.png"),
                  fit: BoxFit.contain),
              color: Colors.transparent,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            margin: const EdgeInsets.all(15),
            width: 250,
            alignment: Alignment.bottomLeft,
            child: const Row(children: [
              Text(
                'Hand Wash',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(" ₹1500",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    fontSize: 20,
                    shadows: [
                      Shadow(
                        color: Colors.black, // Choose the color of the shadow
                        blurRadius:
                            0.0, // Adjust the blur radius for the shadow effect
                        offset: Offset(1.0,
                            1.0), // Set the horizontal and vertical offset for the shadow
                      ),
                    ],
                  ))
            ]),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(),
              image: const DecorationImage(
                  image: AssetImage("assets/img/washedcar1.png"),
                  fit: BoxFit.contain),
              color: Colors.transparent,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            margin: const EdgeInsets.all(15),
            width: 250,
            alignment: Alignment.bottomLeft,
            child: const Row(children: [
              Text(
                'Waterless Wash',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(" ₹1500",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    fontSize: 20,
                    shadows: [
                      Shadow(
                        color: Colors.black, // Choose the color of the shadow
                        blurRadius:
                            0.0, // Adjust the blur radius for the shadow effect
                        offset: Offset(1.0,
                            1.0), // Set the horizontal and vertical offset for the shadow
                      ),
                    ],
                  ))
            ]),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(),
              image: const DecorationImage(
                  image: AssetImage("assets/img/washedcar1.png"),
                  fit: BoxFit.contain),
              color: Colors.transparent,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            margin: const EdgeInsets.all(15),
            width: 250,
            alignment: Alignment.bottomLeft,
            child: const Row(children: [
              Text(
                'Mobile Car Wash',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(" ₹1500",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    fontSize: 20,
                    shadows: [
                      Shadow(
                        color: Colors.black, // Choose the color of the shadow
                        blurRadius:
                            0.0, // Adjust the blur radius for the shadow effect
                        offset: Offset(1.0,
                            1.0), // Set the horizontal and vertical offset for the shadow
                      ),
                    ],
                  ))
            ]),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(),
              image: const DecorationImage(
                  image: AssetImage("assets/img/washedcar1.png"),
                  fit: BoxFit.contain),
              color: Colors.transparent,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            margin: const EdgeInsets.all(15),
            width: 250,
            alignment: Alignment.bottomLeft,
            child: const Row(children: [
              Text(
                'Express Wash',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(" ₹1500",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    fontSize: 20,
                    shadows: [
                      Shadow(
                        color: Colors.black, // Choose the color of the shadow
                        blurRadius:
                            0.0, // Adjust the blur radius for the shadow effect
                        offset: Offset(1.0,
                            1.0), // Set the horizontal and vertical offset for the shadow
                      ),
                    ],
                  ))
            ]),
          ),
        ],
      ),
    ),
  );
}
