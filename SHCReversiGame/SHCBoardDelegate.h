//
//  SHCBoardDelegate.h
//  SHCReversiGame
//
//  Created by giaunv on 3/30/15.
//  Copyright (c) 2015 Colin Eberhardt. All rights reserved.
//

#import "BoardCellState.h"

@protocol SHCBoardDelegate <NSObject>
-(void)cellStateChanged:(BoardCellState)state forColumn:(int)column andRow:(int)row;
@end
