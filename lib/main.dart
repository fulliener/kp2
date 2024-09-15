import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Akperov EFBO-04-22',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isChecked = false;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar( backgroundColor: Colors.white, title: const Center(child: Padding(
        padding: EdgeInsets.only(bottom: 20.0),
        child: Text('Авторизация', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold
        ),
        ),
      )
        ,),
          toolbarHeight: 135,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          const Padding(
            padding: EdgeInsets.all(12.0),
            child: TextField(style: TextStyle(color: Colors.grey,
            ),
              decoration: InputDecoration(
              hintText: 'Логин',
              hintStyle: TextStyle(color: Colors.grey,
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 18.0),
              filled: true,
              fillColor: Color(0xFFEEEDF2),
            ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.all(12.0),
            child: TextField(style: TextStyle(color: Colors.grey,
            ),
              decoration: InputDecoration(
              hintText: 'Пароль',
              hintStyle: TextStyle(color: Colors.grey),
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 18.0),
              filled: true,
              fillColor: Color(0xFFEEEDF2),
            ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Checkbox(
                value: _isChecked,
                onChanged: (value) {
                  setState(() {
                    _isChecked = value!;
                  });
                },
                side: const BorderSide(color: Colors.grey, width: 2),
              ),
              const Text(
                'Запомнить меня',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
              onPressed:(){},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                backgroundColor: const Color(0xFF0B6BFC),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Text(
                "Войти",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
              onPressed:(){},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                backgroundColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: const BorderSide(
                    color: Color(0xFF0B6BFC),
                    width: 2,
                  ),
                ),
              ),
              child: const Text(
                "Регистрация",
                style: TextStyle(
                  color: Color(0xFF0B6BFC),
                  fontSize: 18,
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 35.0,
              child: TextButton(
                onPressed:(){},
                child: const Text("Восстановить пароль",
                  style: TextStyle(color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


