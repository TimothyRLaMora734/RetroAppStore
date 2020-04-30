//
//  AppController.h
//  RetroAppStore
//
//  Created by Ford on 4/29/20.
//  Copyright © 2020 fordApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>


NS_ASSUME_NONNULL_BEGIN

@interface AppController : NSObject {
@private
    IBOutlet NSTextField *progresslabel;
    IBOutlet NSProgressIndicator *progressBar;
    IBOutlet NSButton *continuebutton;
}

- (IBAction)StartOperation:(id)sender;
     
@end

NS_ASSUME_NONNULL_END
