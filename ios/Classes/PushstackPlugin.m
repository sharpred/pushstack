#import "PushstackPlugin.h"
#if __has_include(<pushstack/pushstack-Swift.h>)
#import <pushstack/pushstack-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "pushstack-Swift.h"
#endif

@implementation PushstackPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPushstackPlugin registerWithRegistrar:registrar];
}
@end
