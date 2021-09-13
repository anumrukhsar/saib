
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWidget extends StatelessWidget {
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
                          height: 50,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Mobile Number',
                            labelText: 'Mobile Number',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B414D)),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B414D)),
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelStyle: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: Colors.yellow.shade600,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14),
                            ),
                            hintStyle: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: Color(0xFF2B414D),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14),
                            ),
                            prefixIcon: Container(height:28,margin: EdgeInsets.only(top: 25),child: Text('+966  | ')),
                            // prefixIcon:
                            //     Container(
                            //
                            //       decoration: BoxDecoration(
                            //           border: Border(
                            //             right: BorderSide(
                            //               width: 1,color: Colors.black45,
                            //             ),
                            //           )
                            //       ),
                            //       child:
                            //       TextField(
                            //         decoration: InputDecoration(
                            //           hintText: '+966',
                            //           hintStyle: GoogleFonts.montserrat(
                            //             textStyle: TextStyle(
                            //                 color:Colors.black45,
                            //             ),
                            //
                            //
                            //           ),
                            //           border:InputBorder.none
                            //
                            //         ),
                            //
                            //       ),
                            //     ),
                            // prefixIconConstraints: BoxConstraints(maxHeight: 20,maxWidth: 50)
                          ),
                          keyboardType: TextInputType.phone,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Password',
                            labelText: 'Password',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B414D)),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B414D)),
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelStyle: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: Colors.yellow.shade600,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14),
                            ),
                            hintStyle: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: Color(0xFF2B414D),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14),
                            ),
                          ),
                          obscureText: true,
                        ),
                        resetPasswordRemMeWidget,
                        SizedBox(height: 60,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 40.0),
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
  Widget resetPasswordRemMeWidget=Padding(
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
  );
  void onLogin(BuildContext context){
    Navigator.pushNamed(context, '/home');
  }
}
