import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/material/input_decorator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Artists Asylum'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container( 
                child: Image.asset('assets/Museo.jpg',width: 200,),
            ),
            SizedBox(height: 20,),
            Container( 
                child:  const Text ('INICIAR SESIÒN', textDirection: TextDirection.ltr,)
            ),
            Container(
                margin: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Correo Electrònico'),
                  onChanged: (text) {
                    print('$text');
                  },
                )),
            Container(
                margin: const EdgeInsets.all(10.0),
                child: TextField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Clave'),
                  onChanged: (text) {
                    print('$text');
                  },
                )),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Feed()));
                },
                child: const Text('ENTRAR')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondPage()));
                },
                child: const Text('REGISTRARSE'))
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Artists Asylum')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              Container( 
                child: Image.asset('assets/Museo.jpg',width: 200,),
              ),
              SizedBox(height: 20,),
              Container( 
                child: const Text ('CREACIÒN DE USUARIO', textDirection: TextDirection.ltr,)
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Usuario'),
                  onChanged: (text) {
                    print('$text');
                  },
                )),
            Container(
                margin: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Correo Electrònico'),
                  onChanged: (text) {
                    print('$text');
                  },
                )),
            Container(
                margin: const EdgeInsets.all(10.0),
                child: TextField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Clave'),
                  onChanged: (text) {
                    print('$text');
                  },
                )),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyApp()));
                },
                child: const Text('REGISTRAR')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyApp()));
                },
                child: const Text('ENTRAR')),
          ])));
  }
}



