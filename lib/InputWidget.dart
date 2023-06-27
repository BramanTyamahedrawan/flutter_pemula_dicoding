import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<InputWidget> {
  String _name = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: 'Write your name here...',
            labelText: 'Your Name',
          ),
          onChanged: (String value) {
            setState(() {
              _name = value;
            });
          },
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text('Hello, $_name'),
                  );
                });
          },
          child: Text('Submit'),
        ),
        SwitchInputWidget(),
        RadioInputWidget(),
        CheckboxInputWidget(),
      ],
    );
  }
}

class SwitchInputWidget extends StatefulWidget {
  _SwitchInputWidget createState() => _SwitchInputWidget();
}

class _SwitchInputWidget extends State<SwitchInputWidget> {
  bool lightOn = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: lightOn,
      onChanged: (bool value) {
        setState(() {
          lightOn = value;
        });

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(lightOn ? 'Light On' : 'Light Off'),
            duration: Duration(seconds: 1),
          ),
        );
      },
    );
  }
}

class RadioInputWidget extends StatefulWidget {
  _RadioInputState createState() => _RadioInputState();
}

class _RadioInputState extends State<RadioInputWidget> {
  String language = ' ';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          leading: Radio<String>(
            value: 'Dart',
            groupValue: language,
            onChanged: (value) {
              setState(() {
                language = value.toString();
                showSnackbar();
              });
            },
          ),
          title: Text('Dart'),
        ),
        ListTile(
          leading: Radio<String>(
            value: 'Kotlin',
            groupValue: language,
            onChanged: (value) {
              setState(() {
                language = value.toString();
                showSnackbar();
              });
            },
          ),
          title: Text('Kotlin'),
        ),
        ListTile(
          leading: Radio<String>(
            value: 'Swift',
            groupValue: language,
            onChanged: (value) {
              setState(() {
                language = value.toString();
                showSnackbar();
              });
            },
          ),
          title: Text('Swift'),
        ),
      ],
    );
  }

  void showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$language selected'),
        duration: Duration(seconds: 1),
      ),
    );
  }
}

class CheckboxInputWidget extends StatefulWidget {
  _CheckboxInputState createState() => _CheckboxInputState();
}

class _CheckboxInputState extends State<CheckboxInputWidget> {
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: agree,
        onChanged: (bool? value) {
          setState(() {
            agree = value!;
          });
        },
      ),
      title: Text('Agree / Disagree'),
    );
  }
}
