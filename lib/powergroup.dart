import 'package:flutter/material.dart';

class PowerGroup extends StatefulWidget {
  const PowerGroup({Key? key}) : super(key: key);

  @override
  State<PowerGroup> createState() => _PowerGroupState();
}

class _PowerGroupState extends State<PowerGroup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff150236),
        title: const Center(
          child: Text(
            "Power Group",
            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: Row(
          children: [
            Expanded(child:
            Container(
              color: Color(0xff17181f),
              child: Column(
                children: [
                  Expanded(child:
                  Container(
                    color: Color(0xff613ea2),
                    )
                  ),
                  Expanded(child:
                  Container(
                    color: Color(0xff17181f),
                    )
                  ),
                ],
               ),
              )
            ),
            Expanded(child:
            Container(
              color: Colors.blue,
              child: Column(
                children: [
                  Expanded(child:
                  Container(
                    color: Color(0xff150236),
                   )
                  ),
                  Expanded(child:
                  Container(
                    color: Color(0x208a4bfe),
                   )
                  ),
                ],
              ),
            )
            ),
          ],
        ),
      ),
    );
  }
}