class Feed extends StatelessWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Artists Asylum')),
      body: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 20.0),
         child: Column(
      
     crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             SizedBox(height: 5,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 IconButton(onPressed:() {
                   Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Actividad()));
                }, icon: Icon(Icons.local_activity), iconSize: 30, color: Colors.blue,),
                 IconButton(onPressed:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Feed()));
                },icon: Icon(Icons.public),iconSize: 30,color: Colors.blue,),
                 IconButton(onPressed:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Buscar()));
                }, icon: Icon(Icons.search),iconSize: 30,color: Colors.blue,),
                 IconButton(onPressed:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Notificaciones()));
                }, icon: Icon(Icons.notifications),iconSize: 30,color: Colors.blue,), 
               ],
             ),
             SizedBox(height: 0,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Text('ACTIVIDADES', style: TextStyle(fontSize: 9, color: Colors.blue), ),
                 Text('PUBLICACIONES', style: TextStyle(fontSize: 9, color: Colors.blue),),
                 Text('BUSCAR', style: TextStyle(fontSize: 9, color: Colors.blue),),
                 Text('NOTIFICACIONES', style: TextStyle(fontSize: 9, color: Colors.blue),),
               ],
             ),

           /* SizedBox(height: 30,),
              Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Image.asset('assets/foto.jpg',width: 40,),
               ],
              ),*/
            
            SizedBox(height: 20,),
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_search, size:18 ),
                  hintText: 'Publicar',
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 30,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Image.asset('assets/foto2.jpg',width: 40,), 
                Text('Pepito Perez', style: TextStyle(fontSize: 14, color: Colors.black),),  
                ],), SizedBox(height: 5,),
              Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                Text('Los restauradores se encargan de garantizar que...', style: TextStyle(fontSize: 10, color: Colors.black),), 
                ],),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 IconButton(onPressed:() {} , icon: Icon(Icons.face_retouching_natural), iconSize: 20, color: Colors.blue,),
                 IconButton(onPressed:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Comentar()));
                },icon: Icon(Icons.comment),iconSize: 20,color: Colors.blue,),
               ],
             ),
             SizedBox(height: 0,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Text('ME GUSTA', style: TextStyle(fontSize: 9, color: Colors.blue), ),
                 Text('COMENTAR', style: TextStyle(fontSize: 9, color: Colors.blue),),
               ],
             ),
              SizedBox(height: 10,),
                Column(
                children:[ Divider( 
                  height:60,
                  thickness: 3,
                  color: Colors.blue,
                  ),
                  ],),
            SizedBox(height: 10,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Image.asset('assets/foto3.jpg',width: 40,), 
                Text('Julia Villamizar', style: TextStyle(fontSize: 14, color: Colors.black),),  
                ],), SizedBox(height: 5,),
                Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                Text('Los restauradores se encargan de garantizar que...', style: TextStyle(fontSize: 10, color: Colors.black),), 
                ],),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 IconButton(onPressed:() {} , icon: Icon(Icons.face_retouching_natural), iconSize: 20, color: Colors.blue,),
                IconButton(onPressed:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Comentar()));
                },icon: Icon(Icons.comment),iconSize: 20,color: Colors.blue,),
               ],
             ),
             SizedBox(height: 0,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Text('ME GUSTA', style: TextStyle(fontSize: 9, color: Colors.blue), ),
                 Text('COMENTAR', style: TextStyle(fontSize: 9, color: Colors.blue),),
               ],
             ),
            SizedBox(height: 10,),
                Column(
                children:[ Divider( 
                  height:60,
                  thickness: 3,
                  color: Colors.blue,
                  ),
                  ],),
            ],
         ),),
    ); }}
  

  class Actividad extends StatelessWidget {
  const Actividad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Artists Asylum')),
      body: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 20.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             SizedBox(height: 5,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 IconButton(onPressed:() {
                   Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Actividad()));
                }, icon: Icon(Icons.local_activity), iconSize: 30, color: Colors.blue,),
                 IconButton(onPressed:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Feed()));
                },icon: Icon(Icons.public),iconSize: 30,color: Colors.blue,),
                 IconButton(onPressed:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Buscar()));
                }, icon: Icon(Icons.search),iconSize: 30,color: Colors.blue,),
                 IconButton(onPressed:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Notificaciones()));
                }, icon: Icon(Icons.notifications),iconSize: 30,color: Colors.blue,), 
               ],
             ),
             SizedBox(height: 0,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Text('ACTIVIDADES', style: TextStyle(fontSize: 9, color: Colors.blue), ),
                 Text('PUBLICACIONES', style: TextStyle(fontSize: 9, color: Colors.blue),),
                 Text('BUSCAR', style: TextStyle(fontSize: 9, color: Colors.blue),),
                 Text('NOTIFICACIONES', style: TextStyle(fontSize: 9, color: Colors.blue),),
               ],
             ),
            SizedBox(height: 0,),
                Column(
                children:[ Divider( 
                  height:60,
                  thickness: 3,
                  color: Colors.blue,
                  ),
                  ],),
            SizedBox(height: 0,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Text('Restauraciòn', style: TextStyle(fontSize: 15, color: Colors.blue),),
                 IconButton(onPressed:() {} , icon: Icon(Icons.location_pin), iconSize: 20,color: Colors.blue,), 
                  
                ],),
              Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Image.asset('assets/restauracion.jpg',width: 150,), 
                 Text('Obra de arte', style: TextStyle(fontSize: 12, color: Colors.blue),),
                  
                ],),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 IconButton(onPressed:() {} , icon: Icon(Icons.face_retouching_natural), iconSize: 20, color: Colors.blue,),
                 IconButton(onPressed:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Comentar()));
                },icon: Icon(Icons.comment),iconSize: 20,color: Colors.blue,),
                 IconButton(onPressed:() {} , icon: Icon(Icons.share), iconSize: 20,color: Colors.blue,),
               ],
             ),

             SizedBox(height: 0,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Text('ME GUSTA', style: TextStyle(fontSize: 9, color: Colors.blue), ),
                 Text('COMENTAR', style: TextStyle(fontSize: 9, color: Colors.blue),),
                 Text('COMPARTIR', style: TextStyle(fontSize: 9, color: Colors.blue),),
               ],
             ),
            SizedBox(height: 0,),
                Column(
                children:[ Divider( 
                  height:60,
                  thickness: 3,
                  color: Colors.blue,
                  ),
                  ],),
           SizedBox(height: 5,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Text('Exposiciòn', style: TextStyle(fontSize: 15, color: Colors.blue),),
                 IconButton(onPressed:() {} , icon: Icon(Icons.location_pin), iconSize: 20,color: Colors.blue,), 
                  
                ],),
              Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Image.asset('assets/exposi.jpg',width: 150,), 
                 Text('Museo Arte Moderno', style: TextStyle(fontSize: 12, color: Colors.blue),),
                  
                ],),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 IconButton(onPressed:() {} , icon: Icon(Icons.face_retouching_natural), iconSize: 20, color: Colors.blue,),
                IconButton(onPressed:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Comentar()));
                },icon: Icon(Icons.comment),iconSize: 20,color: Colors.blue,),
                 IconButton(onPressed:() {} , icon: Icon(Icons.share), iconSize: 20,color: Colors.blue,),
               ],
             ),

             SizedBox(height: 0,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Text('ME GUSTA', style: TextStyle(fontSize: 9, color: Colors.blue), ),
                 Text('COMENTAR', style: TextStyle(fontSize: 9, color: Colors.blue),),
                 Text('COMPARTIR', style: TextStyle(fontSize: 9, color: Colors.blue),),
               ],
             ),
            ],
         ),),
    ); }}


