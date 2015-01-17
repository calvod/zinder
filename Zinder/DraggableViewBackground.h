//UIView that holds the DraggableView, on top of ViewController

#import <UIKit/UIKit.h>
#import "DraggableView.h"
#import "FavoritesViewController.h"

@interface DraggableViewBackground : UIView <DraggableViewDelegate>

//methods called in DraggableView
-(void)cardSwipedLeft:(UIView *)card;
-(void)cardSwipedRight:(UIView *)card;

@property (retain,nonatomic)NSArray* exampleCardLabels;
@property (retain,nonatomic)NSMutableArray* allCards;
@property (retain,nonatomic)FavoritesViewController* favorites;


@end
