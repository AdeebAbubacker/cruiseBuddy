// import 'package:cruise_buddy/core/constants/styles/text_styles.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:otp_pin_field/otp_pin_field.dart';

// class OtpField extends StatefulWidget {
//   const OtpField({super.key, required this.title});

//   final String title;

//   @override
//   State<OtpField> createState() => _OtpFieldState();
// }

// void _hideKeyboard() {
//   SystemChannels.textInput.invokeMethod('TextInput.hide');
// }

// class _OtpFieldState extends State<OtpField> {
//   final _otpPinFieldController = GlobalKey<OtpPinFieldState>();

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => _hideKeyboard(),
//       child: Scaffold(
//         appBar: AppBar(title: Text(widget.title)),
//         body: 
        
//         SizedBox.expand(
//           child: Center(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 OtpPinField(
//                   fieldHeight: 50,
//                   fieldWidth: 60,
//                   key: _otpPinFieldController,
//                   autoFillEnable: false,
//                   textInputAction: TextInputAction.done,
//                   onSubmit: (text) {
//                     debugPrint('Entered pin is $text');
//                   },
//                   onChange: (text) {
//                     debugPrint('Enter on change pin is $text');
//                   },
//                   onCodeChanged: (code) {
//                     debugPrint('onCodeChanged is $code');
//                   },
//                   otpPinFieldStyle: OtpPinFieldStyle(
//                     textStyle: TextStyles.ubuntu32blue86w700,
//                     fieldBorderRadius: 25,
//                     fieldBorderWidth: 1,
//                     fieldPadding: 25,
//                     hintTextColor: Colors.grey,
//                     showHintText: true,
//                     activeFieldBorderGradient: const LinearGradient(
//                       colors: [Colors.blue, Colors.blue],
//                     ),
//                     filledFieldBorderGradient: const LinearGradient(
//                       colors: [Colors.black, Colors.black],
//                     ),
//                     defaultFieldBorderGradient: const LinearGradient(
//                       colors: [Colors.grey, Colors.grey],
//                     ),
//                   ),
//                   maxLength: 4,
//                   showCursor: true,
//                   cursorColor: Colors.grey,
//                   upperChild: const Column(
//                     children: [
//                       SizedBox(height: 30),
//                       Icon(Icons.flutter_dash_outlined, size: 150),
//                       SizedBox(height: 20),
//                     ],
//                   ),
//                   middleChild: Column(
//                     children: [
//                       const SizedBox(height: 30),
//                       ElevatedButton(
//                         onPressed: () {
//                           _otpPinFieldController.currentState?.clearOtp();
//                         },
//                         child: const Text('Clear OTP'),
//                       ),
//                     ],
//                   ),
//                   cursorWidth: 2,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   otpPinFieldDecoration: OtpPinFieldDecoration.custom,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
