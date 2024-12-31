
import 'package:flutter/foundation.dart';

void log(String dbgMessage){
  if (kDebugMode) {
    print(">>> $dbgMessage");
  }
}