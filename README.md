SimpleTable
===========
This is the second tutorial of iOS development in appcoda.com,and save here for repository.

Anyone who want to read the tutorial, please refers to http://www.appcoda.com/ios-programming-tutorial-create-a-simple-table-view-app/.

Note that the environment I am using is XCode 5.1, and StoryBoard is the default selection, but the tutorial uses XIB, some code
should be changed as:
<code>
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    SimpleTableViewController   *viewController = [[SimpleTableViewController alloc] initWithNibName:@"SimpleTableViewController" bundle:nil];
    self.window.rootViewController = viewController;
    
    [self.window makeKeyAndVisible];
    return YES;
}
</code>

SimpleTable tutorial
