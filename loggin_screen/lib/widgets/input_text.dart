import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputText extends StatefulWidget {
  final String? label;
  final String? hint;
  final Icon? icon;
  final bool? obscureText;
  final TextInputType? keyboard;
  final void Function(String data)? onChangued;
  final String? Function(String? data)?
      validator; // ? es un parametro para que sea opcional

  InputText({
    Key? key,
    this.label = '',
    this.hint = '',
    this.icon,
    this.obscureText = false,
    this.keyboard = TextInputType.text,
    this.onChangued,
    this.validator,
  }) : super(key: key);

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(20.0)),
      child: TextFormField(
        keyboardType: widget.keyboard,
        obscureText: widget.obscureText!,
        onChanged: widget.onChangued,
        validator: widget.validator,
        decoration: InputDecoration(
          labelText: widget.label,
          labelStyle: TextStyle(
            height: 1,
            fontSize: 20,
            color: Colors.black54,
            fontFamily: GoogleFonts.acme(
              fontSize: 20.0,
            ).fontFamily,
          ),
          hintText: widget.hint,
          hintStyle: TextStyle(
            color: Colors.black54,
            fontFamily: GoogleFonts.acme(
              fontSize: 20.0,
            ).fontFamily,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          suffixIcon: widget.icon,
        ),
      ),
    );
  }
}
