//
//  main.m
//  TCDownloadReturn-1.3_4
//
//  Created by Mattia Leggieri on 12/10/22.
//

#import "TCViewController/TCViewController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        NSApplication *app = [NSApplication sharedApplication];
        
        TCViewController *controller = [[TCViewController alloc] init];
        
        NSSize winSize = NSMakeSize(700, 500);
        controller.window = [[TCWindow alloc] initWithSize: winSize];
        [controller.window setDelegate: controller];
        [controller.color setBackgroundColorWithName:@"Transparent" fromInstance: controller.window];
        
        controller.mainView = [[TCView alloc] initWithFrame: NSMakeRect(0, 0, winSize.width, winSize.height+30)];
        [controller.color setBackgroundColorWithName:@"White" fromInstance: controller.mainView];
        
        
        
        [controller.window.contentView addSubview: controller.mainView];
        
        [app run];
    }
    return 0;
}
