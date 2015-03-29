//
//  SHCBoardSquare.h
//  SHCReversiGame
//
//  Created by lavalamp on 3/30/15.
//  Copyright (c) 2015 Colin Eberhardt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SHCReversiBoard.h"

@interface SHCBoardSquare : UIView
-(id)initWithFrame:(CGRect)frame column:(NSInteger)column row:(NSInteger)row board:(SHCReversiBoard*)board;
@end
