import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  //获取Key用来获取Form表单组件
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  late String userName;
  late String password;
  bool isShowPassWord = false;

  void login(){
    //读取当前的Form状态
    var loginForm = loginKey.currentState;
    //验证Form表单
    if(loginForm!.validate()){
      loginForm.save();
      print('userName: ' + userName + ' password: ' + password);
    }
  }

  void showPassWord() {
    setState(() {
      isShowPassWord = !isShowPassWord;
    });
  }
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Form表单示例',
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
                padding: const EdgeInsets.only(top: 100.0, bottom: 10.0),
                child: const Text(
                  'LOGO',
                  style: TextStyle(
                      color: Color.fromARGB(255, 53, 53, 53),
                      fontSize: 50.0
                  ),
                )
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: loginKey,
                autovalidate: true,
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color.fromARGB(255, 240, 240, 240),
                                  width: 1.0
                              )
                          )
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: '请输入手机号',
                          labelStyle: TextStyle( fontSize: 15.0, color: Color.fromARGB(255, 93, 93, 93)),
                          border: InputBorder.none,
                          // suffixIcon: new IconButton(
                          //   icon: new Icon(
                          //     Icons.close,
                          //     color: Color.fromARGB(255, 126, 126, 126),
                          //   ),
                          //   onPressed: () {

                          //   },
                          // ),
                        ),
                        keyboardType: TextInputType.phone,
                        onSaved: (value) {
                          userName = value!;
                        },
                        validator: (phone) {
                          // if(phone.length == 0){
                          //   return '请输入手机号';
                          // }
                        },
                        onFieldSubmitted: (value) {

                        },
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color.fromARGB(255, 240, 240, 240),
                                  width: 1.0
                              )
                          )
                      ),
                      child: TextFormField(
                        decoration:  InputDecoration(
                            labelText: '请输入密码',
                            labelStyle: const TextStyle( fontSize: 15.0, color: Color.fromARGB(255, 93, 93, 93)),
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              icon: Icon(
                                isShowPassWord ? Icons.visibility : Icons.visibility_off,
                                color: const Color.fromARGB(255, 126, 126, 126),
                              ),
                              onPressed: showPassWord,
                            )
                        ),
                        obscureText: !isShowPassWord,
                        onSaved: (value) {
                          password = value!;
                        },
                      ),
                    ),
                    Container(
                      height: 45.0,
                      margin: const EdgeInsets.only(top: 40.0),
                      child: SizedBox.expand(
                        child: RaisedButton(
                          onPressed: login,
                          color: const Color.fromARGB(255, 61, 203, 128),
                          child: const Text(
                            '登录',
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Color.fromARGB(255, 255, 255, 255)
                            ),
                          ),
                          shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(45.0)),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30.0),
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          Text(
                            '注册账号',
                            style: TextStyle(
                                fontSize: 13.0,
                                color: Color.fromARGB(255, 53, 53, 53)
                            ),
                          ),

                          Text(
                            '忘记密码？',
                            style: TextStyle(
                                fontSize: 13.0,
                                color: Color.fromARGB(255, 53, 53, 53)
                            ),
                          ),
                        ],
                      ) ,
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
