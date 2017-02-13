//
//  testModel.m
//  webDemo
//
//  Created by 一览ios on 2017/2/8.
//  Copyright © 2017年 一览ios. All rights reserved.
//

#import "testModel.h"

@implementation testModel

@synthesize name;
@synthesize sex;

- (instancetype)init
{
    if (self = [super init]) {
        
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:name forKey:@"kName"];
    [aCoder encodeObject:sex forKey:@"kSex"];
}

- (nullable instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super init]) {
        name = [aDecoder decodeObjectForKey:@"kName"];
        sex = [aDecoder decodeObjectForKey:@"kSex"];
    }
    return self;
}

@end
