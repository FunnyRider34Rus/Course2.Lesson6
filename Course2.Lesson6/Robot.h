//
//  Robot.h
//  Course2.Lesson6
//
//  Created by Павел on 25.09.2023.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Robot : NSObject

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, strong) NSString *name;

- (instancetype) initWithCoord:(CGFloat)x y:(CGFloat)y name:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
