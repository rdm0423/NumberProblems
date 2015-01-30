//
//  AppDelegate.m
//  NumberProblems-Objc
//
//  Created by Joshua Howland on 8/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

//declare a global variable

int globalInt = 8;


@interface AppDelegate ()

@end

@implementation AppDelegate
            

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

    // Insert code here...
    

    [self iterateCount:4];
   
    
    
    
    

    
    
    return YES;
}


-(void)iterateCount:(int)x
{
    if (x == 0) {
        NSLog(@"Iterate %d", x);
    }
    else
    {
        NSLog(@"Iterate %d", x);
        int oneLess = x - 1;
        [self iterateCount:oneLess];
    }
}

-(void)multiplied:(int)y
{
    int multiplied = y * globalInt;
    NSLog(@"%d", multiplied);

}


@end
