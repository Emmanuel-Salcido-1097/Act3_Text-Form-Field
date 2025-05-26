import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String id;
  final String name;
  final String surname;
  final String gender;
  final String address;
  final String phone;
  final String email;

  Details({
    Key? key,
    required this.id,
    required this.name,
    required this.surname,
    required this.gender,
    required this.address,
    required this.phone,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Detalles del Usuario"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: Colors.deepPurple.shade200),
          ),
          child: ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.deepPurple,
              child: Icon(Icons.person, color: Colors.white),
            ),
            title: Text(
              "$name $surname",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                '''
ID: $id
Sexo: $gender
Dirección: $address
Celular: $phone
Email: $email
                ''',
                style: const TextStyle(height: 1.5),
              ),
            ),
            isThreeLine: true,

          ),
        ),
      ),
    );
  }
}
