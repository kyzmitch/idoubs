#  How to fix compilation errors


### At the moment it is can be build only for real device:
https://github.com/DoubangoTelecom/doubango/commit/7ab923d0ffc8f5e101767cd560a3cc4ed7aff7f6

### Xib files need to be changed to build for iOS 10.0 or later
https://stackoverflow.com/a/44430034

### clang: error: -fembed-bitcode is not supported on versions of iOS prior to 6.0
Disable bitcode in all projects

### ld: library not found for -lcrt1.3.1.o
Set IPHONEOS_DEPLOYMENT_TARGET to iOS 10.0 for all project files

### Undefined symbols for architecture i386: "_OBJC_CLASS_$_CAEAGLLayer", referenced from
Need to add OpenGLES and QuartzCode frameworks to target

### NSContactsUsageDescription  missed
Add it to Info.plist for testRegistration target

# How to fix runtime errors

### *** Terminating app due to uncaught exception 'NSInternalInconsistencyException', reason: 'Application windows are expected to have a root view controller at the end of application launch'

Need to add to `applicationDidFinishLaunching` method of `TestAudioUnit` or another class which confirms to `UIApplicationDelegate` next line of code:
`window.rootViewController = [[UIViewController alloc] init];`
`window.rootViewController.view.userInteractionEnabled = NO;`

### This app has crashed because it attempted to access privacy-sensitive data without a usage description.  The app's Info.plist must contain an NSMicrophoneUsageDescription key with a string value explaining to the user how the app uses this data.

Need to modify Info.plist


