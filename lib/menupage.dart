import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noor_optical/appointment.dart';
import 'package:noor_optical/powergroup.dart';
import 'package:noor_optical/sell.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff150236),
        title: const Center(
          child: Text(
            "Welcome!",
            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      backgroundColor: const Color(0x208a4bfe),

      body:
      Container(
        color: Color(0xff613ea2),
        child: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.height * 0.8,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: CircleAvatar(
                      radius: 90,
                      backgroundColor: const Color(0xFF150236).withOpacity(0.6),
                      child: const CircleAvatar(
                        radius: 88,
                        backgroundImage: AssetImage(
                        "assets/img/7.jpg",
                      ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const PowerGroup()));
                      },
                      child: Card(
                        color: const Color(0xFF150236).withOpacity(0.5),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.80,
                          width: MediaQuery.of(context).size.width * 0.90,
                          decoration: BoxDecoration(
                              color: const Color(0xff150236).withOpacity(0.6),
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Center(
                                      child: Text(
                                        "Order",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Center(
                                      child: Text(
                                        "Glass, Power, Frame",
                                        style: TextStyle(
                                          color: Colors.white54,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Sell()));
                      },
                      child: Card(
                        color: const Color(0xFF150236).withOpacity(0.5),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.80,
                          width: MediaQuery.of(context).size.width * 0.90,
                          decoration: BoxDecoration(
                              color: const Color(0xff150236).withOpacity(0.6),
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Center(
                                      child: Text(
                                        "Sell Record",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Center(
                                      child: Text(
                                        "Sunglass sell",
                                        style: TextStyle(
                                          color: Colors.white54,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Appointment()));
                      },
                      child: Card(
                        color: const Color(0xFF150236).withOpacity(0.5),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.80,
                          width: MediaQuery.of(context).size.width * 0.90,
                          decoration: BoxDecoration(
                              color: const Color(0xFF150236).withOpacity(0.6),
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Center(
                                      child: Text(
                                        "Appointment",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Center(
                                      child: Text(
                                        "Doctor\'s Appointment",
                                        style: TextStyle(
                                          color: Colors.white54,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}
