//
//  AppDelegate.m
//  Obj-C-Currency
//
//  Created by Tatsuya Moriguchi on 11/26/21.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    float initial = 100.00;
    float account1 = 100.00;
    float account2 = 0.00;
    float transferAmount = 0.1;
    
    for(int i = 0; i < 30; i++) {
        account1 -= transferAmount;
        account2 += transferAmount;
    }
    
    float tolerance = FLT_EPSILON * 1000; // Increase the tolerance value by 1000 to return true from the if statement below.
    
    if (ABS((account1 + account2) < (initial + tolerance))) {
    NSLog(@"Account 1: %.12f", account1);
    NSLog(@"Account 2: %.12f", account2);
    NSLog(@"Sum: %.12f", account1 + account2);
    } else {
        NSLog(@"Account 1: %.12f", account1);
        NSLog(@"Account 2: %.12f", account2);
        NSLog(@"Sum: %.12f", account1 + account2);
        NSLog(@"tolerance: %.12f", tolerance);

        NSLog(@"The descrepancy from Float calculation is larger than Tolerance range.");
    }
    /*
     2021-11-26 11:35:31.495101-0800 Obj-C-Currency[1870:66179] Account 1: 97.000045776367
     2021-11-26 11:35:31.495325-0800 Obj-C-Currency[1870:66179] Account 2: 2.999999284744
     2021-11-26 11:35:31.495456-0800 Obj-C-Currency[1870:66179] Sum: 100.000045776367
     */
    
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
