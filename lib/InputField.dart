import 'package:flutter/material.dart';

class InputFieldMain extends StatefulWidget {
  InputField createState()=> InputField();
}
class InputField extends State<InputFieldMain> {

  bool _secureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            child: Text(
              "Username", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
          ),
        ),
        Container(
          child: TextField(
            decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.account_circle_sharp,
                color: Colors.black,
              ),
              hintText: "Sandra@gmail.com",
              hintStyle: TextStyle(color: Colors.grey[350]),
            ),
          ),
        ),
        SizedBox(height: 50,),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            child: Text("Password",
              style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
          ),
        ),
        Container(
          child: TextField(
            decoration: InputDecoration(
              suffixIcon: IconButton(
                color: Colors.black,
                icon: Icon(_secureText ? Icons.lock:Icons.remove_red_eye),
                onPressed: (){
                  setState(() {
                    _secureText = !_secureText;
                  });
                },
              ),
              hintText: "Sandra123",
              hintStyle: TextStyle(color: Colors.grey[350]),
            ),
            obscureText: _secureText,
          ),
        )
      ],
    );
  }
}
