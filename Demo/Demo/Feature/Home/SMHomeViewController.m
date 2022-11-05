//
//  SMHomeViewController.m
//  Demo
//
//  Created by weilihua on 2022/11/4.
//

#import "SMHomeViewController.h"
#import "SMKTVChatRoomController.h"

@interface SMHomeViewController ()

@end

@implementation SMHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = UIColor.whiteColor;
    [self initView];
}

- (void)initView {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 200, 100, 25);
    [button setTitle:@"KTV Chat" forState:UIControlStateNormal];
    [button setTitleColor:UIColor.blueColor forState:UIControlStateNormal];
    [button addTarget:self action:@selector(btnChatEvent:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)btnChatEvent:(UIButton *)sender {
    SMKTVChatRoomController *vc = [SMKTVChatRoomController new];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
