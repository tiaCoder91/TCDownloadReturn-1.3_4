//
//  TCScrollView.h
//  TCDownloadReturn-1.3_4
//
//  Created by Mattia Leggieri on 12/10/22.
//

#import "../TCTextView/TCTextView.h"

@interface TCScrollView : NSScrollView
@property (nonatomic, strong) TCTextView *textView;
@end
