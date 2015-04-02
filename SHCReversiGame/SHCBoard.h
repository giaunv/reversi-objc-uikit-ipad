//
//  SHCBoard.h
//  SHCReversiGame
//
//  Created by giaunv on 3/29/15.
//  Copyright (c) 2015 Colin Eberhardt. All rights reserved.
//

#import "BoardCellState.h"
#import "SHCMulticastDelegate.h"

/* An 8x8 playing board. */
@interface SHCBoard : NSObject<NSCopying>
// multicasts changes in cell state. Each delegate is informed of changes in state of individual cells.
@property (readonly) SHCMulticastDelegate* boardDelegate;

// get the state of the cell at the given location
-(BoardCellState)cellStateAtColumn:(NSInteger)column andRow:(NSInteger)row;

// set the state of the cell at the given location
-(void)setCellState:(BoardCellState)state forColumn:(NSInteger)column andRow:(NSInteger)row;

// clears the entire board;
-(void)clearBoard;

// counts the number of cells with the given state
-(NSUInteger) countCellsWithState:(BoardCellState)state;
@end