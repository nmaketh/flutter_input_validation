import 'package:flutter/material.dart';
import '../utils/validators.dart';

class Screen2 extends StatefulWidget {
  final String name, email, phone;
  Screen2(this.name, this.email, this.phone);

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  final _formKey = GlobalKey<FormState>();
  String address = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Address Details")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Address'),
                validator: (value) => value!.isEmpty ? "Address is required" : null,
                onSaved: (value) => address = value!,
              ),
              SizedBox(height: 20),
              Text("Name: ${widget.name}"),
              Text("Email: ${widget.email}"),
              Text("Phone: ${widget.phone}"),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Form Submitted Successfully!")),
                    );
                  }
                },
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
