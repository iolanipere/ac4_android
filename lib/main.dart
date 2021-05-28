import 'package:flutter/material.dart';

void main() => runApp(MyPicsApp());

class MyPicsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: 'GridView',debugShowCheckedModeBanner: false, home: new PaginaPrincipal(title: 'Galeria de Imagenes de Perez')); 
  }
}

class PaginaPrincipal extends StatefulWidget {
  final String title;
  @override
  PaginaPrincipal({this.title}) : super();
  @override
  State<StatefulWidget> createState() {
    return new PaginaPrincipalState();
  }
} 

class PaginaPrincipalState extends State<PaginaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new GridView.extent(
        maxCrossAxisExtent: 150.0,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        padding: const EdgeInsets.all(5.0),
        children: _buildGridTiles(18),
      ), 
    ); 
  } 
} 

List<Widget> _buildGridTiles(numberOfTiles) {
  List<Container> containers = new List<Container>.generate(numberOfTiles, (int index) {
    
    final imageName = index < 9 ? 'images/image0${index + 1}.jpg' : 'images/image${index + 1}.jpg';
    return new Container(
      child: new Image.asset(imageName, fit: BoxFit.fill),
    ); 
  } 
      ); 
  return containers;
} 