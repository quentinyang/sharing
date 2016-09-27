//
//  Car.h
//  LearnOC
//
//  Created by Quentin on 16-09-23.
//  Copyright © 2016年 edu.self. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "Person.h"
#import "StreetLegal.h"

@interface Car : NSObject  {
//     Protected instance variables (not recommended)
}

@property (getter=isRunning, readonly) BOOL running;

@property(nonatomic, copy) NSString *model;

@property (nonatomic, strong) Person *driver;



+ (void)setDefaultModel:(NSString *)aModel;

// Accessors
- (BOOL)isRunning;
- (void)setRunning:(BOOL)running;
- (NSString *)model;
- (void)setModel:(NSString *)model;

// Calculated values
- (double)maximumSpeed;
- (double)maximumSpeedUsingLocale:(NSLocale *)locale;

// Action methods
- (void)drive;
- (void)startEngine;
- (void)driveForDistance:(double)theDistance;
- (void)driveFromOrigin:(id)theOrigin toDestination:(id)theDestination;
- (void)turnByAngle:(double)theAngle;
- (void)turnToAngle:(double)theAngle;

// Error handling methods
- (BOOL)loadPassenger:(id)aPassenger error:(NSError **)error;

// Constructor methods
- (id)initWithModel:(NSString *)aModel;
- (id)initWithModel:(NSString *)aModel mileage:(double)theMileage;

// Comparison methods
- (BOOL)isEqualToCar:(Car *)anotherCar;
- (Car *)fasterCar:(Car *)anotherCar;
- (Car *)slowerCar:(Car *)anotherCar;

// Factory methods
+ (Car *)car;
+ (Car *)carWithModel:(NSString *)aModel;
+ (Car *)carWithModel:(NSString *)aModel mileage:(double)theMileage;

// Singleton methods
+ (Car *)sharedCar;


@end
