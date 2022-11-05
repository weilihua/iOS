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

@end

@implementation SMKTVChatRoomController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initView];
}

- (void)initView {
    self.baseView = [[SMKTVChatRoomView alloc] initWithFrame:self.view.bounds];
    self.baseView.delegate = self;
    [self.view addSubview:self.baseView];
}

@end
