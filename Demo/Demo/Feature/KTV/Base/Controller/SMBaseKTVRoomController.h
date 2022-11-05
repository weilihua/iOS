//
//  SMBaseKTVRoomController.h
//  Demo
//
//  Created by weilihua on 2022/11/4.
//

#import <UIKit/UIKit.h>
#import "SMBaseKTVRoomView.h"

NS_ASSUME_NONNULL_BEGIN

@interface SMBaseKTVRoomController : UIViewController<SMBaseKTVRoomViewDelegate>

@property(nonatomic, strong)SMBaseKTVRoomView *baseView;

@end

NS_ASSUME_NONNULL_END
