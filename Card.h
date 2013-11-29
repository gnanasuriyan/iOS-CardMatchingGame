//
//  Card.h
//  Matchismo
//
//  Created by Gnanasuriyan on 24/11/13.
//  Copyright (c) 2013 Gnanasuriyan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property(strong, nonatomic) NSString *contents;
@property(nonatomic, getter = isFaceup) BOOL faceUp;
@property(nonatomic, getter = isUnplayable)BOOL unplayable;

-(int)match : (NSArray *)otherCards;

@end
