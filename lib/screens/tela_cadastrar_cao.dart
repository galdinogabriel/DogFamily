import 'package:dogfamily/widgets/anuncios_caes.dart';
import 'package:dogfamily/widgets/barra_filtro_raca.dart';
import 'package:flutter/material.dart';
import 'package:dogfamily/widgets/drawer_customizado.dart';
import 'package:dogfamily/widgets/item_card_widget.dart';
import 'package:dogfamily/widgets/barra_filtro_raca.dart';
import 'package:dogfamily/widgets/botao_anunciar_cao.dart';




class TelaAnunciarCao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
       backgroundColor: Colors.blue.shade200,
      
      drawer: CustomDrawerWidget(),
      appBar: AppBar(
        title: Text("Cadastro do cão"),
        centerTitle: true,
        actions: <Widget>[
          
          
        ],
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
//BACKGROUND



//FIM BACKGROUND

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {

bool _enabled = false;
  
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var _onPressed;
    if(_enabled){
      _onPressed = (){
        print("tap");
      };
    }
    // Build a Form widget using the _formKey created above.
    return Form(
      child:
      Padding(
        padding: EdgeInsets.all(30.0),
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            decoration:BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(143, 148, 251, .2),
                  blurRadius: 20.0,
                  offset: Offset(0,10)
                )
              ]
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey[100]))
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Raça",
                        hintStyle: TextStyle(color: Colors.grey[400])
                      ),
                    )
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Idade",
                        hintStyle: TextStyle(color: Colors.grey[400])
                      ),
                    )
                  ),
                    Container(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Altura",
                        hintStyle: TextStyle(color: Colors.grey[400])
                      ),
                    )
                    ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Link da foto",
                        hintStyle: TextStyle(color: Colors.grey[400])
                      ),
                    )
                  ),

                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Descrição",
                        hintStyle: TextStyle(color: Colors.grey[400])
                      ),
                    )
                    )
                     
                  
                  
                  

                ],
              )   
          ),
          // GENERO DO CAO
          Row (
            children: [           
                                 
Expanded(flex: 2,child: Switch( 
                            value: _enabled,
                            
                            onChanged: (check) {
                              setState(() {
                                _enabled = check;
                              });
                            }),),
  
 Expanded(flex: 2,child: RaisedButton(
                          disabledColor: Colors.black,
                          disabledTextColor: Colors.white,
                          onPressed: _enabled
                              ? null
                              : () {
                                  print("Clicked");
                                },
                         child: Center(
                          child: Text("Macho"),
                         )
                          
                        ), ),                

 Expanded(flex: 2, child: Switch(
                            value: _enabled,
                            onChanged: (check) {
                              setState(() {
                                _enabled = check;
                              });
                            }),),
                        
     Expanded(flex: 2, child:RaisedButton(
                          disabledColor: Colors.black,
                          disabledTextColor: Colors.white,
                          onPressed: _enabled
                              ? null
                              : () {
                                  print("Clicked");
                                },
                          child: Text("Fêmea"),
                          
                          
                        ),),                            
                                              
 ],                                             
                 
        ), // FIM DO GENERO DO CAO  

// DEFICIENCIA
          Row (
            children: [           
                                 
Expanded(flex: 1,child: Switch( 
                            value: _enabled,
                            
                            onChanged: (check) {
                              setState(() {
                                _enabled = check;
                              });
                            }),),
  
 Expanded(flex: 1,child: RaisedButton(
                          disabledColor: Colors.black,
                          disabledTextColor: Colors.white,
                          onPressed: _enabled
                              ? null
                              : () {
                                  print("Clicked");
                                },
                         child: Center(
                          child: Text("Deficiente"),
                         )
                          
                        ), ),                

 Expanded(flex: 1, child: Switch(
                            value: _enabled,
                            onChanged: (check) {
                              setState(() {
                                _enabled = check;
                              });
                            }),),
                        
     Expanded(flex: 1, child:RaisedButton(
                          disabledColor: Colors.black,
                          disabledTextColor: Colors.white,
                          onPressed: _enabled
                              ? null
                              : () {
                                  print("Clicked");
                                },
                          child: Text("Não"),
                          
                          
                        ),),                            
                                              
 ],                                             
                 
        ), // FIM DEFICIENCIA

// REMEDIO
          Row (
            children: [           
                                 
Expanded(flex: 2,child: Switch( 
                            value: _enabled,
                            
                            onChanged: (check) {
                              setState(() {
                                _enabled = check;
                              });
                            }),),
  
 Expanded(flex: 2,child: RaisedButton(
                          disabledColor: Colors.black,
                          disabledTextColor: Colors.white,
                          onPressed: _enabled
                              ? null
                              : () {
                                  print("Clicked");
                                },
                         child: Center(
                          child: Text("Toma remédio"),
                         )
                          
                        ), ),                

 Expanded(flex: 2, child: Switch(
                            value: _enabled,
                            onChanged: (check) {
                              setState(() {
                                _enabled = check;
                              });
                            }),),
                        
     Expanded(flex: 2, child:RaisedButton(
                          disabledColor: Colors.black,
                          disabledTextColor: Colors.white,
                          onPressed: _enabled
                              ? null
                              : () {
                                  print("Clicked");
                                },
                          child: Text("Não"),
                          
                          
                        ),),                            
                                              
 ],                                             
                 
        ), // FIM REMEDIO

          SizedBox(height: 30,),
          Container(
            
          height: 50,
          
          decoration: BoxDecoration( 
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(143, 148, 251, 1),
                Color.fromRGBO(143, 148, 251, .6),
              ]
            )
          ),

          child: Center(
            child: Text("Cadastrar", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          ),
          )
        ],
      )
      
      
      ),
      
    );
  }}

 