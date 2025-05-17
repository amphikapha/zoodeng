import 'package:flutter/material.dart';
import 'package:zoodeng/main.dart';
import 'package:zoodeng/models/person.dart';

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  int _age = 20;
  Job _job = Job.doctor;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Zoodeng',
        home: Scaffold(
            appBar: AppBar(
              title: const Text('form'),
              backgroundColor: Colors.brown,
              centerTitle: true,
            ),
            body: Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          label: const Text('Name'),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _name = value!;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Age',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your age';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _age = int.parse(value!);
                        },
                      ),
                      const SizedBox(height: 20),
                      DropdownButtonFormField(
                          value: _job,
                          decoration: InputDecoration(
                            labelText: 'Job',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          items: Job.values.map((key) {
                            return DropdownMenuItem(
                              value: key,
                              child: Text(key.title),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              _job = value!;
                            });
                          }),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          _formKey.currentState!.validate();
                          _formKey.currentState!.save();
                          data.add(
                            Person(
                              name: _name,
                              age: _age,
                              job: _job,
                            ),
                          );
                          _formKey.currentState!.reset();
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (ctx) => const MyApp(),
                              ));
                        },
                        child: const Text('Submit'),
                      ),
                    ],
                  )),
            )));
  }
}
