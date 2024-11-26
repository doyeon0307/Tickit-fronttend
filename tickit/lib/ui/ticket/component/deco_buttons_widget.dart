import 'package:flutter/material.dart';
import 'package:tickit/theme/ticket_typographies.dart';
import 'package:tickit/ui/common/component/custom_text_button.dart';
import 'package:tickit/ui/common/const/app_colors.dart';
import 'package:tickit/ui/ticket/component/custom_color_picker_dialog.dart';
import 'package:tickit/ui/ticket/const/ticket_mode.dart';

class DecoButtonsWidget extends StatelessWidget {
  final TicketMode mode;

  const DecoButtonsWidget({
    super.key,
    required this.mode,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16.0,
      children: [
        CustomTextButton(
          label: "필드 추가",
          onPressed: () {},
          textStyle: ticketStyle,
        ),
        CustomTextButton(
          label: "배경색",
          onPressed: () => showDialog(
            context: context,
            builder: (context) => CustomColorPickerDialog(
              mode: mode,
              isBackground: true,
              title: "배경색을 선택하세요",
            ),
          ),
          textStyle: ticketStyle,
        ),
        CustomTextButton(
          label: "글자색",
          onPressed: () => showDialog(
            context: context,
            builder: (context) => CustomColorPickerDialog(
              mode: mode,
              isBackground: false,
              title: "글자색을 선택하세요",
            ),
          ),
          textStyle: ticketStyle,
        ),
        CustomTextButton(
          label: "일정 불러오기",
          onPressed: () => showDialog(
            context: context,
            builder: (context) => Dialog(
              backgroundColor: AppColors.backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  16.0,
                ),
              ),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12.0,
                            vertical: 20.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "티켓으로 만들 일정을 선택하세요",
                                style: ticketStyle.copyWith(
                                  fontSize: 20.0,
                                ),
                              ),
                              const Divider(
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 48,
                                child: Row(
                                  children: [
                                    Text(
                                      "2024\n0829",
                                      style: ticketStyle,
                                    ),
                                    const SizedBox(
                                      width: 16.0,
                                    ),
                                    Text(
                                      "하데스타운",
                                      style: ticketStyle,
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(
                                color: Colors.grey,
                              ),
                              Container(
                                color: Colors.grey.withOpacity(0.2),
                                height: 48,
                                child: Row(
                                  children: [
                                    Text(
                                      "2024\n0829",
                                      style: ticketStyle,
                                    ),
                                    const SizedBox(
                                      width: 16.0,
                                    ),
                                    Text(
                                      "하데스타운",
                                      style: ticketStyle,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    CustomTextButton(
                      label: "선택",
                      onPressed: () {},
                      textStyle: ticketStyle,
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          textStyle: ticketStyle,
        ),
      ],
    );
  }
}