//
//  SMKTVManager.h
//  Demo
//
//  Created by weilihua on 2022/11/5.
//

#import <Foundation/Foundation.h>
#import "SMRoom.h"
#import "SMUser.h"
#import "SMSeat.h"
#import "SMMessage.h"

NS_ASSUME_NONNULL_BEGIN

extern NSString *kSMNewKTVListViewController;

@interface SMKTVManager : NSObject

@property(nonatomic, strong, readonly, nullable)SMRoom *room;
@property(nonatomic, strong, readonly, nullable)NSArray<SMUser*> *users;
@property(nonatomic, strong, readonly, nullable)NSArray<SMUser*> *seats;
@property(nonatomic, strong, readonly, nullable)NSArray<SMUser*> *messages;

// 生成单例对象
+ (instancetype)share;

/// 获取房间信息
+ (void)requestRoomInfoWithId:(NSInteger)roomId
                  resultBlock:(void(^)(SMRoom *room, NSError *error))resultBlock;

/// 请求加入房间
+ (void)requestJoinRoom;

/// 切换房间
+ (void)switchRoomWityType:(SMRoomType)type;

@end

NS_ASSUME_NONNULL_END
