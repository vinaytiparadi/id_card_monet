import 'package:flutter/material.dart';
import 'package:dynamic_color/dynamic_color.dart';

void main() => runApp(const IdCard());

class IdCard extends StatefulWidget {
  const IdCard({Key? key}) : super(key: key);

  @override
  State<IdCard> createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {
  int age = 0;

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
        return MaterialApp(
          home: Scaffold(
            backgroundColor: darkDynamic?.background ?? Colors.white, // *1
            appBar: AppBar(
              title: Text(
                'ID Card',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.9,
                  color: darkDynamic?.onPrimaryContainer ?? Colors.white, // *2
                ),
              ),
              centerTitle: true,
              backgroundColor: darkDynamic?.secondaryContainer.withAlpha(50) ??
                  Colors.blue, // *3
              elevation: 6.0,
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                setState(() {
                  age += 1;
                });
              },
              child: const Icon(
                Icons.add,
                color: Colors.black,
              ),
              backgroundColor:
                  darkDynamic?.primary.withOpacity(1) ?? Colors.blue, // *4
            ),
            body: Padding(
              padding: const EdgeInsets.fromLTRB(30, 40, 30, 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'NAME',
                    style: TextStyle(
                      color: darkDynamic?.primary.withOpacity(0.9) ??
                          Colors.black, // *5
                      letterSpacing: 2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Vinay :)',
                    style: TextStyle(
                      color: darkDynamic?.secondary ?? Colors.blue, // *6
                      letterSpacing: 2,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'CURRENT AGE',
                    style: TextStyle(
                      color: darkDynamic?.primary.withOpacity(0.9) ??
                          Colors.black, // *7
                      letterSpacing: 2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '$age',
                    style: TextStyle(
                      color: darkDynamic?.secondary ?? Colors.blue, // *8
                      letterSpacing: 2,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'CONTACT',
                    style: TextStyle(
                      color: darkDynamic?.primary.withOpacity(0.9) ??
                          Colors.black, // *9
                      letterSpacing: 2,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.email,
                        color: darkDynamic?.secondary ?? Colors.blue, // *10
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'xyz@gmail.com',
                        style: TextStyle(
                          color: darkDynamic?.secondary ?? Colors.blue, // *11
                          letterSpacing: 1,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
