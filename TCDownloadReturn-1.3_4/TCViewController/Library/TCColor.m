//
//  TCColor.m
//  TCDownloadReturn-1.3_4
//
//  Created by Mattia Leggieri on 12/10/22.
//

#import "TCColor.h"

@implementation TCColor

- (void)setBackgroundColorWithName:(NSString *)colorName fromInstance:(id)instance {
    if ([colorName isEqualToString:@"Transparent"]) {
        [instance setBackgroundColor: [NSColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.000]];
    } else if ([colorName isEqualToString:@"Default"]) {
        [instance setBackgroundColor: [NSColor colorWithCGColor: CGColorCreateSRGB(0.925, 0.925, 0.925, 0.960)]];
    } else if ([colorName isEqualToString:@"Black"]) {
        [instance setBackgroundColor: [NSColor colorWithCGColor: CGColorCreateSRGB(0.0, 0.0, 0.0, 1.0)]];
    } else if ([colorName isEqualToString:@"White"]) {
        [instance setBackgroundColor: [NSColor colorWithCGColor: CGColorCreateSRGB(1.0, 1.0, 1.0, 1.0)]];
    }
}

@end
