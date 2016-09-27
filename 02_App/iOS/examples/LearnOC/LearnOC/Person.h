//
//  Person.h
//  LearnOC
//
//  Created by Quentin on 16-09-24.
//  Copyright © 2016年 edu.self. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Car;

@interface Person : NSObject

@property (nonatomic)NSString *name;

@property (nonatomic, weak) Car *car;

@end
