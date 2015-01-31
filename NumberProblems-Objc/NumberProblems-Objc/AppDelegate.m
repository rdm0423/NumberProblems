//
//  AppDelegate.m
//  NumberProblems-Objc
//
//  Created by Joshua Howland on 8/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

//declare a global variable

int multiplier = 8;
int divisor = 6;



@interface AppDelegate ()

@end

@implementation AppDelegate
            

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

    // Insert code here...
    

    [self iterateCount:4];
    [self multiplied:multiplier];
    
    
    
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
    int z = multiplier;
    NSLog(@"Multiplied %d by %d to be %d", x, y, z);
    NSLog(@"Divided %d by %d to be %d", multiplied, divisor, divided);
    
}

-(void)multiplied:(int)y
{
    int multiplied = y * multiplier;
    [self multiplied:multiplier];
    NSLog(@"%d", multiplied);
}

-(void)divided:(int)d
{
    int divided = d / divisor;
}


@end
