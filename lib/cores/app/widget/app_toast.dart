// import 'package:bot_toast/bot_toast.dart';
// import 'package:life_helper/app_import.dart';
// extension AppToast on String {
//   void showSuccessToast({Duration? duration}) {
//     BotToast.showCustomNotification(
//       duration: duration ?? const Duration(seconds: 3),
//       toastBuilder: (cancelFunc) => _CustomSuccessWidget(
//         cancelFunc: cancelFunc,
//         message: this,
//       ),
//     );
//   }
//
//
//   void showErrorToast({Duration? duration}) {
//     BotToast.showCustomNotification(
//       duration: duration ?? const Duration(seconds: 3),
//       toastBuilder: (cancelFunc) => _CustomErrorWidget(
//         cancelFunc: cancelFunc,
//         message: this,
//       ),
//     );
//   }
//
//
//   void showRequiredToast({Duration? duration}) {
//     BotToast.showCustomNotification(
//       duration: duration ?? const Duration(seconds: 3),
//       toastBuilder: (cancelFunc) => _CustomRequiredWidget(
//         cancelFunc: cancelFunc,
//         message: this,
//       ),
//     );
//   }
//   void showInfoToast({Duration? duration}) {
//     BotToast.showCustomNotification(
//       duration: duration ?? const Duration(seconds: 3),
//       toastBuilder: (cancelFunc) => _CustomInfoWidget(
//         cancelFunc: cancelFunc,
//         message: this,
//       ),
//     );
//   }
// }
//
//
// class _CustomSuccessWidget extends StatelessWidget {
//   final CancelFunc cancelFunc;
//   final String message;
//
//
//   const _CustomSuccessWidget({
//     required this.cancelFunc,
//     required this.message,
//   });
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.all(10).copyWith(top: MediaQuery.of(context).viewPadding.top),
//       padding: const EdgeInsets.all(15),
//       decoration: BoxDecoration(
//         // color: AppColorConstants.colorWhiteLightGreen,
//         // border: Border.all(color: AppColorConstants.colorPastelGreen),
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           const AppImage(image: AppAssetsConstants.icSuccessToast),
//           const SizedBox(width: 9),
//           Expanded(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 AppText(
//                   AppStringConstants.successToast.tr,
//                   fontSize: 16,
//                   fontWeight: FontWeight.w600,
//                 ),
//                 const SizedBox(height: 5),
//                 AppText(
//                   message,
//                   fontSize: 14,
//                 ),
//               ],
//             ),
//           ),
//           GestureDetector(
//             onTap: () => cancelFunc(),
//             child: const Padding(
//               padding: EdgeInsets.all(8.0),
//               child: AppImage(image: AppAssetsConstants.icCancel),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
// class _CustomInfoWidget extends StatelessWidget {
//   final CancelFunc cancelFunc;
//   final String message;
//
//
//   const _CustomInfoWidget({
//     required this.cancelFunc,
//     required this.message,
//   });
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.all(10).copyWith(top: MediaQuery.of(context).viewPadding.top),
//       padding: const EdgeInsets.all(15),
//       decoration: BoxDecoration(
//         color: AppColorConstants.colorWhiteLightGreen,
//         border: Border.all(color: AppColorConstants.colorPastelGreen),
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           const AppImage(image: AppAssetsConstants.icInfoToast),
//           const SizedBox(width: 9),
//           Expanded(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 AppText(
//                   AppStringConstants.infoToast.tr,
//                   fontSize: 16,
//                   fontWeight: FontWeight.w600,
//                 ),
//                 const SizedBox(height: 5),
//                 AppText(
//                   message,
//                   fontSize: 14,
//                 ),
//               ],
//             ),
//           ),
//           GestureDetector(
//             onTap: () => cancelFunc(),
//             child: const Padding(
//               padding: EdgeInsets.all(8.0),
//               child: AppImage(image: AppAssetsConstants.icCancel),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
// class _CustomErrorWidget extends StatelessWidget {
//   final CancelFunc cancelFunc;
//   final String message;
//
//
//   const _CustomErrorWidget({
//     required this.cancelFunc,
//     required this.message,
//   });
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.all(10).copyWith(top: MediaQuery.of(context).viewPadding.top),
//       padding: const EdgeInsets.all(15),
//       decoration: BoxDecoration(
//         color: AppColorConstants.colorLinen,
//         border: Border.all(color: AppColorConstants.colorCoralRed),
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           const AppImageAsset(image: AppAssetsConstants.icErrorToast),
//           const SizedBox(width: 9),
//           Expanded(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 AppText(
//                   AppStringConstants.failedToast.tr,
//                   fontSize: 16,
//                   fontWeight: FontWeight.w600,
//                 ),
//                 const SizedBox(height: 5),
//                 AppText(
//                   message,
//                   fontSize: 14,
//                 ),
//               ],
//             ),
//           ),
//           GestureDetector(
//             onTap: () => cancelFunc(),
//             child: const Padding(
//               padding: EdgeInsets.all(8.0),
//               child: AppImageAsset(image: AppAssetsConstants.icCancel),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
// class _CustomRequiredWidget extends StatelessWidget {
//   final CancelFunc cancelFunc;
//   final String message;
//
//
//   const _CustomRequiredWidget({
//     required this.cancelFunc,
//     required this.message,
//   });
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.all(10).copyWith(top: MediaQuery.of(context).viewPadding.top),
//       padding: const EdgeInsets.all(15),
//       decoration: BoxDecoration(
//         color: AppColorConstants.colorBisque,
//         border: Border.all(color: AppColorConstants.colorVividOrange),
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           const AppImageAsset(image: AppAssetsConstants.icRequiredToast),
//           const SizedBox(width: 9),
//           Expanded(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 AppText(
//                   AppStringConstants.requiredToast.tr,
//                   fontSize: 16,
//                   fontWeight: FontWeight.w600,
//                 ),
//                 const SizedBox(height: 5),
//                 AppText(
//                   message,
//                   fontSize: 14,
//                 ),
//               ],
//             ),
//           ),
//           GestureDetector(
//             onTap: () => cancelFunc(),
//             child: const Padding(
//               padding: EdgeInsets.all(8.0),
//               child: AppImageAsset(image: AppAssetsConstants.icCancel),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// import 'package:ams/app_imports.dart';
// import 'package:life_helper/cores/app/widget/app_text.dart';
//
//
// extension AppToast on String {
//   void showSuccessToast({Duration? duration}) {
//     BotToast.showCustomNotification(
//       duration: duration ?? const Duration(seconds: 3),
//       toastBuilder: (cancelFunc) => _CustomSuccessWidget(
//         cancelFunc: cancelFunc,
//         message: this,
//       ),
//     );
//   }
//
//
//   void showErrorToast({Duration? duration}) {
//     BotToast.showCustomNotification(
//       duration: duration ?? const Duration(seconds: 3),
//       toastBuilder: (cancelFunc) => _CustomErrorWidget(
//         cancelFunc: cancelFunc,
//         message: this,
//       ),
//     );
//   }
//
//
//   void showRequiredToast({Duration? duration}) {
//     BotToast.showCustomNotification(
//       duration: duration ?? const Duration(seconds: 3),
//       toastBuilder: (cancelFunc) => _CustomRequiredWidget(
//         cancelFunc: cancelFunc,
//         message: this,
//       ),
//     );
//   }
//   void showInfoToast({Duration? duration}) {
//     BotToast.showCustomNotification(
//       duration: duration ?? const Duration(seconds: 3),
//       toastBuilder: (cancelFunc) => _CustomInfoWidget(
//         cancelFunc: cancelFunc,
//         message: this,
//       ),
//     );
//   }
// }
//
//
// class _CustomSuccessWidget extends StatelessWidget {
//   final CancelFunc cancelFunc;
//   final String message;
//
//
//   const _CustomSuccessWidget({
//     required this.cancelFunc,
//     required this.message,
//   });
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         margin: const EdgeInsets.all(10).copyWith(top: MediaQuery.of(context).viewPadding.top),
//         padding: const EdgeInsets.all(15),
//         decoration: BoxDecoration(
//           color: AppColorConstants.colorWhiteLightGreen,
//           border: Border.all(color: AppColorConstants.colorPastelGreen),
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//         const AppImageAsset(image: AppAssetsConstants.icSuccessToast),
//         const SizedBox(width: 9),
//         Expanded(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               AppText(
//                 AppStringConstants.successToast.tr,
//                 fontSize: 16,
//                 fontWeight: FontWeight.w600,
//               ),
//               const SizedBox(height: 5),
//               AppText(
//                 message,
//                 fontSize: 14,
//               ),
//             ],
//           ),
//         ),
//         GestureDetector(
//         onTap: () => cancelFunc(),
//     child: const Padding(
//     padding: EdgeInsets.all(8.0),
//     child: AppImageAsset(image: AppAssetsConstants.icCancel),
//     ),
//         ),
//             ],
//         ),
//     );
//   }
// }
//
//
// class _CustomInfoWidget extends StatelessWidget {
//   final CancelFunc cancelFunc;
//   final String message;
//
//
//   const _CustomInfoWidget({
//     required this.cancelFunc,
//     required this.message,
//   });
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.all(10).copyWith(top: MediaQuery.of(context).viewPadding.top),
//       padding: const EdgeInsets.all(15),
//       decoration: BoxDecoration(
//         color: AppColorConstants.colorWhiteLightGreen,
//         border: Border.all(color: AppColorConstants.colorPastelGreen),
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           const AppImageAsset(image: AppAssetsConstants.icInfoToast),
//           const SizedBox(width: 9),
//           Expanded(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 AppText(
//                   AppStringConstants.infoToast.tr,
//                   fontSize: 16,
//                   fontWeight: FontWeight.w600,
//                 ),
//                 const SizedBox(height: 5),
//                 AppText(
//                   message,
//                   fontSize: 14,
//                 ),
//               ],
//             ),
//           ),
//           GestureDetector(
//             onTap: () => cancelFunc(),
//             child: const Padding(
//               padding: EdgeInsets.all(8.0),
//               child: AppImageAsset(image: AppAssetsConstants.icCancel),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
// class _CustomErrorWidget extends StatelessWidget {
//   final CancelFunc cancelFunc;
//   final String message;
//
//
//   const _CustomErrorWidget({
//     required this.cancelFunc,
//     required this.message,
//   });
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.all(10).copyWith(top: MediaQuery.of(context).viewPadding.top),
//       padding: const EdgeInsets.all(15),
//       decoration: BoxDecoration(
//         color: AppColorConstants.colorLinen,
//         border: Border.all(color: AppColorConstants.colorCoralRed),
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           const AppImageAsset(image: AppAssetsConstants.icErrorToast),
//           const SizedBox(width: 9),
//           Expanded(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 AppText(
//                   AppStringConstants.failedToast.tr,
//                   fontSize: 16,
//                   fontWeight: FontWeight.w600,
//                 ),
//                 const SizedBox(height: 5),
//                 AppText(
//                   message,
//                   fontSize: 14,
//                 ),
//               ],
//             ),
//           ),
//           GestureDetector(
//             onTap: () => cancelFunc(),
//             child: const Padding(
//               padding: EdgeInsets.all(8.0),
//               child: AppImageAsset(image: AppAssetsConstants.icCancel),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
// class _CustomRequiredWidget extends StatelessWidget {
//   final CancelFunc cancelFunc;
//   final String message;
//
//
//   const _CustomRequiredWidget({
//     required this.cancelFunc,
//     required this.message,
//   });
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.all(10).copyWith(top: MediaQuery.of(context).viewPadding.top),
//       padding: const EdgeInsets.all(15),
//       decoration: BoxDecoration(
//         color: AppColorConstants.colorBisque,
//         border: Border.all(color: AppColorConstants.colorVividOrange),
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           const AppImageAsset(image: AppAssetsConstants.icRequiredToast),
//           const SizedBox(width: 9),
//           Expanded(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 AppText(
//                   AppStringConstants.requiredToast.tr,
//                   fontSize: 16,
//                   fontWeight: FontWeight.w600,
//                 ),
//                 const SizedBox(height: 5),
//                 AppText(
//                   message,
//                   fontSize: 14,
//                 ),
//               ],
//             ),
//           ),
//           GestureDetector(
//             onTap: () => cancelFunc(),
//             child: const Padding(
//               padding: EdgeInsets.all(8.0),
//               child: AppImage(image: AppAssetsConstants.icCancel),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
