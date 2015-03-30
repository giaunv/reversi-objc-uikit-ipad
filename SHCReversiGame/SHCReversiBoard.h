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

// sets the board to the opening positions for Reversi
-(void) setToInitialState;
@end
