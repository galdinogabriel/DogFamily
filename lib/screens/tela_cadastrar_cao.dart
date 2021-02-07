import 'package:dogfamily/data/data.dart';
import 'package:dogfamily/models/anuncio.dart';
import 'package:dogfamily/models/cao.dart';
import 'package:dogfamily/routes/app_routes.dart';
import 'package:flutter/material.dart';

class TelaCadastrarCao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //pegando funcao de referencia da navegacao botao anuncio
    final Function addCao = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Cadastro do cão"),
        centerTitle: true,
        actions: <Widget>[],
      ),
      body: SingleChildScrollView(child: MyCustomForm(addCao)),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  final Function addCao;
  MyCustomForm(this.addCao);
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  //variavel de controle do furmulario
  final _formKey = GlobalKey<FormState>();

  //variaveis de controle dos textFild
  final raca = TextEditingController();
  final idade = TextEditingController();
  final imageUrl = TextEditingController();
  final descricao = TextEditingController();
  //variavel de controle das dropLists
  String currentSelectedValueSexo;
  String currentSeletedValuePorte;
  var typeSexo = ["Macho", "Fêmea"];
  var typePorte = ["Grande", "Médio", "Pequeno"];

  //varieveis de controle dos switchs
  bool temDeficiencia = false;
  bool temDoenca = false;
  bool usaRemedioControlado = false;

  // metodos de acionamento do switch
  void onSelectedTemDeficiencia(newValue) {
    setState(() {
      temDeficiencia = newValue;
    });
  }

  void onSelectedTemDoenca(newValue) {
    setState(() {
      temDoenca = newValue;
    });
  }

  void onSelectedUsaRemedio(newValue) {
    setState(() {
      usaRemedioControlado = newValue;
    });
  }

  void submitForm() {
    Porte porte;
    if (currentSeletedValuePorte == "Grande") {
      porte = Porte.Grande;
    } else if (currentSeletedValuePorte == "Médio") {
      porte = Porte.Medio;
    } else if (currentSeletedValuePorte == "Pequeno") {
      porte = Porte.Pequeno;
    }

    Cao newCao = Cao(
      sexo: currentSelectedValueSexo,
      idade: int.parse(idade.text),
      imageUrl: imageUrl.text,
      porte: porte,
      raca: raca.text,
      temDeficienciaFisica: temDeficiencia,
      temDoenca: temDoenca,
      usaRemedioControlado: usaRemedioControlado,
    );

    //variavel que armazenará o novo anuncio de cao
    Anuncio anuncioCriado = Anuncio(
        cao: newCao,
        anunciante: USUARIOS[0],
        descricao: descricao.text,
        quandoCriado: DateTime.now(),
        id: 1);

    setState(() {
      widget.addCao(anuncioCriado);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(143, 148, 251, .2),
                      blurRadius: 10.0,
                      offset: Offset(0, 10),
                    )
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.grey[100]))),
                      child: TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Preencha o campo obrigatório';
                          }
                          return null;
                        },
                        controller: raca,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Raça",
                            hintStyle: TextStyle(color: Colors.grey[400])),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Preencha o campo obrigatório';
                            }
                            return null;
                          },
                          controller: idade,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Idade",
                              hintStyle: TextStyle(color: Colors.grey[400])),
                        )),
                    Container(
                        padding: EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Preencha o campo obrigatório';
                            }
                            return null;
                          },
                          controller: imageUrl,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Link da foto",
                              hintStyle: TextStyle(color: Colors.grey[400])),
                        )),
                    Container(
                        padding: EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Preencha o campo obrigatório';
                            }
                            return null;
                          },
                          controller: descricao,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Descrição",
                              hintStyle: TextStyle(color: Colors.grey[400])),
                        )),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: FormField<String>(
                        builder: (FormFieldState<String> state) {
                          return InputDecorator(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  5.0,
                                ),
                              ),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                hint: Text(
                                  "Selecione o sexo",
                                  style: TextStyle(color: Colors.grey[400]),
                                ),
                                value: currentSelectedValueSexo,
                                isDense: true,
                                onChanged: (newValue) {
                                  setState(() {
                                    currentSelectedValueSexo = newValue;
                                  });
                                  print(currentSelectedValueSexo);
                                },
                                items: typeSexo.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: FormField<String>(
                        builder: (FormFieldState<String> state) {
                          return InputDecorator(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  5.0,
                                ),
                              ),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                hint: Text(
                                  "Selecione o porte físico",
                                  style: TextStyle(color: Colors.grey[400]),
                                ),
                                value: currentSeletedValuePorte,
                                isDense: true,
                                onChanged: (newValue) {
                                  setState(() {
                                    currentSeletedValuePorte = newValue;
                                  });
                                  print(currentSeletedValuePorte);
                                },
                                items: typePorte.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Tem alguma deficiência?",
                              style: TextStyle(color: Colors.grey[400])),
                          Switch(
                            value: temDeficiencia,
                            onChanged: (newValue) {
                              onSelectedTemDeficiencia(newValue);
                            },
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Tem alguma doença?",
                              style: TextStyle(color: Colors.grey[400])),
                          Switch(
                            value: temDoenca,
                            onChanged: (newValue) {
                              onSelectedTemDoenca(newValue);
                            },
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Usa rémedio controlado?",
                              style: TextStyle(color: Colors.grey[400])),
                          Switch(
                            value: usaRemedioControlado,
                            onChanged: (newValue) {
                              onSelectedUsaRemedio(newValue);
                            },
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  if (_formKey.currentState.validate()) {
                    submitForm();
                    Navigator.of(context).pushNamed(AppRoutes.HOME);
                  }
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(143, 148, 251, 1),
                        Color.fromRGBO(143, 148, 251, .6),
                      ],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Cadastrar",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
