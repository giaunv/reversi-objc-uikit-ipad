//
//  SHCBoardSquare.m
//  SHCReversiGame
//
//  Created by lavalamp on 3/30/15.
//  Copyright (c) 2015 Colin Eberhardt. All rights reserved.
//

#import "SHCBoardSquare.h"

@implementation SHCBoardSquare{
    int _row;
    int _column;
    SHCReversiBoard* _board;
    UIImageView* _blackView;
    UIImageView* _whiteView;
}

-(id)initWithFrame:(CGRect)frame column:(NSInteger)column row:(NSInteger)row board:(SHCReversiBoard *)board{
    self = [super initWithFrame:frame];
    if (self) {
        _row = row;
        _column = column;
        _board = board;
        
        // create the views for the playing piece graphics
        UIImage* blackImage = [UIImage imageNamed:@"ReversiBlackPiece.png"];
        _blackView = [[UIImageView alloc] initWithImage:blackImage];
        _blackView.alpha = 0.0;
        [self addSubview:_blackView];
        
        UIImage* whiteImage = [UIImage imageNamed:@"ReversiWhitePiece.png"];
        _whiteView = [[UIImageView alloc] initWithImage:whiteImage];
        _whiteView.alpha = 0.0;
        [self addSubview:_whiteView];
        
        self.backgroundColor = [UIColor clearColor];
        
        [self update];
    }
    
    return self;
}

// updates the UI State
-(void)update{
    // show/hide the images based on the cell state
    BoardCellState state = [_board cellStateAtColumn:_column andRow:_row];
    _whiteView.alpha = state == BoardCellStateWhitePiece ? 1.0 : 0.0;
    _blackView.alpha = state == BoardCellStateBlackPiece ? 1.0 : 0.0;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
