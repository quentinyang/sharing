//
//  StreetLegal.h
//  LearnOC
//
//  Created by Quentin on 16-09-26.
//  Copyright © 2016年 edu.self. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol StreetLegal <NSObject>

- (void)signalStop;
- (void)signalLeftTurn;
- (void)signalRightTurn;

@end
