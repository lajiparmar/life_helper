import 'package:life_helper/app_import.dart';
class AppText extends StatelessWidget {
  final String text;
  final String? fontFamily;
  final double? fontSize;
  final Color? fontColor;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final TextOverflow textOverflow;
  final int? maxLine;
  const AppText(
    this.text, {
    super.key,
    this.fontWeight,
    this.textAlign,
    this.fontColor,
    this.fontFamily,
        this.textOverflow=TextOverflow.ellipsis,
    this.fontSize,
        this.maxLine
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLine,
      overflow: textOverflow,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: fontColor,
        fontFamily: fontFamily,
      ),
    );
  }
}
