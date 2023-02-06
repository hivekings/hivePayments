import 'package:hive_payments/presentation/home_screen/home_screen.dart';
import 'package:hive_payments/presentation/home_screen/binding/home_binding.dart';
import 'package:hive_payments/presentation/log_in_screen/log_in_screen.dart';
import 'package:hive_payments/presentation/log_in_screen/binding/log_in_binding.dart';
import 'package:hive_payments/presentation/qr_request_screen/qr_request_screen.dart';
import 'package:hive_payments/presentation/qr_request_screen/binding/qr_request_binding.dart';
import 'package:hive_payments/presentation/splash_screen/splash_screen.dart';
import 'package:hive_payments/presentation/splash_screen/binding/splash_binding.dart';
import 'package:hive_payments/presentation/qr_request_page_two_screen/qr_request_page_two_screen.dart';
import 'package:hive_payments/presentation/qr_request_page_two_screen/binding/qr_request_page_two_binding.dart';
import 'package:hive_payments/presentation/qr_request_pague_three_screen/qr_request_pague_three_screen.dart';
import 'package:hive_payments/presentation/qr_request_pague_three_screen/binding/qr_request_pague_three_binding.dart';
import 'package:hive_payments/presentation/payment_screen/payment_screen.dart';
import 'package:hive_payments/presentation/payment_screen/binding/payment_binding.dart';
import 'package:hive_payments/presentation/receipt_screen/receipt_screen.dart';
import 'package:hive_payments/presentation/receipt_screen/binding/receipt_binding.dart';
import 'package:hive_payments/presentation/transfer_screen/transfer_screen.dart';
import 'package:hive_payments/presentation/transfer_screen/binding/transfer_binding.dart';
import 'package:hive_payments/presentation/transfer_page_one_screen/transfer_page_one_screen.dart';
import 'package:hive_payments/presentation/transfer_page_one_screen/binding/transfer_page_one_binding.dart';
import 'package:hive_payments/presentation/transfer_page_two_screen/transfer_page_two_screen.dart';
import 'package:hive_payments/presentation/transfer_page_two_screen/binding/transfer_page_two_binding.dart';
import 'package:hive_payments/presentation/transfer_page_three_screen/transfer_page_three_screen.dart';
import 'package:hive_payments/presentation/transfer_page_three_screen/binding/transfer_page_three_binding.dart';
import 'package:hive_payments/presentation/receipt_one_screen/receipt_one_screen.dart';
import 'package:hive_payments/presentation/receipt_one_screen/binding/receipt_one_binding.dart';
import 'package:hive_payments/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:hive_payments/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';

  static const String logInScreen = '/log_in_screen';

  static const String qrRequestScreen = '/qr_request_screen';

  static const String splashScreen = '/splash_screen';

  static const String qrRequestPageTwoScreen = '/qr_request_page_two_screen';

  static const String qrRequestPagueThreeScreen =
      '/qr_request_pague_three_screen';

  static const String paymentScreen = '/payment_screen';

  static const String receiptScreen = '/receipt_screen';

  static const String transferScreen = '/transfer_screen';

  static const String transferPageOneScreen = '/transfer_page_one_screen';

  static const String transferPageTwoScreen = '/transfer_page_two_screen';

  static const String transferPageThreeScreen = '/transfer_page_three_screen';

  static const String receiptOneScreen = '/receipt_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: logInScreen,
      page: () => LogInScreen(),
      bindings: [
        LogInBinding(),
      ],
    ),
    GetPage(
      name: qrRequestScreen,
      page: () => QrRequestScreen(),
      bindings: [
        QrRequestBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: qrRequestPageTwoScreen,
      page: () => QrRequestPageTwoScreen(),
      bindings: [
        QrRequestPageTwoBinding(),
      ],
    ),
    GetPage(
      name: qrRequestPagueThreeScreen,
      page: () => QrRequestPagueThreeScreen(),
      bindings: [
        QrRequestPagueThreeBinding(),
      ],
    ),
    GetPage(
      name: paymentScreen,
      page: () => PaymentScreen(),
      bindings: [
        PaymentBinding(),
      ],
    ),
    GetPage(
      name: receiptScreen,
      page: () => ReceiptScreen(),
      bindings: [
        ReceiptBinding(),
      ],
    ),
    GetPage(
      name: transferScreen,
      page: () => TransferScreen(),
      bindings: [
        TransferBinding(),
      ],
    ),
    GetPage(
      name: transferPageOneScreen,
      page: () => TransferPageOneScreen(),
      bindings: [
        TransferPageOneBinding(),
      ],
    ),
    GetPage(
      name: transferPageTwoScreen,
      page: () => TransferPageTwoScreen(),
      bindings: [
        TransferPageTwoBinding(),
      ],
    ),
    GetPage(
      name: transferPageThreeScreen,
      page: () => TransferPageThreeScreen(),
      bindings: [
        TransferPageThreeBinding(),
      ],
    ),
    GetPage(
      name: receiptOneScreen,
      page: () => ReceiptOneScreen(),
      bindings: [
        ReceiptOneBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
