//
//  CHTAppDelegate.m
//  Curator
//
//  Created by Nelson on 2014/1/29.
//  Copyright (c) 2014年 Nelson. All rights reserved.
//

#import "CHTAppDelegate.h"
#import <SDWebImage/SDWebImageManager.h>
#import <AFNetworking/AFNetworkActivityIndicatorManager.h>

@implementation CHTAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  // Setup downloaded image cache key filter
  [SDWebImageManager sharedManager].cacheKeyFilter = ^(NSURL *url) {
    return [url absoluteString];
  };
  // Limit maximum image cache size, in bytes.
  [SDImageCache sharedImageCache].maxCacheSize = 256 * 1024 * 1024;
  [[SDImageCache sharedImageCache] cleanDisk];

  // Enable network activity indicator
  [[AFNetworkActivityIndicatorManager sharedManager] setEnabled:YES];

  [application setStatusBarHidden:NO];
  return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
  // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
  // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
  // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
  // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
  // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
  // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
  // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
