import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextInputField extends StatefulWidget {
  final tag;
  final label;
  final hint;
  final Function(int, String) getResult;
  final error;
  final inputType;
  final inputAction;

  const CustomTextInputField({
    required this.tag,
    required this.label,
    required this.hint,
    required this.getResult,
    required this.error,
    required this.inputType,
    required this.inputAction,
  });

  @override
  State<StatefulWidget> createState() {
    return CustomTextInputFieldState(
        tag: tag,
        label: label,
        hint: hint,
        getResult: getResult,
        error: error,
        inputType: inputType,
        inputAction: inputAction);
  }
}

class CustomTextInputFieldState extends State<CustomTextInputField> {
  final tag;
  final label;
  final hint;
  final getResult;
  final error;
  final inputType;
  final inputAction;
  var textEditingController = TextEditingController();

  CustomTextInputFieldState({
    required this.tag,
    required this.label,
    required this.hint,
    required this.getResult,
    required this.error,
    required this.inputType,
    required this.inputAction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                  color: Colors.yellow.shade600,
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            ),
          ),
          inputType == TextInputType.phone
              ? buildPhoneInputTextField()
              : buildBasicTextField(),
          SizedBox(
            height: 1,
            child: Container(
              color: Color(0xFF2B414D),
            ),
          ),
          Text(
            error,
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.normal,
                  fontSize: 14),
            ),
          )
        ],
      ),
    );
  }

  Widget buildBasicTextField() {
    getResult(tag, textEditingController.text);

    return TextFormField(
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: GoogleFonts.montserrat(
          textStyle: TextStyle(
              color: Color(0xFF2B414D),
              fontWeight: FontWeight.normal,
              fontSize: 14),
        ),
        border: InputBorder.none,
      ),
      keyboardType: inputType,
      textInputAction: inputAction,
      obscureText: (tag == 2),
    );
  }

  Widget buildPhoneInputTextField() {
    var countryCodeEditingController = TextEditingController();
    getResult(
        tag, countryCodeEditingController.text + textEditingController.text);

    return Row(
      children: [
        Expanded(
          flex: 1,
          child: TextFormField(
            controller: countryCodeEditingController,
            decoration: InputDecoration(
              hintText: '+966',
              hintStyle: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    color: Color(0xFF2B414D),
                    fontWeight: FontWeight.normal,
                    fontSize: 14),
              ),
              border: InputBorder.none,
            ),
            keyboardType: inputType,
            textInputAction: inputAction,
          ),
        ),
        Container(
          width: 1,
          height: 14,
          color: Color(0xFF2B414D),
        ),
        Expanded(
          flex: 6,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              controller: textEditingController,
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      color: Color(0xFF2B414D),
                      fontWeight: FontWeight.normal,
                      fontSize: 14),
                ),
                border: InputBorder.none,
              ),
              keyboardType: inputType,
              textInputAction: inputAction,
            ),
          ),
        ),
      ],
    );
  }
}
