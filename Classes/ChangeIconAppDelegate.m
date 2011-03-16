/**
 * biteSMS to Messages Icon
 * 
 * Author: Chris Harvey (chrisnharvey)
 * Website: http://www.chrisnharvey.com
 * Email: chris@chrisnharvey.com
 * 
 **/

#import "ChangeIconAppDelegate.h"

@implementation ChangeIconAppDelegate

@synthesize window;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    

    // Override point for customization after application launch
	
	system("rm -f /Applications/biteSMS.app/icon.png");
	system("cp /Applications/MobileSMS.app/icon.png /Applications/biteSMS.app/");
	system("respring");
	
	exit(0);
	
	
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
