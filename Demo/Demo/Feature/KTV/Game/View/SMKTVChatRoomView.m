//
//  SMKTVChatRoomView.m
//  Demo
//
//  Created by weilihua on 2022/11/4.
//

#import "SMKTVChatRoomView.h"

@implementation SMKTVChatRoomView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initView];
    }
    return self;
}

- (void)initView {
    self.backgroundColor = [UIColor.greenColor colorWithAlphaComponent:0.1];
}

@end
