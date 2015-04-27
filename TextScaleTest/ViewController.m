//
//  ViewController.m
//  TextScaleTest
//
//  Created by Brian Sharon on 4/22/15.
//  Copyright (c) 2015 FiftyThree. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *right;
@property (weak, nonatomic) IBOutlet UITextView *left;
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.right.text = self.left.text;
    self.right.minimumZoomScale = self.slider.minimumValue;
    self.right.maximumZoomScale = self.slider.maximumValue;
    self.right.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sliderChanged:(id)sender {
    //CGAffineTransform scale = CGAffineTransformMakeScale(self.slider.value, self.slider.value);
    //self.right.transform = scale;
    self.right.zoomScale = self.slider.value;
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.right.subviews[0];
}

@end
