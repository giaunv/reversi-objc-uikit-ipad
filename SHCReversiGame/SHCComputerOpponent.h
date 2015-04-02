//
//  SHCComputerOpponent.h
//  SHCReversiGame
//
//  Created by giaunv on 4/2/15.
//  Copyright (c) 2015 Colin Eberhardt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SHCReversiBoardDelegate.h"
#import "SHCReversiBoard.h"

/* A single computer opponent. */
@interface SHCComputerOpponent : NSObject<SHCReversiBoardDelegate>
-(id)initWithBoard:(SHCReversiBoard*)board color:(BoardCellState)computerColor maxDepth:(NSInteger)depth;
@end