class Buscar extends StatelessWidget {
  const Buscar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Artists Asylum')),
      body: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 20.0),
         child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             SizedBox(height: 5,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 IconButton(onPressed:() {
                   Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Actividad()));
                }, icon: Icon(Icons.local_activity), iconSize: 30, color: Colors.blue,),
                 IconButton(onPressed:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Feed()));
                },icon: Icon(Icons.public),iconSize: 30,color: Colors.blue,),
                 IconButton(onPressed:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Buscar()));
                }, icon: Icon(Icons.search),iconSize: 30,color: Colors.blue,),
                 IconButton(onPressed:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Notificaciones()));
                }, icon: Icon(Icons.notifications),iconSize: 30,color: Colors.blue,), 
               ],
             ),
             SizedBox(height: 0,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Text('ACTIVIDADES', style: TextStyle(fontSize: 9, color: Colors.blue), ),
                 Text('PUBLICACIONES', style: TextStyle(fontSize: 9, color: Colors.blue),),
                 Text('BUSCAR', style: TextStyle(fontSize: 9, color: Colors.blue),),
                 Text('NOTIFICACIONES', style: TextStyle(fontSize: 9, color: Colors.blue),),
               ],
             ),
            SizedBox(height: 20,),
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, size:18 ),
                  hintText: 'Buscar',
                  border: OutlineInputBorder( borderRadius: BorderRadius.circular(20))
              ),
            ),
            SizedBox(height: 20,),
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Text('Bùsquedas Recientes', style: TextStyle(fontSize: 14, color: Colors.black), ),
               ],
             ), 
          SizedBox(height: 20,),
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                  hintText: 'La Gioconda',
                  prefixIcon: Icon(Icons.close, size:18 ),
              ),
            ),
          SizedBox(height: 20,),
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                  hintText: 'Las Mentiras',
                  prefixIcon: Icon(Icons.close, size:18 ),
              ),
            ),  
            ],
         ),),
    ); }}


