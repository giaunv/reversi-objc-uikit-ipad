//
//  SHCReversiBoard.h
//  SHCReversiGame
//
//  Created by giaunv on 3/30/15.
//  Copyright (c) 2015 Colin Eberhardt. All rights reserved.
//

#import "SHCBoard.h"

@interface SHCReversiBoard : SHCBoard

// the white player's score
@property (readonly) NSInteger whiteScore;

// the black player's score
@property (readonly) NSInteger blackScore;

// indicate the player who makes the next move
@property (readonly) BoardCellState nextMove;

// sets the board to the opening positions for Reversi
-(void) setToInitialState;

// Returns whether the player who's turn it is can make the given move
-(bool) isValidMoveToColumn:(NSInteger)column andRow:(NSInteger)row;

// Make the given move for the player who is currently taking their turn
-(void) makeMoveToColumn:(NSInteger)column andRow:(NSInteger)row;
@end
