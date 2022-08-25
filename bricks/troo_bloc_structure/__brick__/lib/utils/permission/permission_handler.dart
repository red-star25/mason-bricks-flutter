import 'package:permission_handler/permission_handler.dart';

class PermissionHandler {
  static final requiredPermission = [];

  // Requesting a specific permission
  static Future<bool> requestPermission(Permission permission) async {
    final status = await permission.request();
    return status.isGranted;
  }

  static Future<bool> requestPermissions(List<Permission> permissions) async {
    // Pop up will be shown to user with a permission
    final Map<Permission, PermissionStatus> statuses =
        await permissions.request();

    // Creating [permanentlyDeniedPermissions] array in order to store permanently denied permissions
    final permanentlyDeniedPermissions = <Permission>[];

    // Looping through the permissions and adding permanently denied permissions to [permanentlyDeniedPermissions] array
    for (var permission in statuses.keys) {
      if (requiredPermission.contains(permission)) {
        final permissionStatus = await permission.status;
        if (permissionStatus == PermissionStatus.denied ||
            permissionStatus == PermissionStatus.permanentlyDenied) {
          permanentlyDeniedPermissions.add(permission);
        }
      }
    }

    // Checking if [permanentlyDeniedPermissions] is empty or not. If it is empty that means no permissions are denied and we can redirect user to next page.
    // If denied, then we will show a dialog and redirect user to settings in order to enable permissions.
    if (permanentlyDeniedPermissions.isNotEmpty) {
      // Show dialog to user to go and enable permission in the settings
      return false;
    } else {
      return true;
    }
  }
}
