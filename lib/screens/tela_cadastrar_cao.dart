import 'package:flutter/material.dart';
import 'package:dogfamily/widgets/drawer_customizado.dart';

class TelaCadastrarCao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawerWidget(),
      appBar: AppBar(
        title: Text("Cadastro do cão"),
        centerTitle: true,
        actions: <Widget>[],
      ),
      body: MyCustomForm(),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Nome do cão'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Digite o nome do cão!';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Raça'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Digite a raça do cão!';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Idade'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Digite a idade do cão!';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Porte'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Digite o porte do cão! (P,M,G)';
              }
              return null;
            },
          ),

          // simple usage

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false
                // otherwise.
                if (_formKey.currentState.validate()) {
                  // If the form is valid, display a Snackbar.
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
