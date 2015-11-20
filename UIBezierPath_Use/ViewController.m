//
//  ViewController.m
//  UIBezierPath_Use
//
//  Created by starnet on 11/19/15.
//  Copyright © 2015 JJ. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+JJImage.h"

@interface ViewController ()
{
    UIImageView *imageView;
    UIImageView *imageView2;
    CGFloat angle;
    CGFloat x;
    BOOL isPositive;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithWhite:0.9 alpha:0.9];
    // Do any additional setup after loading the view, typically from a nib.
    imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 300, 300)];
    imageView2 = [[UIImageView alloc] initWithFrame:CGRectMake(50, 400, 300, 300)];
    angle = 0;
    x = 145;
    isPositive = YES;
    [self.view addSubview:imageView2];
    [self.view addSubview:imageView];
    imageView.image = [UIImage CreateJJBladeImage];
    imageView2.image = [UIImage CreateJJTaiJiTu];
    [NSTimer scheduledTimerWithTimeInterval:0.02 target:self selector:@selector(startRotation) userInfo:nil repeats:YES];
    [NSTimer scheduledTimerWithTimeInterval:0.4 target:self selector:@selector(startHop) userInfo:nil repeats:YES];
    imageView.center = self.view.center;
//    imageView2.center = CGPointMake(self.view.bounds.size.width/2, self.view.bounds.size.height/5*4);

}

- (void)startRotation
{
    CGAffineTransform t = CGAffineTransformMakeScale(1.0, 1.0);
    t = CGAffineTransformRotate(t, M_PI_2/10.0 + angle);
    angle += M_PI/5.0;
    if (angle >M_PI) {
        angle = 0;
    }
    imageView.transform = t;
}

- (void)startHop
{
//    int w = self.view.bounds.size.width - 290;
//    int h = self.view.bounds.size.height - 290;
//    imageView2.center = CGPointMake(arc4random() % w +145, arc4random() % h + 145);
    CGPoint point = imageView2.center;
    point.x = x;
    if (isPositive) {
        x += 5;
    }
    else
    {
        x -=5;
    }
    if (x > self.view.bounds.size.width - 145) {
        isPositive = NO;
    }
    if (x <145) {
        isPositive = YES;
    }
    /** y = sin(x)*sin(x^2) */
    float xTmp = 32 * (x - self.view.bounds.size.width / 2) / self.view.bounds.size.width;
    float xxTmp = xTmp * xTmp;
    CGFloat y = (self.view.bounds.size.height/2 - 145) * sinf(xTmp)*sinf(xxTmp) + self.view.bounds.size.height/2;
    point.y = y;
    imageView2.center = point;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
