//
//  Stack.h
//  Algorithms
//
//  Created by Amr El-Hagry on 1/17/16.
//  Copyright © 2016 Xcode Developer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AHStack : NSObject

@property (strong, nonatomic) NSMutableArray *stack;
@property (readonly, nonatomic) int objsNumber;
@property (readwrite, nonatomic) int max;

-(void) removeAll;
-(BOOL) isEmpty;
-(BOOL) isFull;

-(void) push:(id)object;
-(id) pop;
-(id) peek;
-(int) count;

@end
