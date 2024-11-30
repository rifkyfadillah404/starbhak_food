import 'package:flutter/material.dart';
import 'package:widget_text/widgets/AllFood.dart';
import 'package:widget_text/widgets/AppBarWidget.dart';
import 'package:widget_text/widgets/CategoriesWidget.dart';
import 'package:widget_text/widgets/PopularItemsWidget.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


final supabase = Supabase.instance.client;

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Future<List<dynamic>> fetchData() async {
    final response = await supabase.from('makan').select('*');
    return response as List<dynamic>;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //AppBar
          Appbarwidget(),

          Padding(
            padding: EdgeInsets.only(top: 20, right: 250, ),
            child: Text(
              "Catagories",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              )
              ),
            ),

          //Kategori
          CategoriesWidget(),

          //AllFood
          Padding(
            padding: EdgeInsets.only(top: 20, right: 250, ),
            child: Text(
              "All food",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )
              ),
            ),
          
          Expanded(
            child: SingleChildScrollView(
              child: Allfood(),
            ),
          ),
          
        ],
      ),
    );
  }
}