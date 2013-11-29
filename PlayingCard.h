//
//  PlayingCard.h
//  Matchismo
//
//  Created by Gnanasuriyan on 24/11/13.
//  Copyright (c) 2013 Gnanasuriyan. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property(strong, nonatomic)NSString *suit;
@property(nonatomic)NSUInteger rank;
+(NSArray *) validSuits;
+(NSUInteger)maxRank;
@end
