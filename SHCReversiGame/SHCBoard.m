//
//  SHCBoard.m
//  SHCReversiGame
//
//  Created by giaunv on 3/29/15.
//  Copyright (c) 2015 Colin Eberhardt. All rights reserved.
//

#import "SHCBoard.h"
#import "SHCBoardDelegate.h"

@implementation SHCBoard{
    NSUInteger _board[8][8];
    id<SHCBoardDelegate> _delegate;
}

-(id)init{
    if (self = [super init]) {
        [self clearBoard];
        _boardDelegate = [[SHCMulticastDelegate alloc] init];
        _delegate = (id)_boardDelegate;
    }
    
    return self;
}

-(BoardCellState)cellStateAtColumn:(NSInteger)column andRow:(NSInteger)row{
    [self checkBoundsForColumn:column andRow:row];
    return _board[column][row];
};

-(void)setCellState:(BoardCellState)state forColumn:(NSInteger)column andRow:(NSInteger)row{
    [self checkBoundsForColumn:column andRow:row];
    _board[column][row] = state;
    [self informDelegateOfStateChanged:state forColumn:column  andRow:row];
}

-(void)checkBoundsForColumn:(NSInteger)column andRow:(NSInteger)row{
    if (column < 0 || column > 7 || row < 0 || row > 7) {
        [NSException raise:NSRangeException format:@"row or column out of bounds"];
    }
}

-(void)clearBoard{
    memset(_board, 0, sizeof(NSUInteger)*8*8);
    [self informDelegateOfStateChanged:BoardCellStateEmpty forColumn:-1 andRow:-1];
}

-(void)informDelegateOfStateChanged:(BoardCellState)state forColumn:(NSInteger)column andRow:(NSInteger)row{
    if ([_delegate respondsToSelector:@selector(cellStateChanged:forColumn:andRow:)]) {
        [_delegate cellStateChanged:state forColumn:column andRow:row];
    }
}

@end
