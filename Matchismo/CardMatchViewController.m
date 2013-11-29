//
//  CardMatchViewController.m
//  Matchismo
//
//  Created by Gnanasuriyan on 23/11/13.
//  Copyright (c) 2013 Gnanasuriyan. All rights reserved.
//

#import "CardMatchViewController.h"
#import "PlayingCardDeck.h"
#import "CardMatchingGame.h"

@interface CardMatchViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property(nonatomic) int flipCount;
@property(strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
//@property(strong, nonatomic) Deck *deck;
@property(strong, nonatomic) CardMatchingGame *game;

@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

@end

@implementation CardMatchViewController

-(void)setCardButtons:(NSArray *)cardButtons {
    _cardButtons = cardButtons;
    [self updateUI];
    
    /*for(UIButton *cardButton in cardButtons) {
        Card *card = [self.deck drawRandomCard];
        [cardButton setTitle:card.contents forState:UIControlStateSelected];
    }*/
}
-(void)updateUI {
    for(UIButton *cardButton in self.cardButtons) {
        Card *card = [self.game cardAtIndex:[self.cardButtons indexOfObject:cardButton]];
        [cardButton setTitle:card.contents forState:UIControlStateSelected];
        cardButton.selected = card.isFaceup;
        cardButton.enabled = !card.isUnplayable;
        cardButton.alpha = card.isUnplayable ? 0.3 : 1.0;
    }
    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %d", self.game.score];
}
-(CardMatchingGame *)game {
    if(!_game) _game = [[[CardMatchingGame alloc]init] initWithCardCount:self.cardButtons.count usingDeck:[[PlayingCardDeck alloc]init]];
    return _game;
}
/*-(Deck *)deck {
    if(!_deck) _deck = [[PlayingCardDeck alloc]init];
    return _deck;
}*/
- (IBAction)flipCard:(UIButton *)sender {
    [self.game flipCardAtIndex:[self.cardButtons indexOfObject:sender]];
    /*sender.selected = !sender.selected;*/
    self.flipCount++;
    [self updateUI];
}
-(void)setFlipCount:(int)flipCount {
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

@end
