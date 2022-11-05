//
//  SMBaseKTVRoomController.m
//  Demo
//
//  Created by weilihua on 2022/11/4.
//

#import "SMBaseKTVRoomController.h"
#import "SMKTVChatRoomController.h"
#import "SMKTVGameRoomController.h"

@interface SMBaseKTVRoomController ()

@end

@implementation SMBaseKTVRoomController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
}

// 状态栏样式
- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

#pragma mark -
#pragma mark Privete Method

- (void)switchRoomType:(SMRoomType)type {
    if ([self isMemberOfClass:SMKTVChatRoomController.class] && type == SMRoomTypeChat) {
        return;
    }
    
    if ([self isMemberOfClass:SMKTVGameRoomController.class] && type == SMRoomTypeGame) {
        return;
    }
    SMBaseKTVRoomController *vc = nil;
    if (type == SMRoomTypeChat) {
        vc = [SMKTVChatRoomController new];
    } else if (type == SMRoomTypeGame) {
        vc = [SMKTVGameRoomController new];
    }
    [self.navigationController pushViewController:vc animated:NO];
    
    NSMutableArray *vcs = [NSMutableArray new];
    [vcs addObjectsFromArray:self.navigationController.viewControllers];
    [vcs enumerateObjectsUsingBlock:^(__kindof UIViewController * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj isKindOfClass:SMBaseKTVRoomController.class]) {
            [vcs removeObject:obj];
            *stop = YES;
        }
    }];
    self.navigationController.navigationBarHidden = YES;
    self.navigationController.viewControllers = vcs;
}

#pragma mark -
#pragma mark BaseViewDelegate

- (void)roomViewDidSwitchRoom:(SMRoomType)type {
    [self switchRoomType:type];
}

@end
