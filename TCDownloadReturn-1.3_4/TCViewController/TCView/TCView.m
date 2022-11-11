//
//  TCView.m
//  TCDownloadReturn-1.3_4
//
//  Created by Mattia Leggieri on 12/10/22.
//

#import "TCView.h"

@implementation TCView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

- (TCScrollView *)scrollView {
    NSLog(@"Calling < scrollView >");
    if (!_scrollView) {
        NSLog(@"Initialing _scrollView in class %@", [self class]);
        _scrollView = [[TCScrollView alloc] init];
    }
    return _scrollView;
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
