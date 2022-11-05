//
//  SMKTVChatRoomController.m
//  Demo
//
//  Created by weilihua on 2022/11/4.
//

#import "SMKTVChatRoomController.h"
#import "SMKTVGameRoomController.h"
#import "SMKTVChatRoomView.h"

@interface SMKTVChatRoomController ()

@property(nonatomic, strong)SMKTVChatRoomView *chatView;

@end

@implementation SMKTVChatRoomController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initView];
}

- (void)initView {
    self.chatView = [[SMKTVChatRoomView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.chatView];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 260, 100, 25);
    [button setTitle:@"切换游戏房" forState:UIControlStateNormal];
    [button setTitleColor:UIColor.blueColor forState:UIControlStateNormal];
    [button addTarget:self action:@selector(btnChatEvent:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)btnChatEvent:(UIButton *)sender {
    SMKTVGameRoomController *vc = [SMKTVGameRoomController new];
    [self.navigationController pushViewController:vc animated:NO];
    
    NSMutableArray *vcs = [NSMutableArray new];
    [vcs addObjectsFromArray:self.navigationController.viewControllers];
    [vcs enumerateObjectsUsingBlock:^(__kindof UIViewController * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj isKindOfClass:SMBaseKTVRoomController.class]) {
            [vcs removeObject:obj];
            *stop = YES;
        }
    }];
    self.navigationController.viewControllers = vcs;
}

@end
