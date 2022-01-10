import 'package:flutter/material.dart';
import 'package:untitled1/signIn.dart';
main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool hide = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body:SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40,left: 40),
              child: Text("Welcome \nBack",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.w300),),
            )
 ,         Container(
              padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.45),
              width: double.infinity,
              height: 450,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(50))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Sign In",style: TextStyle(fontSize: 45,fontWeight: FontWeight.w400),),
                  SizedBox(height: 15,),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "E-mail",

                    ),
                  ),
                  SizedBox(height: 15,),
                  TextField(
                    obscureText: hide,
                    decoration: InputDecoration(
                      hintText: "Password",
suffixIcon:IconButton(onPressed: (){
  setState(() {
    hide = !hide;
  });
},icon:hide?Icon(Icons.visibility_off):Icon(Icons.visibility),)
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed: (){},child: Text("Forget?"),),
                  ),
                  Center(
                    child: ElevatedButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.deepOrangeAccent,
                          padding: EdgeInsets.symmetric(vertical: 5,horizontal: 60)
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                        }, child: Text("Sign In")),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account"),
                      TextButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUpPage()));
                      }, child: Text("Sign Up?"))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Home Page"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
            body: Center(child: Text("Welcome To Home Page",style: TextStyle(fontSize: 30),),),
    );
  }
}
