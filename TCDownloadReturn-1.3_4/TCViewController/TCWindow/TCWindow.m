//
//  TCWindow.m
//  TCDownloadReturn-1.3_4
//
//  Created by Mattia Leggieri on 12/10/22.
//

#import "TCWindow.h"

@implementation TCWindow

- (instancetype)initWithSize:(NSSize)winSize {
    if (self = [super init]) {
        NSSize displaySize = [self displaySize];
        NSRect winFrame = NSMakeRect(displaySize.width/2-winSize.width/2, displaySize.height/2-winSize.height/2, winSize.width, winSize.height);
        
        self = [[TCWindow alloc]
                initWithContentRect:winFrame
                styleMask: NSWindowStyleMaskTitled | NSWindowStyleMaskMiniaturizable | NSWindowStyleMaskClosable | NSWindowStyleMaskResizable
                backing:NSBackingStoreBuffered
                defer:NO
        ];
        
        [self setTitle:@"TCDownloadReturn-1.3_4"];
        [self setMinSize:NSMakeSize(winFrame.size.width, winFrame.size.height+30)];
        [self makeKeyAndOrderFront:NSApp];
        
        NSLog(@"Initializing class %@", [self class]);
        NSLog(@"color : %@", self.backgroundColor.CGColor);
    }
    return self;
}

- (NSSize)displaySize {
    NSLog(@"Call to %s", sel_getName(_cmd));
    NSScreen *screen = [NSScreen mainScreen];
    NSDictionary *description = [screen deviceDescription];
    return [[description objectForKey:NSDeviceSize] sizeValue];
}
/*
- (TCColor *)color {
    NSLog(@"Calling < color >");
    if (!_color) {
        NSLog(@"Initialing _color in class %@", [self class]);
        _color = [[TCColor alloc] init];
    }
    return _color;
}
*/
@end
