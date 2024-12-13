import 'package:boilerplate/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(25),
              child: Image.asset('lib/images/nike.webp', height: 240,),
              ),
          
              SizedBox(height: 48,),
              Text('Just Do It', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          
              SizedBox(
                height: 48,
              ),
              Text(
                ' Made with custom quality',
                style: TextStyle( fontSize: 16,),
                textAlign: TextAlign.center,
              ),

              SizedBox(
                height: 48,
              ),
              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage())),
                child: Container(decoration:BoxDecoration(color: Colors.grey[900], borderRadius: BorderRadius.circular(12)), 
                padding: EdgeInsets.all(25),
                child: Center(child: Text('Shop Now', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),),),
              )
            ],
          ),
        ),
      ),
    );
  }
}