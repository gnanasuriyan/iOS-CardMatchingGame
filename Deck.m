//
//  Deck.m
//  Matchismo
//
//  Created by Gnanasuriyan on 24/11/13.
//  Copyright (c) 2013 Gnanasuriyan. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property(strong, nonatomic)NSMutableArray *cards;
@end

@implementation Deck

-(NSMutableArray *)cards {
    //Lazy instantiation of cards array.
    if(!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

-(void)addCard:(Card *)card atTop:(BOOL)atTop{
    if(card != nil) {
        if(atTop) {
            [self.cards insertObject:card atIndex:0];
        } else {
            [self.cards addObject:card];
        }
    }
}

-(Card *)drawRandomCard {
    Card *randomCard = nil;
    if(self.cards.count) {
        unsigned int index = arc4random() % self.cards.count;
        randomCard = self.cards[index]; //New way of accessing array elements and introduced in iOS6.
        //randomCard = [self.cards objectAtIndex:index]; //the method commonly used in iOS5 or before
    }
    return randomCard;
}

@end
