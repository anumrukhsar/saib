
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_text_input_field.dart';

class LoginWidget extends StatelessWidget {
  var phoneNum;
  var password;
  @override
  Widget build(BuildContext context) {
    return

        Container(
          child:  Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Expanded(
                  flex: 3,
                  child: Image.asset(
                    'assets/images/img_logo_white.png',
                    fit: BoxFit.contain,
                    width: 300,
                  )),
              Expanded(
                  flex: 6,
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    child:
                    SingleChildScrollView(
                      child:
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        CustomTextInputField(tag:1,label: 'Mobile Number',hint: 'Enter Mobile Number',getResult:getTextFieldVal,error:'',inputType:TextInputType.phone,inputAction:TextInputAction.next),
                        CustomTextInputField(tag:2,label: 'Password',hint: 'Enter Password',getResult:getTextFieldVal,error:'',inputType:TextInputType.visiblePassword,inputAction:TextInputAction.done),

                        resetPasswordRemMeWidget(),
                        SizedBox(height: 30,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(onPressed: (){onLogin(context);}, child: Text('LOGIN',style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                          ),

                          ),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF2B414D)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    )
                                )
                            ),),
                        ),
                      ],
                    )),
                  ))
            ],
          ));
  }
  Widget resetPasswordRemMeWidget(){
    return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom:
                    BorderSide(color: Color(0xFF2B414D)))),
            child: Text(
              'Reset Password?',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    color: Color(0xFF2B414D),
                    fontWeight: FontWeight.normal,
                    fontSize: 14),
              ),
            ),
          ),
        ),
        Row(
          children: [
            Text(
              'Remember Me',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    color: Color(0xFF2B414D),
                    fontWeight: FontWeight.normal,
                    fontSize: 14),
              ),
            ),
            Checkbox(
              value: true,
              onChanged: (bool) {

              },
            ),
          ],
        )
      ],
    ),
  );}
  void onLogin(BuildContext context){
    Navigator.pushNamed(context, '/home');
  }

  void getTextFieldVal(int key,String result){
    switch(key){
      case 1:
        phoneNum=result;
        break;
      case 2:
        password=result;
        break;
    }
  }
}
