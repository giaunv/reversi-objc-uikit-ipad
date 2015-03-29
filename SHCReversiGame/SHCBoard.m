//
//  SHCBoard.m
//  SHCReversiGame
//
//  Created by giaunv on 3/29/15.
//  Copyright (c) 2015 Colin Eberhardt. All rights reserved.
//

#import "SHCBoard.h"

@implementation SHCBoard{
    NSUInteger _board[8][8];
}

-(id)init{
    if (self = [super init]) {
        [self clearBoard];
    }
    
    return self;
}

-(BoardCellState)cellStateAtColumn:(NSInteger)column andRow:(NSInteger)row{
    return _board[column][row];
};

-(void)setCellState:(BoardCellState)state forColumn:(NSInteger)column andRow:(NSInteger)row{
    _board[column][row] = state;
}

-(void)clearBoard{
    memset(_board, 0, sizeof(NSUInteger)*8*8);
}

@end
