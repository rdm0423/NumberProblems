//
//  AppDelegate.m
//  NumberProblems-Objc
//
//  Created by Joshua Howland on 8/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

//declare a global variable

static const int kMultiplier = 8;
static const int kDivisor = 6;


@interface AppDelegate ()

@end

@implementation AppDelegate
            

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

    // Insert code here...
    

    [self iterateCount:4];
    [self multiplied:kMultiplier];
    
    
    
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
        
        int multipliedNumber;
        multipliedNumber = [self multiplied:x];
        NSLog(@"* : %d", multipliedNumber);
        
        float dividedNumber;
        dividedNumber = [self divided:multipliedNumber];
        NSLog(@"/ : %f", dividedNumber);
        
        int oneLess = x - 1;
        NSLog(@"oneLess = %d", oneLess);
        [self iterateCount:oneLess];
    }

    
}

-(int)multiplied:(int)y
{
    int multiplied = y * kMultiplier;
    
    return multiplied;
}

-(float)divided:(int)d
{
    float divided = (float)d / kDivisor;
    return divided;
}


@end
