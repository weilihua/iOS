//
//  SMKTVGameRoomView.m
//  Demo
//
//  Created by weilihua on 2022/11/4.
//

#import "SMKTVGameRoomView.h"

@implementation SMKTVGameRoomView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initView];
    }
    return self;
}

- (void)initView {
    self.backgroundColor = [UIColor.redColor colorWithAlphaComponent:0.1];
}

@end
