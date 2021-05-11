import 'package:flutter/material.dart';

void main() => runApp(MiFotoApp());

class MiFotoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "- Ejemplo -",
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity, //finvisualdensity
      ), //fin theme
      home: PaginaInicio(),
    ); //fin del returnmaterialapp
  } //finbuildmifotoapp
} //finclasefoto

class PaginaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agregando bordes App Juan Lopez"),
        centerTitle: true,
      ), //fin appbar
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),

              Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.yellow[100],
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.black,
                    width: 5,
                  ),
                ),
                child: Center(
                  child: Text(
                    '_- Juan Lopez Gtz -_',
                    style: TextStyle(fontSize: 18),
                  ),
                ), //fin child center
              ), //fin de el container nombre
              SizedBox(
                height: 50,
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  image: DecorationImage(image: NetworkImage("https://github.com/JuanLopezGtz/Imagenes/blob/main/ICON.jpg?raw=true"), alignment: Alignment.topCenter),
                  border: Border(
                    top: BorderSide(
                      color: Colors.black,
                      width: 5.0,
                    ),
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 5.0,
                    ),
                  ),
                ), //fin de el decoration box
              ), //fin de el container foto
              SizedBox(
                height: 50,
              ),
              Container(
                height: 100,
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 5.0,
                      ),
                    ),
                    //! Change the Focused Border
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 5.0,
                      ),
                    ),
                  ),
                ),
              ), //fin de el container del texto del grupo
            ], //fin del children
          ), //fin de la columna child
        ), //fin del bodycenter
      ), //finsinglechild
    ); //fin scaffold
  } //fin build widget pagina de inicio
} //fin clase pagina de inicio
