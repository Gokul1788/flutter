import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  String? _docId; // To store the document ID for updates

  void _submitForm() async {

    if (_formKey.currentState!.validate()) {

     if (_docId == null) {
        // Create new document
        await FirebaseFirestore.instance.collection('users').add({
          'name': _nameController.text,
          'email': _emailController.text,
        });
     } else {
        // Update existing document
        await FirebaseFirestore.instance.collection('users').doc(_docId).update({
         'name': _nameController.text,
         'email': _emailController.text,
       });
       _docId = null; // Reset the doc ID
     }

      _nameController.clear();
      _emailController.clear();

      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Data saved successfully!')
          ));
    }
  }

  void _deleteDocument(String docId) async {
    await FirebaseFirestore.instance.collection('users').doc(docId).delete();
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Data deleted successfully!')
        ));
  }

  void _editDocument(String docId, String name, String email) {
    _docId = docId;
    _nameController.text = name;
    _emailController.text = email;
  }

  Stream<List<UserModel>> _getUsers() {
    return FirebaseFirestore.instance
        .collection('users')
        .snapshots()
        .map((snapshot) => snapshot.docs
        .map((doc) => UserModel.fromFirestore(doc))
        .toList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CRUD Operations')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(labelText: 'Name'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(labelText: 'Email'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _submitForm,
                    child: Text(_docId == null ? 'Add User' : 'Update User'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: StreamBuilder<List<UserModel>>(
                stream: _getUsers(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  }

                  if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  }

                  final users = snapshot.data!;

                  return ListView.builder(
                    itemCount: users.length,
                    itemBuilder: (context, index) {
                      final user = users[index];
                      return ListTile(
                        title: Text(user.name),
                        subtitle: Text(user.email),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(Icons.edit),
                              onPressed: () => _editDocument(user.id, user.name, user.email),
                            ),
                            IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () => _deleteDocument(user.id),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserModel {
  final String id;
  final String name;
  final String email;

  UserModel({required this.id, required this.name, required this.email});

  factory UserModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return UserModel(
      id: doc.id,
      name: data['name'] ?? '',
      email: data['email'] ?? '',
    );
  }
}
