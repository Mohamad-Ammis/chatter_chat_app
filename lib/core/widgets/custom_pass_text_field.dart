import 'package:chatter_chat_app/core/utils/form_validators.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomPasswordTextField extends StatefulWidget {
  const CustomPasswordTextField(
      {super.key,
      required this.textStyle,
      this.cursorColor,
      required this.label,
      this.labelStyle,
      required this.filled,
      this.fillColor,
      this.focusedBorderColor,
      this.onChanged,
       this.enabledBorderColor,
      this.suffixIconColor,
      this.borderRadius});
  final TextStyle textStyle;
  final Color? cursorColor;
  final String label;
  final TextStyle? labelStyle;
  final bool? filled;
  final Color? fillColor;
  final Color? focusedBorderColor;
  final Color? enabledBorderColor;
  final Color? suffixIconColor;
  final double? borderRadius;
  final void Function(String)? onChanged;
  @override
  State<CustomPasswordTextField> createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  bool obscureText = true;
  IconData suffixIcon = FontAwesomeIcons.eyeSlash;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      validator: (value) {
        return FormValidators().strongPasswordValidator(value);
      },
      obscureText: obscureText,
      cursorColor: widget.cursorColor,
      style: widget.textStyle,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(32, 16, 8, 16),
        label: Text(widget.label),
        labelStyle: widget.labelStyle,
        filled: widget.filled,
        fillColor: widget.fillColor,
        enabledBorder:widget.enabledBorderColor!=null? OutlineInputBorder(
            borderSide:
                BorderSide(color: widget.enabledBorderColor??Colors.transparent, width: 0.4),
            borderRadius:
                BorderRadius.all(Radius.circular(widget.borderRadius ?? 16))):null,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        focusedBorder:widget.focusedBorderColor!=null? OutlineInputBorder(
            borderSide: BorderSide(
                color: widget.focusedBorderColor ?? Colors.transparent,
                width: 0.5),
            borderRadius:
                BorderRadius.all(Radius.circular(widget.borderRadius ?? 16))):null,
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red, width: 0.5),
            borderRadius:
                BorderRadius.all(Radius.circular(widget.borderRadius ?? 16))),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red, width: 0.5),
            borderRadius:
                BorderRadius.all(Radius.circular(widget.borderRadius ?? 16))),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                obscureText = (!obscureText);
                if (obscureText) {
                  suffixIcon = FontAwesomeIcons.eyeSlash;
                } else {
                  suffixIcon = FontAwesomeIcons.eye;
                }
              });
            },
            child: Icon(
              suffixIcon,
              size: 20,
              color: widget.suffixIconColor ?? Colors.black.withValues(alpha:  0.5),
            ),
          ),
        ),
      ),
    );
  }
}
