#  How to configure swift based project

### Add new empty objective-c file to project which trigger automatic Bridging header creation.

### Add required headers like `#import "NgnRegistrationEventArgs.h"` to `testRegistrationSwift-Bridging-Header.h`

### Add libios_ngn_stack.a to target's Linked frameworks list.

### XCode can't find some header files which are in angle brekets 
'services/INgnBaseService.h' file not found with <angled> include; use "quotes" instead
Set `System Header search paths` to $(PROJECT_DIR)/../common-ngn-stack
