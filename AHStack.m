//
//  Stack.m
//  Algorithms
//
//  Created by Amr El-Hagry on 1/17/16.
//  Copyright © 2016 Xcode Developer. All rights reserved.
//

#import "AHStack.h"

@implementation AHStack
@synthesize stack;
@synthesize objsNumber;
@synthesize max;

-(instancetype)init
{
    objsNumber=0;
    stack=[NSMutableArray new];
    max=0;
    return self;
}
-(void) removeAll
{
    [stack removeAllObjects];
}
-(BOOL) isEmpty
{
    if (objsNumber==0)
    {
        return YES;
    }
    return NO;
}
-(BOOL) isFull
{
    if (objsNumber==max)
    {
        return YES;
    }
    return NO;
}
-(void) push:(id)object
{
    if ([self isFull])
    {
        NSLog(@"stack is full");
    }
    else
    {
        [stack addObject:object];
        objsNumber++;    
    }
}
-(id) pop
{
    if ([self isEmpty]) {
        NSLog(@"stack is empty");
        return nil;
    }
    else
    {
        id object=[stack objectAtIndex:objsNumber-1];
        [stack removeLastObject];
        objsNumber--;
        return object;

    }
}
-(id) peek
{
    if ([self isEmpty]) {
        NSLog(@"stack is empty");
        return nil;
    }
    else
    {
        id object=[stack objectAtIndex:objsNumber];
        return object;
    }
}
-(int) count
{
    return objsNumber;
}
@end
