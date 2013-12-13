//
//  CBSAppDelegate.m
//  CellButtonSample
//

#import "CBSAppDelegate.h"
#import "CBSMenuViewController.h"

@implementation CBSAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  CBSMenuViewController *menuViewCon = [[CBSMenuViewController alloc] init];
  menuViewCon.title = [[NSBundle mainBundle] infoDictionary][@"CFBundleDisplayName"];
  UINavigationController *navCon = [[UINavigationController alloc] initWithRootViewController:menuViewCon];
  
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  self.window.rootViewController = navCon;
  [self.window makeKeyAndVisible];
  
  // Override point for customization after application launch.
  return YES;
}

@end
