import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  final String info = 'uaol';
  final String nome = 'Jose da Mata IV';
  final int idade = 22;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
            onPressed: () {
              createInfo(info: info);
            },
            child: Text("Add")));
  }

  Future createInfo({required String info}) async {
    final docUser = FirebaseFirestore.instance.collection('infos').doc('my-id');
    final json = {
      'nome': nome,
      'idade': idade,
    };
    await docUser.set(json);
  }
}
