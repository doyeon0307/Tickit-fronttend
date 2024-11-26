import 'package:flutter/material.dart';
import 'package:tickit/theme/ticket_typographies.dart';

class EditButtonsWidget extends StatelessWidget {
  final VoidCallback onTapDelete;
  final VoidCallback onTapSaveAsImage;
  final VoidCallback onTapEdit;

  const EditButtonsWidget({
    super.key,
    required this.onTapDelete,
    required this.onTapSaveAsImage,
    required this.onTapEdit,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        TextButton(
            onPressed: () => onTapDelete,
            child: Text(
              "삭제하기",
              style: ticketStyle,
            )),
        TextButton(
            onPressed: onTapSaveAsImage,
            child: Text(
              "사진으로 저장하기",
              style: ticketStyle,
            )),
        TextButton(
            onPressed: onTapEdit,
            child: Text(
              "수정하기",
              style: ticketStyle,
            ))
      ],
    );
  }
}