//
//  SHCBoardSquare.h
//  SHCReversiGame
//
//  Created by giaunv on 3/30/15.
//  Copyright (c) 2015 Colin Eberhardt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SHCReversiBoard.h"
#import "SHCBoardDelegate.h"

@interface SHCBoardSquare : UIView <SHCBoardDelegate>
-(id)initWithFrame:(CGRect)frame column:(NSInteger)column row:(NSInteger)row board:(SHCReversiBoard*)board;
@end
