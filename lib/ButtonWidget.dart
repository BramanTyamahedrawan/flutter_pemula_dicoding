import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          // 1. elevated button
          onPressed: () {
            // Aksi ketika button diklik
          },
          child: Text(
            'Tombol',
            style: TextStyle(fontFamily: 'Oswald'),
          ),
        ), // elevated button
        TextButton(
          // 2. text button
          onPressed: () {
            // Aksi ketika button diklik
          },
          child: Text(
            'Text Button',
            style: TextStyle(fontFamily: 'Oswald'),
          ),
        ), // text button
        OutlinedButton(
          // 3. outline button
          onPressed: () {
            // Aksi ketika button diklik
          },
          child: Text(
            'Outlined Button',
            style: TextStyle(fontFamily: 'Oswald'),
          ),
        ), // outline button
        IconButton(
          // 4. icon button
          icon: Icon(Icons.volume_up),
          tooltip: 'Increase volume by 10',
          onPressed: () {
            // Aksi ketika button diklik
          },
        ), // icon button
        FirstScreen(), // 5. dropdown button
        // dropdown button berbeda dari button yang lain karena dropdown button mengubah screen, jadi
        // dropdown button menggunakan Statefull Widget
      ],
    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: const <DropdownMenuItem<String>>[
        DropdownMenuItem<String>(
          value: 'Dart',
          child: Text(
            'Dart',
            style: TextStyle(fontFamily: 'Oswald'),
          ),
        ),
        DropdownMenuItem<String>(
          value: 'Kotlin',
          child: Text(
            'Kotlin',
            style: TextStyle(fontFamily: 'Oswald'),
          ),
        ),
        DropdownMenuItem<String>(
          value: 'Swift',
          child: Text(
            'Swift',
            style: TextStyle(fontFamily: 'Oswald'),
          ),
        ),
      ],
      value: language,
      hint: Text(
        'Select Language',
        style: TextStyle(fontFamily: 'Oswald'),
      ),
      onChanged: (String? value) {
        setState(() {
          language = value;
        });
      },
    );
  }
}
