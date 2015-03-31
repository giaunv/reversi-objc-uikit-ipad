//
//  SHCReversiBoard.m
//  SHCReversiGame
//
//  Created by giaunv on 3/30/15.
//  Copyright (c) 2015 Colin Eberhardt. All rights reserved.
//

#import "SHCReversiBoard.h"

@implementation SHCReversiBoard
-(void)setToInitialState{
    // clear the board
    [super clearBoard];
    
    // add initial player counters
    [super setCellState:BoardCellStateWhitePiece forColumn:3 andRow:3];
    [super setCellState:BoardCellStateBlackPiece forColumn:4 andRow:3];
    [super setCellState:BoardCellStateBlackPiece forColumn:3 andRow:4];
    [super setCellState:BoardCellStateWhitePiece forColumn:4 andRow:4];
    
    _whiteScore = 2;
    _blackScore = 2;
    
    // Black gets the first turn
    _nextMove = BoardCellStateBlackPiece;
}

-(BOOL)isValidMoveToColumn:(NSInteger)column andRow:(NSInteger)row{
    // check the cell is empty
    if ([super cellStateAtColumn:column andRow:row] != BoardCellStateEmpty) {
        return NO;
    }
    
    return YES;
}

-(void)makeMoveToColumn:(NSInteger)column andRow:(NSInteger)row{
    // place the playing piece at the given location
    [self setCellState:self.nextMove forColumn:column andRow:row];
    
    _nextMove = [self invertState:_nextMove];
}

-(BoardCellState)invertState:(BoardCellState)state{
    if (state == BoardCellStateBlackPiece) {
        return BoardCellStateWhitePiece;
    }
    
    if (state == BoardCellStateWhitePiece) {
        return BoardCellStateBlackPiece;
    }
    
    return BoardCellStateEmpty;
}
@end
