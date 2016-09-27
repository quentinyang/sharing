//
//  main.m
//  LearnOC
//
//  Created by Quentin on 16-09-21.
//  Copyright © 2016年 edu.self. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CarUtilities.h"
#import "Car.h"
#import "Bicycle.h"

NSString *InventoryErrorDomain = @"com.RyPress.Inventory.ErrorDomain";

enum {
    InventoryNotLoadedError,
    InventoryEmptyError,
    InventoryInternalError
};

// right 6 sections
int main(int argc, const char * argv[]){
    @autoreleasepool {
//        id <StreetLegal> mysteryVehicle = [[Car alloc] init];
//        [mysteryVehicle signalLeftTurn];
//        
//        mysteryVehicle = [[Bicycle alloc] init];
//        [mysteryVehicle signalLeftTurn];
        
        NSLog(@"---%d", arc4random());
        
        
        __block int i = 0;
        int (^count)(void) = ^ {
            i += 1;
            return i;
        };
        
        NSLog(@"%d", count());    // 1
        
        NSLog(@"%d", count());    // 2
        NSLog(@"%d", count());    // 3
        
//
//        Bicycle *bike = [[Bicycle alloc] init];
//        [bike startPedaling];
//        [bike signalLeftTurn];
//        [bike signalStop];
//        [bike lockToStructure:nil];
    }
}

// left 6 sections
int main2(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Car * toyota = [[Car alloc] init];
        
        
//        toyota.setModel("Toyota Corolla");
//        [toyota setModel:@"Toyota Corolla"];
        
//        [Car setDefaultModel:@"Nissan Versa"];
        
        NSLog(@"Created a %@", [toyota model]);
        
        toyota.model = @"Toyota Camry";
        
        NSLog(@"Changed the car to a %@", toyota.model);
        [toyota drive];
        
        NSLog(@"--------------------------");
        
        Car *chevy = [[Car alloc] initWithModel:@"Chevy Corvetta"];
        NSLog(@"Created a %@ too", chevy.model);
        
        [chevy drive];
        
        NSLog(@"--------------------------");
        
        Car *delorean = [[Car alloc] initWithModel:@"DeLorean"];
        NSLog(@"%@ is an instance of the %@ class", delorean.model, [delorean class]);
        // Check an object against a class and all subclasses
        if ([delorean isKindOfClass:[NSObject class]]) {
            NSLog(@"%@ is an instance of NSObject or one of its subclasses",
                  [delorean model]);
        } else {
            NSLog(@"%@ is not an instance of NSObject or "
                  "one of its subclasses", [delorean model]);
        }
        
        // Check an object against a class, but not its subclasses
        if ([delorean isMemberOfClass:[NSObject class]]) {
            NSLog(@"%@ is a instance of NSObject", [delorean model]);
        } else {
            NSLog(@"%@ is not an instance of NSObject", [delorean model]);
        }
        
        // Convert between strings and classes
        if (NSClassFromString(@"Car") == [Car class]) {
            NSLog(@"I can convert between strings and classes!");
        }
        
//        [delorean setRunning:YES];
//        delorean.running = YES;
        NSLog(@"------------%d--------------", delorean.running);
        NSLog(@"------------%d--------------", [delorean isRunning]);
        
        
        NSLog(@"--------------------------");
        Person *john = [[Person alloc] init];
        john.name = @"John";
        delorean.driver = john;
        john.car = delorean;
        NSLog(@"%@ is driving the %@", delorean.driver, delorean.model);
        
        Car *yamaha = [[Car alloc] init];
        NSMutableString *model = [NSMutableString stringWithString:@"YAMAHA"];
        yamaha.model = model;
        NSLog(@"%@", yamaha.model);
        [model setString:@"Nissa Versa"];
        NSLog(@"%@", yamaha.model);
        NSLog(@"%@", model);
        
        NSLog(@"--------------------------");
        
//        NSDictionary *makesAndModels = @{
//                                         @"Ford": @[@"Explorer", @"F-150"],
//                                         @"Honda": @[@"Accord", @"Civic", @"Pilot"],
//                                         @"Nissan": @[@"370Z", @"Altima", @"Versa"],
//                                         @"Porsche": @[@"911 Turbo", @"Boxster", @"Cayman S"]
//                                         };
//        NSString *randomCar = CUGetRandomMakeAndModel(makesAndModels);
//        NSLog(@"Selected a %@", randomCar);
//        
//        NSLog(@"Selected a %@", [@"p" stringByAppendingFormat:@" %@", @"dd"]) ;
        
        // insert code here...
//        NSLog(@"Hello, World!");
//        int year = 1967;          // Define a normal variable
//        int *pointer;             // Declare a pointer that points to an int
//        pointer = &year;          // Find the memory address of the variable
//        NSLog(@"%d", *pointer);   // Dereference the address to get its value
//        *pointer = 1990;          // Assign a new value to the memory address
//        pointer = NULL;
//        NSLog(@"%d", year);
        
//        int Year = 1967;
////        void *p = Year;
//        void *genericPointer = &Year;
//        Year = 100;
////        int *initTest = *genericPointer;//error
//        int *intPointer = (int *)genericPointer;
//        NSLog(@"%d", (int) *intPointer);
        
        
//        char model[5] = {'H', 'o', 'n', 'd', 'a'};
//        char *modelPointer = &model[0];
//        for (int i=0; i<5; i++) {
//            NSLog(@"Value at memory address %p is %c",
//                  modelPointer, *modelPointer);
//            modelPointer++;
//        }
//        NSLog(@"The first letter is %c", *(modelPointer - 5));
        
        
    }
    return 0;
}
