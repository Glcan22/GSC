import 'package:flutter/material.dart';

class ClimateAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 0.2,
                ),
                child: SizedBox(
                  height: 2 * width / 5,
                  width: double.maxFinite,
                  child: Image.asset('lib/images/proje.png'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  " ",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "",
                ),
              ),

              const SizedBox(height: 10),

              // get started button
              Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.only(right: 30, top: 100),
                child: GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    width: 120,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent, width: 1),
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 248, 245, 245),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
