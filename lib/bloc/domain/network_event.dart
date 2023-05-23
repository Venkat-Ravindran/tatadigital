import 'package:flutter/cupertino.dart';

@immutable
abstract class NetworkEvent {}

class RegistrationInfo extends NetworkEvent {
  BuildContext context;
  RegistrationInfo(this.context);
}

class GetOTPInfo extends NetworkEvent {
  final String userName;
  GetOTPInfo(this.userName);
}

class VerifyOTPInfo extends NetworkEvent {
  final String enteredOTP;
  VerifyOTPInfo(this.enteredOTP);
}

class VerifyOTPRegistrationInfo extends NetworkEvent {
  final String mobileNumberUserId;
  final bool isByMobile;
  final String enteredOTP;
  final String reqTxnId;
  VerifyOTPRegistrationInfo(this.mobileNumberUserId, this.isByMobile, this.enteredOTP, this.reqTxnId);
}

