import 'package:flutter/material.dart';
import 'package:tickit/theme/typographies.dart';
import 'package:tickit/ui/common/const/mode.dart';
import 'package:tickit/ui/ticket/component/ticket_text_button.dart';
import 'package:tickit/ui/common/const/app_colors.dart';
import 'package:tickit/ui/ticket/component/custom_color_picker_dialog.dart';

class DecoButtonsWidget extends StatelessWidget {
  final TicketMode mode;
  final VoidCallback onTapAddField;
  final Color backgroundColor;
  final Color foregroundColor;
  final Function(Color) onBackgroundColorChanged;
  final Function(Color) onForegroundColorChanged;

  const DecoButtonsWidget({
    super.key,
    required this.mode,
    required this.onTapAddField,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.onBackgroundColorChanged,
    required this.onForegroundColorChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16.0,
      children: [
        TicketTextButton(
          label: "필드 추가",
          onPressed: onTapAddField,
          textStyle: Typo.gangwonR16.copyWith(
            color: AppColors.textColor,
          ),
        ),
        TicketTextButton(
          label: "배경색",
          onPressed: () => showDialog(
            context: context,
            builder: (context) => CustomColorPickerDialog(
              title: "배경색을 선택하세요",
              color: backgroundColor,
              onColorChanged: onBackgroundColorChanged,
            ),
          ),
          textStyle: Typo.gangwonR16.copyWith(
            color: AppColors.textColor,
          ),
        ),
        TicketTextButton(
          label: "글자색",
          onPressed: () => showDialog(
            context: context,
            builder: (context) => CustomColorPickerDialog(
              title: "글자색을 선택하세요",
              color: foregroundColor,
              onColorChanged: onForegroundColorChanged,
            ),
          ),
          textStyle: Typo.gangwonR16.copyWith(
            color: AppColors.textColor,
          ),
        ),
        TicketTextButton(
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
                                style: Typo.gangwonR20.copyWith(
                                  color: AppColors.textColor,
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
                                      style: Typo.gangwonR16.copyWith(
                                        color: AppColors.textColor,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 16.0,
                                    ),
                                    Text(
                                      "하데스타운",
                                      style: Typo.gangwonR16.copyWith(
                                        color: AppColors.textColor,
                                      ),
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
                                      style: Typo.gangwonR16.copyWith(
                                        color: AppColors.textColor,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 16.0,
                                    ),
                                    Text(
                                      "하데스타운",
                                      style: Typo.gangwonR16.copyWith(
                                        color: AppColors.textColor,
                                      ),
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
                    TicketTextButton(
                      label: "선택",
                      onPressed: () {},
                      textStyle: Typo.gangwonR16.copyWith(
                        color: AppColors.textColor,
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          textStyle: Typo.gangwonR16.copyWith(
            color: AppColors.textColor,
          ),
        ),
      ],
    );
  }
}