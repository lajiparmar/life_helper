import 'package:life_helper/app_import.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    required this.controller,
    super.key,
    this.fillColor,
    this.hintText,
    this.borderColor,
    this.textFieldHeight,
    this.prefixIcon,
    this.textColor,
    this.cursorColor,
    this.action,
  });
  final TextEditingController controller;
  final TextInputAction? action;
  final String? hintText;
  final Color? fillColor;
  final Color? borderColor;
  final Color? textColor;
  final Color? cursorColor;
  final String? prefixIcon;
  final double? textFieldHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: textFieldHeight ?? 45,
      child: TextField(
        controller: controller,
        textInputAction: action,
        cursorColor: cursorColor ?? ColorConstant.colorBlack,
        style: TextStyle(color: textColor),
        decoration: InputDecoration(
          hintText: hintText,
          fillColor: fillColor,
          prefix: prefixIcon != null
              ? Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: AppImage(
                    image: prefixIcon!,
                    height: 17,
                    width: 17,
                  ),
                )
              : const SizedBox(),
          contentPadding: const EdgeInsets.only(top: 0, left: 10),
          hintStyle: TextStyle(color: textColor),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(
                width: 1,
                color: borderColor ?? ColorConstant.colorGreyScale100),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(
                width: 1,
                color: borderColor ?? ColorConstant.colorGreyScale100),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(
                width: 1,
                color: borderColor ?? ColorConstant.colorGreyScale100),
          ),
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(
                width: 1,
                color: borderColor ?? ColorConstant.colorGreyScale100),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(
                width: 1,
                color: borderColor ?? ColorConstant.colorGreyScale100),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(
                width: 1,
                color: borderColor ?? ColorConstant.colorGreyScale100),
          ),
        ),
      ),
    );
  }
}