class Notificaciones extends StatelessWidget {
  const Notificaciones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Artists Asylum')),
      body: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 20.0),
         child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             SizedBox(height: 5,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 IconButton(onPressed:() {
                   Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Actividad()));
                }, icon: Icon(Icons.local_activity), iconSize: 30, color: Colors.blue,),
                 IconButton(onPressed:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Feed()));
                },icon: Icon(Icons.public),iconSize: 30,color: Colors.blue,),
                 IconButton(onPressed:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Buscar()));
                }, icon: Icon(Icons.search),iconSize: 30,color: Colors.blue,),
                 IconButton(onPressed:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Notificaciones()));
                }, icon: Icon(Icons.notifications),iconSize: 30,color: Colors.blue,), 
               ],
             ),
             SizedBox(height: 0,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Text('ACTIVIDADES', style: TextStyle(fontSize: 9, color: Colors.blue), ),
                 Text('PUBLICACIONES', style: TextStyle(fontSize: 9, color: Colors.blue),),
                 Text('BUSCAR', style: TextStyle(fontSize: 9, color: Colors.blue),),
                 Text('NOTIFICACIONES', style: TextStyle(fontSize: 9, color: Colors.blue),),
               ],
             ),
            SizedBox(height: 20,),
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, size:18 ),
                  hintText: 'NOTIFICACIONES',
                  border: OutlineInputBorder( borderRadius: BorderRadius.circular(20))
              ),
            ),
            SizedBox(height: 30,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Image.asset('assets/foto.jpg',width: 80,),
                 Text('Pepito Perez', style: TextStyle(fontSize: 15, color: Colors.blue),),  
                ],),
            SizedBox(height: 10,),
              Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Text('20-Noviembre-2021     1:30 p.m.', style: TextStyle(fontSize: 12, color: Colors.blue),), 
                ],),
              SizedBox(height: 0,),
                Column(
                children:[ Divider( 
                  height:60,
                  thickness: 3,
                  color: Colors.blue,
                  ),
                  ],),
            SizedBox(height: 0,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Image.asset('assets/foto2.jpg',width: 80,),
                 Text('Julia Villamizar', style: TextStyle(fontSize: 15, color: Colors.blue),),  
                ],),
            SizedBox(height: 10,),
              Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Text('19-Noviembre-2021     3:05 p.m.', style: TextStyle(fontSize: 12, color: Colors.blue),), 
                ],),
              SizedBox(height: 0,),
                Column(
                children:[ Divider( 
                  height:60,
                  thickness: 3,
                  color: Colors.blue,
                  ),
                  ],),
            ],
         ),),
    ); }}


class Comentar extends StatelessWidget {
  const Comentar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Artists Asylum')),
      body: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 20.0),
         child:  Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
               SizedBox(height: 10,),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(onPressed:() {} , icon: Icon(Icons.face_retouching_natural), iconSize: 30, color: Colors.black,), 
                    Text('134', style: TextStyle(fontSize: 17, color: Colors.black),),
                    IconButton(onPressed:() {} , icon: Icon(Icons.arrow_right_outlined), iconSize: 30, color: Colors.black,),
              
                    ],),
              SizedBox(height: 10,),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('MAS RELEVANTES', style: TextStyle(fontSize: 14, color: Colors.black),),
                    IconButton(onPressed:() {} , icon: Icon(Icons.arrow_drop_down_outlined), iconSize: 30, color: Colors.black,),
                    ],),
              SizedBox(height: 0,),
                Column(
                children:[ Divider( 
                  height:50,
                  thickness: 3,
                  color: Colors.blue,
                  ),
                  ],),
               SizedBox(height: 0,),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/foto.jpg',width: 50,), 
                    Text('Pepito Perez', style: TextStyle(fontSize: 12, color: Colors.blue),),
              
                    ],),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Excelente Obra de Arte...', style: TextStyle(fontSize: 12, color: Colors.blue),),
                      
                    ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(onPressed:() {} , icon: Icon(Icons.watch), iconSize: 20, color: Colors.blue,),
                    IconButton(onPressed:() {} , icon: Icon(Icons.face),iconSize: 20,color: Colors.blue,),
                    IconButton(onPressed:() {} , icon: Icon(Icons.comment), iconSize: 20,color: Colors.blue,),
                  ],
                ),

                SizedBox(height: 0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('34 min', style: TextStyle(fontSize: 9, color: Colors.blue), ),
                    Text('Me gusta', style: TextStyle(fontSize: 9, color: Colors.blue),),
                    Text('Responder', style: TextStyle(fontSize: 9, color: Colors.blue),),
                ],
                ),

              SizedBox(height: 0,),
              Column(
              children:[ Divider( 
                height:50,
                thickness: 3,
                color: Colors.blue,
                ),
                ],),
            ],
         ),),
    ); }}