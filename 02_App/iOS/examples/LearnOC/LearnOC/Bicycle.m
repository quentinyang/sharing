//
//  Bicycle.m
//  LearnOC
//
//  Created by Quentin on 16-09-26.
//  Copyright © 2016年 edu.self. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bicycle.h"

@implementation Bicycle

// protocals
- (void)signalStop {
    NSLog(@"Bending left arm downwards");
}
- (void)signalLeftTurn {
    NSLog(@"Extending left arm outwards");
}
- (void)signalRightTurn {
    NSLog(@"Bending left arm upwards");
}

// methods
- (void)startPedaling {
    NSLog(@"Here we go!");
}
- (void)removeFrontWheel {
    NSLog(@"Front wheel is off."
          "Should probably replace that before pedaling...");
}
- (void)lockToStructure:(id)theStructure {
    NSLog(@"Locked to structure. Don't forget the combination!");
}


@end