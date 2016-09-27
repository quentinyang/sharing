//
//  Bicycle.h
//  LearnOC
//
//  Created by Quentin on 16-09-26.
//  Copyright © 2016年 edu.self. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StreetLegal.h"

@interface Bicycle:NSObject <StreetLegal>

- (void)startPedaling;
- (void)removeFrontWheel;
- (void)lockToStructure:(id)theStructure;

@end
