//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by Gnanasuriyan on 29/11/13.
//  Copyright (c) 2013 Gnanasuriyan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject

-(id)initWithCardCount:(NSUInteger)cardCount usingDeck:(Deck *) deck;
-(void)flipCardAtIndex:(NSUInteger)index;
-(Card *)cardAtIndex : (NSUInteger)index;
@property (nonatomic,readonly)int score;

@end
