//DraggableView is the UIView of the swipable cards

#import <UIKit/UIKit.h>
#import "OverlayView.h"

@protocol DraggableViewDelegate <NSObject>

-(void)cardSwipedLeft:(UIView *)card;
-(void)cardSwipedRight:(UIView *)card;

@end

@interface DraggableView : UIView

@property (weak) id <DraggableViewDelegate> delegate;

@property (nonatomic, strong)UIPanGestureRecognizer *panGestureRecognizer;
@property (nonatomic)CGPoint originalPoint;
@property (nonatomic,strong)OverlayView* overlayView;
@property (nonatomic,strong)UILabel* information;
@property (nonatomic, strong)UIImage* picture;

-(void)leftClickAction;
-(void)rightClickAction;
-(void)loadImageAndStyle;

@end
