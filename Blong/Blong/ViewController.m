//
//  ViewController.m
//  Blong
//
//  Created by Brandon Wade on 10/7/15.
//  Copyright © 2015 Brandon Wade. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    //Create the playable area
    UIView *playArea = [[UIView alloc] initWithFrame:CGRectMake( 0 , 40, self.view.frame.size.width, (self.view.frame.size.height + 10))];
    playArea.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:playArea];
    
    //Top and bottom borders will be needed for collision and push behaviors
    UIView *topBorder = [[UIView alloc] initWithFrame:CGRectMake(0, 40, playArea.frame.size.width, 1)];
    topBorder.backgroundColor = [UIColor blackColor];
    [self.view addSubview:topBorder];
    
    UIView *bottomBorder = [[UIView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(playArea.frame), playArea.frame.size.width, 1)];
    bottomBorder.backgroundColor = [UIColor blackColor];
    [self.view addSubview:bottomBorder];
    
    
    
    // Create midfield line
    UIView *midFieldLine = [[UIView alloc] initWithFrame:CGRectMake(CGRectGetMidX(playArea.frame), 40, 1.0 , playArea.frame.size.height)];
    midFieldLine.backgroundColor = [UIColor blackColor];
    [self.view addSubview:midFieldLine];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
