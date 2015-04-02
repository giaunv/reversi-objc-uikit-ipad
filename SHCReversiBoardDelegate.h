//
//  SHCReversiBoardDelegate.h
//  SHCReversiGame
//
//  Created by giaunv on 4/1/15.
//  Copyright (c) 2015 Colin Eberhardt. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SHCReversiBoardDelegate <NSObject>
// indicates that the game state has changed
-(void) gameStateChanged;
@end
