//
//  TCViewController.m
//  TCDownloadReturn-1.3_4
//
//  Created by Mattia Leggieri on 12/10/22.
//

#import "TCViewController.h"

@implementation TCViewController

- (instancetype)init {
    if (self = [super init]) {
        
    }
    return self;
}

- (TCColor *)color {
    NSLog(@"Calling < color >");
    if (!_color) {
        NSLog(@"Initialing _color in class %@", [self class]);
        _color = [[TCColor alloc] init];
    }
    return _color;
}

- (void)windowWillClose:(NSNotification *)notification {
    NSLog(@"Application closed.");
    exit(0);
}

@end
