import 'package:chatter_chat_app/core/utils/form_validators.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.textStyle,
    this.cursorColor,
    required this.label,
    this.labelStyle,
    required this.filled,
    this.fillColor,
    this.focusedBorderColor,
    this.enabledBorderColor,
    required this.suffixIcon,
    this.maxLines,
    this.isEmail,
    this.isUserName,
    this.onChanged,
    this.borderRadius,
  });
  final TextStyle textStyle;
  final int? maxLines;
  final Color? cursorColor;
  final String label;
  final TextStyle? labelStyle;
  final bool filled;
  final Color? fillColor;
  final Color? focusedBorderColor;
  final Color? enabledBorderColor;
  final IconData? suffixIcon;
  final bool? isEmail;
  final bool? isUserName;
  final void Function(String)? onChanged;
  final double? borderRadius;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      onChanged: onChanged,
      validator: (value) {
        if (isEmail ?? false) {
          return FormValidators().emailValidator(value);
        } else if (isUserName ?? false) {
          return FormValidators().userNameValidator(value);
        } else {
          return null;
        }
      },
      cursorColor: cursorColor,
      style: textStyle,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        contentPadding: const EdgeInsets.fromLTRB(32, 16, 8, 16),
        label: Text(label),
        labelStyle: labelStyle,
        filled: filled,
        fillColor: fillColor,
        enabledBorder: enabledBorderColor != null
            ? OutlineInputBorder(
                borderSide: BorderSide(
                    color: enabledBorderColor ?? Colors.transparent,
                    width: 0.4),
                borderRadius:
                    BorderRadius.all(Radius.circular(borderRadius ?? 16)))
            : null,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        focusedBorder: focusedBorderColor != null
            ? OutlineInputBorder(
                borderSide: BorderSide(color: focusedBorderColor!, width: 0.5),
                borderRadius:
                    BorderRadius.all(Radius.circular(borderRadius ?? 16)))
            : null,
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red, width: 0.5),
            borderRadius:
                BorderRadius.all(Radius.circular(borderRadius ?? 16))),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red, width: 0.5),
            borderRadius:
                BorderRadius.all(Radius.circular(borderRadius ?? 16))),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Icon(
            suffixIcon,
            color: Colors.black.withOpacity(.55),
          ),
        ),
      ),
    );
  }
}
