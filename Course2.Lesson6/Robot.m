//
//  Robot.m
//  Course2.Lesson6
//
//  Created by Павел on 25.09.2023.
//

#import "Robot.h"

@implementation Robot

- (instancetype) initWithCoord:(CGFloat)x y:(CGFloat)y name:(NSString *)name {
    self = [super init];
    if (self) {
        _x = x;
        _y = y;
        _name = name; }
    return self;
}

- (instancetype) initWithCoder:(NSCoder *)coder {
    self = [super init];
    if (self) {
        _x = [coder decodeFloatForKey:@"x"];
        _y = [coder decodeFloatForKey:@"y"];
        _name = [coder decodeObjectForKey:@"name"];
    }
    return self;
}

- (void) encodeWithCoder:(nonnull NSCoder *)coder {
    [coder encodeFloat:self.x forKey:@"x"];
    [coder encodeFloat:self.y forKey:@"y"];
    [coder encodeObject:self.name forKey:@"name"];
}

@end
