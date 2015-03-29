//
//  SHCReversiBoard.m
//  SHCReversiGame
//
//  Created by lavalamp on 3/30/15.
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
}
@end
