//
//  ViewController.m
//  ObjcCTennis
//
//  Created by Илья Кадыров on 26.04.2021.
//

#import "GameViewController.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define HALF_SCREEN_WIDTH SCREEN_WIDTH/2
#define HALF_SCREEN_HEIGHT SCREEN_HEIGHT/2
#define MAX_SCORE 6

@interface GameViewController ()

@end

@implementation GameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self config];
}


- (UIImageView*)settingPaddleTop:(NSString*)iamgePaddleName {
    _paddleTop = [[UIImageView alloc] initWithFrame:CGRectMake(30, 40, 90, 60)];
    _paddleTop.image = [UIImage imageNamed:iamgePaddleName];
    _paddleTop.contentMode = UIViewContentModeScaleAspectFit;
    return _paddleTop;
}

- (UIImageView*)settingPaddleBottom:(NSString*)iamgePaddleName {
    _paddleBottom = [[UIImageView alloc] initWithFrame:CGRectMake(30, SCREEN_HEIGHT - 90, 90, 60)];
    _paddleBottom.image = [UIImage imageNamed:@"paddle"];
    _paddleBottom.contentMode = UIViewContentModeScaleAspectFit;
    return _paddleBottom;
}

- (UIView*)settingGrid {
    _gridView = [[UIView alloc] initWithFrame:CGRectMake(0, HALF_SCREEN_HEIGHT - 2, SCREEN_WIDTH, 4)];
    _gridView.backgroundColor = [[UIColor whiteColor] colorWithAlphaComponent:0.5];
    return _gridView;
}

- (UIView*)settingBall {
    _ball = [[UIView alloc] initWithFrame:CGRectMake(self.view.center.x - 10, self.view.center.y - 10, 20, 20)];
    _ball.backgroundColor = [UIColor whiteColor];
    _ball.layer.cornerRadius = 10;
    _ball.hidden = YES;
    return _ball;
}

- (UILabel*)settingScoreTop {
    _scoreTop = [[UILabel alloc] initWithFrame:CGRectMake(SCREEN_WIDTH - 70, HALF_SCREEN_HEIGHT - 70, 50, 50)];
    _scoreTop.textColor = [UIColor whiteColor];
    _scoreTop.text = @"0";
    _scoreTop.font = [UIFont systemFontOfSize:40.0 weight:UIFontWeightLight];
    _scoreTop.textAlignment = NSTextAlignmentCenter;
    return _scoreTop;
}

- (UILabel*)settingScoreBottom {
    _scoreBottom = [[UILabel alloc] initWithFrame:CGRectMake(SCREEN_WIDTH - 70, HALF_SCREEN_HEIGHT + 70, 50, 50)];
    _scoreBottom.textColor = [UIColor whiteColor];
    _scoreBottom.text = @"0";
    _scoreBottom.font = [UIFont systemFontOfSize:40.0 weight:UIFontWeightLight];
    _scoreBottom.textAlignment = NSTextAlignmentCenter;
    return _scoreBottom;
}

- (void)config {
    self.view.backgroundColor = [UIColor colorWithRed:100.0/255.0 green:135.0/255.0 blue:191.0/255.0 alpha:1.0];
    
    [self.view addSubview:[self settingGrid]];
    [self.view addSubview: [self settingPaddleTop: @"paddle"]];
    [self.view addSubview:[self settingPaddleBottom: @"paddle"]];
    [self.view addSubview:[self settingBall]];
    [self.view addSubview:[self settingScoreTop]];
    [self.view addSubview:[self settingScoreBottom]];
    
    }


@end
