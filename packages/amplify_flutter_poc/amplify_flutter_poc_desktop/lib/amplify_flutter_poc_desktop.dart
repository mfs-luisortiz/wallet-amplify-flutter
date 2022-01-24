import 'package:amplify_flutter_platform_interface/amplify_flutter_platform_interface.dart';
import 'package:amplify_flutter_dart/amplify_flutter_dart.dart';

class AmplifyFlutterPocDesktop extends AmplifyClass with AmplifyFlutterDart {
  AmplifyFlutterPocDesktop.protected() : super.protected();

  /// Registers this class as the default instance of [AmplifyFlutterPocDesktop].
  static void registerWith() {
    print('DESKTOP!');
    AmplifyClass.instance = AmplifyFlutterPocDesktop.protected();
  }
}
