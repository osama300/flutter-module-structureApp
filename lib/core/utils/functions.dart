// import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:doctor/core/utils/validation_enum.dart';

enum SnackBarType { success, error, info }

class Functions {
  Future<bool> checkConnection() async {
    // var connectivityResult = await (Connectivity().checkConnectivity());
    // if (connectivityResult == ConnectivityResult.none) {
    //   return false;
    // } else {
    //   return true;
    // }
    return true;
  }
  // static String formatString(String input) {
  //   return input.trim().toUpperCase();
  // }
  //
  // bool isMobileWidth(BuildContext context) =>
  //     MediaQuery.sizeOf(context).width < kBreakpointSmall;
  //
  // bool responsiveVisibility({
  //   required BuildContext context,
  //   bool phone = true,
  //   bool tablet = true,
  //   bool tabletLandscape = true,
  //   bool desktop = true,
  // }) {
  //   final width = MediaQuery.sizeOf(context).width;
  //   if (width < kBreakpointSmall) {
  //     return phone;
  //   } else if (width < kBreakpointMedium) {
  //     return tablet;
  //   } else if (width < kBreakpointLarge) {
  //     return tabletLandscape;
  //   } else {
  //     return desktop;
  //   }
  // }

  void showCustomSnackBar(BuildContext context,
      {required String message, required SnackBarType snackBarType}) {
    switch (snackBarType) {
      case SnackBarType.success:
        showTopSnackBar(
          Overlay.of(context),
          CustomSnackBar.success(
            message: message,

          ),
          snackBarPosition: SnackBarPosition.bottom,
        );
        break;
      case SnackBarType.error:
        showTopSnackBar(
          Overlay.of(context),
          CustomSnackBar.error(
            message: message,
          ),
          snackBarPosition: SnackBarPosition.bottom,
        );
        break;
      case SnackBarType.info:
        showTopSnackBar(
          Overlay.of(context),
          CustomSnackBar.info(
            message: message,
          ),
          snackBarPosition: SnackBarPosition.bottom,
        );
        break;
    }
  }
}

String? inputValidation(String val, int min, int max, ValidationType type) {
  // Error messages (constants)
  const String requiredFieldError = 'هذا الحقل مطلوب';
  const String invalidUsernameError = 'صيغة اسم المستخدم غير صالحة';
  const String invalidEmailError = 'صيغة البريد الإلكتروني غير صالحة';
  const String invalidPhoneError = 'صيغة رقم الهاتف غير صالحة';
  const String minLengthError = 'يجب أن يكون الحد الأدنى للطول';
  const String maxLengthError = 'يجب أن يكون الحد الأقصى للطول';
  const String passwordRequirementsError =
      'يجب أن تكون كلمة المرور بين 8 و 20 حرفًا';

  switch (type) {
    case ValidationType.username:
      if (!_isValidUsername(val)) {
        return invalidUsernameError;
      }
      break;
    case ValidationType.text:
      if (val.isEmpty) {
        return requiredFieldError;
      }
      break;
    case ValidationType.email:
      if (!_isValidEmail(val)) {
        return invalidEmailError;
      }
      break;
    case ValidationType.phone:
      if (!_isValidPhoneNumber(val)) {
        return invalidPhoneError;
      }
      break;
    case ValidationType.password:
      if (val.isEmpty) {
        return requiredFieldError;
      }
      if (val.length < min || val.length > max) {
        return passwordRequirementsError;
      }
      // You can add additional password complexity checks here
      break;
  }

  if (val.isEmpty) {
    return requiredFieldError;
  }
  if (val.length < min) {
    return '$min $minLengthError';
  }
  if (val.length > max) {
    return '$max $maxLengthError';
  }

  return null; // Return null if input is valid
}

// Helper functions for validation
bool _isValidUsername(String username) {
  // Implement your username validation logic here
  return true; // Placeholder logic, replace with actual validation
}

bool _isValidEmail(String email) {
  // Implement your email validation logic here
  return true; // Placeholder logic, replace with actual validation
}

bool _isValidPhoneNumber(String phoneNumber) {
  // Implement your phone number validation logic here
  return true; // Placeholder logic, replace with actual validation
}
