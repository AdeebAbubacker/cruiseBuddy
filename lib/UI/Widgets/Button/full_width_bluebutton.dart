


import 'package:cruise_buddy/core/constants/styles/text_styles.dart';
import 'package:flutter/material.dart';

class FullWidthBlueButton extends StatelessWidget {
  const FullWidthBlueButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(
            const Color(0xFF1F8386),
          ),
        ),
        onPressed: () {},
        child: Text(
          "Verify",
          style: TextStyles.ubuntu16whiteFFw500,
        ),
      ),
    );
  }
}
