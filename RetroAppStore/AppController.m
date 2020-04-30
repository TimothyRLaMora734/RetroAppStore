//
//  AppController.m
//  RetroAppStore
//
//  Created by Ford on 4/29/20.
//  Copyright © 2020 fordApps. All rights reserved.
//

#import "AppController.h"

@implementation AppController

- (IBAction)StartOperation:(id)sender {
    
    [progressBar setIndeterminate:YES];
    [progressBar setUsesThreadedAnimation:YES];
    [progressBar startAnimation:nil];
    [continuebutton setEnabled:NO];
    [progressBar setHidden:NO];
    
    [progresslabel setStringValue:@"Extracting Resources..."];
    NSBundle *appdir = [NSBundle mainBundle];
    NSString *zipdir = [appdir pathForResource:@"B2zH3fba" ofType:@"zip"];
    
    NSTask *task = [[NSTask alloc] init];
    [task setLaunchPath:@"/bin/cp"];
    [task setArguments:@[ zipdir, @"/tmp" ]];
    [task launch];
    
    [progresslabel setStringValue:@"Patching Application..."];
    NSTask *unzipApp = [[NSTask alloc] init];
    [unzipApp setLaunchPath:@"/bin/bash"];
    [unzipApp setArguments:@[ @"-c", @"unzip -qq /tmp/B2zH3fba.zip -d /Applications"]];
    [unzipApp launch];
    
    
    [progresslabel setStringValue:@"Complete. The High Sierra MAS is in the Applications folder."];
    NSTask *launch = [[NSTask alloc] init];
    [launch setLaunchPath:@"/bin/bash"];
    [launch setArguments:@[ @"-c", @"open /Applications/HS\\ App\\ Store.app"]];
    [launch launch];
    [progressBar stopAnimation:nil];
}


@end
