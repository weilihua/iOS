//
//  SMKTVGameRoomController.m
//  Demo
//
//  Created by weilihua on 2022/11/4.
//

#import "SMKTVGameRoomController.h"
#import "SMKTVChatRoomController.h"
#import "SMKTVGameRoomView.h"

@interface SMKTVGameRoomController ()

@property(nonatomic, strong)SMKTVGameRoomView *gameView;

@end

@implementation SMKTVGameRoomController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initView];
}

- (void)initView {
    self.gameView = [[SMKTVGameRoomView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.gameView];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 260, 100, 25);
    [button setTitle:@"切换聊天房" forState:UIControlStateNormal];
    [button setTitleColor:UIColor.blueColor forState:UIControlStateNormal];
    [button addTarget:self action:@selector(btnChatEvent:) forControlEvents:UIControlEventTouchUpInside];
    [self.gameView addSubview:button];
}

- (void)btnChatEvent:(UIButton *)sender {
    SMKTVChatRoomController *vc = [SMKTVChatRoomController new];
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
