//
//  TCViewController.h
//  TCDownloadReturn-1.3_4
//
//  Created by Mattia Leggieri on 12/10/22.
//

#import "TCWindow/TCWindow.h"
#import "TCView/TCView.h"
#import "TCTextView/TCTextView.h"
#import "TCScrollView/TCScrollView.h"
#import "Library/TCColor.h"

@interface TCViewController : NSObject <NSWindowDelegate>
@property (nonatomic, strong) TCColor *color;
@property (nonatomic, strong) TCWindow *window;
@property (nonatomic, strong) TCView *mainView, *maskL, *maskR;
@end
