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
    
    float account1 = 100.00;
    float account2 = 0.00;
    float transferAmount = 0.1;
    
    for(int i = 0; i < 30; i++) {
        account1 -= transferAmount;
        account2 -= transferAmount;
    }
    
    NSLog(@"Account 1: %.2f", account1);
    NSLog(@"Account 2: %.2f", account2);
    NSLog(@"Sum: %.2f", account1 + account2);
    
    
    
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
