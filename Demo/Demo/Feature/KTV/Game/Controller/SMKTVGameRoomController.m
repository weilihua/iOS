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

@end

@implementation SMKTVGameRoomController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initGameView];
}

- (void)initGameView {
    self.baseView = [[SMKTVGameRoomView alloc] initWithFrame:self.view.bounds];
    self.baseView.delegate = self;
    [self.view addSubview:self.baseView];
}



@end
