#import "CustomCameraPlugin.h"
#import "CustomCameraViewController.h"

@implementation CustomCameraPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"custom_camera"
            binaryMessenger:[registrar messenger]];
  CustomCameraPlugin* instance = [[CustomCameraPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"takePhoto" isEqualToString:call.method]) {
      CustomCameraViewController *vc = [[CustomCameraViewController alloc] init];
      vc.modalPresentationStyle =  UIModalPresentationFullScreen;
      [[self currentViewController] presentViewController:vc animated:YES completion:nil];
  } else {
    result(FlutterMethodNotImplemented);
  }
}


- (UIViewController*)currentViewController {
 
    UIViewController* vc = [UIApplication sharedApplication].keyWindow.rootViewController;
 
    while (1) {
    
        if ([vc isKindOfClass:[UITabBarController class]]) {
            vc = ((UITabBarController*)vc).selectedViewController;
        }
        if ([vc isKindOfClass:[UINavigationController class]]) {
            vc = ((UINavigationController*)vc).visibleViewController;
        }
        if (vc.presentedViewController) {
            vc = vc.presentedViewController;
        }else{
            break;
        }
    
    }
 
    return vc;
 
}
@end
