//
//  VersionName.m
//
//  Created by Alex Bonine 07/19/2012
//

#import "VersionName.h"
#import <Cordova/CDV.h>

@implementation VersionName

// This corresponds to project target -> Summary tab -> Version field
- (void) getVersionName:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString *versionName = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:versionName];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
