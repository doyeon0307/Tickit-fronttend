import 'package:flutter/material.dart';
import 'package:tickit/theme/typographies.dart';
import 'package:tickit/ui/common/const/app_colors.dart';

class TicketTextField extends StatelessWidget {
  final double fontSize;
  final String hintText;
  final TextInputType keyboardType;
  final TextAlign textAlign;
  final Color? color;
  final Function(String)? onChanged;
  final bool readOnly;
  final String? initialValue;

  const TicketTextField({
    super.key,
    this.fontSize = 16.0,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.textAlign = TextAlign.start,
    this.onChanged,
    this.color,
    this.readOnly = false,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      initialValue: initialValue,
      readOnly: readOnly,
      maxLines: null,
      keyboardType: keyboardType,
      style: Typo.gangwonR16.copyWith(
        fontSize: fontSize,
        color: color ?? AppColors.textColor,
      ),
      onChanged: onChanged,
      textAlign: textAlign,
      cursorColor: AppColors.textColor.withOpacity(0.6),
      cursorWidth: 1.5,
      cursorRadius: const Radius.circular(4.0),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        hintText: hintText,
        border: InputBorder.none,
        focusedBorder: readOnly
            ? InputBorder.none
            : UnderlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.textColor,
                ),
              ),
      ),
    );
  }
}
