//
//  ViewController.h
//  ObjcCTennis
//
//  Created by Илья Кадыров on 26.04.2021.
//

#import <UIKit/UIKit.h>

@interface GameViewController : UIViewController

@property (strong, nonatomic) UIImageView *paddleTop;
@property (strong, nonatomic) UIImageView *paddleBottom;
@property (strong, nonatomic) UIView *gridView;
@property (strong, nonatomic) UIView *ball;
@property (strong, nonatomic) UITouch *topTouch;
@property (strong, nonatomic) UITouch *bottomTouch;
@property (strong, nonatomic) NSTimer * timer;
@property (nonatomic) float dx;
@property (nonatomic) float dy;
@property (nonatomic) float speed;
@property (strong, nonatomic) UILabel *scoreTop;
@property (strong, nonatomic) UILabel *scoreBottom;

@end

