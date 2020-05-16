#import "DonPlugin.h"
#if __has_include(<don/don-Swift.h>)
#import <don/don-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "don-Swift.h"
#endif

@implementation DonPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftDonPlugin registerWithRegistrar:registrar];
}
@end
