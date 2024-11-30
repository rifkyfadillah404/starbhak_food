import 'package:flutter/material.dart';
import 'package:widget_text/pages/HomePage.dart';
import 'package:widget_text/widgets/BarBawah.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


const supabaseUrl = 'https://jzdymkukawxswrskmwyb.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imp6ZHlta3VrYXd4c3dyc2ttd3liIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzA5NjYyODYsImV4cCI6MjA0NjU0MjI4Nn0.KNveYuokpVUIVypNEb3fLUSL8lTA9utv0RaMN9DEEMk';

Future<void> main() async {
  await Supabase.initialize(url: supabaseUrl, anonKey:  supabaseKey);
  runApp(MyApp());
}



class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Starbhak Mart',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white10
      ),
      routes: {
        '/': (context) =>   BarBawah(),
      },

    );
  }
}