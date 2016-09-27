//
//  Car.m
//  LearnOC
//
//  Created by Quentin on 16-09-23.
//  Copyright © 2016年 edu.self. All rights reserved.
//

#import "Car.h"

static NSString *_defaultModel;

@implementation Car{
    // private instance variables
    double _odometer;
}

@synthesize model= _model;// optional for Xcode 4.4.+

@synthesize running = _running;

- (id)initWithModel:(NSString *)aModel {
    self = [super init];
    if (self) {
        // any custom setup work goes here
        _model = [aModel copy];
        _odometer = 0;
    }
    
    return self;
}
//
- (id)init{
    self = [super init];
    NSLog(@"init()");
    // forward to the "designated" initialization method
    return [self initWithModel:_defaultModel];
}

- (BOOL)running{
    return _running;
}

-(BOOL)isRunning{
    return _running;
}

- (void)startEngine{
    _running = YES;
}

- (void)stopEngine{
    _running = NO;
}

- (void)setRunning:(BOOL)newValue{
    _running = newValue;
}

- (void)drive{
    NSLog(@"Driving a %@. Vroooooom!", self.model);
}

+ (void)initialize{
    if (self == [Car class]) {
        // makes sure this is not executed more than once
        NSLog(@"initialize()");
        _defaultModel = @"Nissan Versa";
    }
}

+ (void)setDefaultModel:(NSString *)aModel {
    _defaultModel = [aModel copy];
}

+ (Car *) sharedCar{
    return self;
}

@end
