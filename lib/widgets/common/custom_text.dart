import 'package:flutter/material.dart';
import '../../../core/constants.dart';

class H1 extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  final Color? color;

  const H1(this.text, {super.key, this.textAlign, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: AppFontSizes.xxxl, fontWeight: FontWeight.bold, color: color ?? AppColors.textPrimary),
      textAlign: textAlign,
    );
  }
}

class H2 extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;

  const H2(this.text, {super.key, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: AppFontSizes.xxl, fontWeight: FontWeight.bold),
      textAlign: textAlign,
    );
  }
}

class H3 extends StatelessWidget {
  final String text;

  const H3(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: const TextStyle(fontSize: AppFontSizes.xl, fontWeight: FontWeight.bold));
  }
}

class Paragraph extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;

  const Paragraph(this.text, {super.key, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: const TextStyle(fontSize: AppFontSizes.md), textAlign: textAlign);
  }
}

class Caption extends StatelessWidget {
  final String text;

  const Caption(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: AppFontSizes.sm, color: AppColors.textSecondary));
  }
}