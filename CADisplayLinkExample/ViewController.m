//
//  ViewController.m
//  CADisplayLinkExample
//
//  Created by RatnaPaul on 11/19/14.
//  . All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //create display link for the smooth animation
    displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(refreshView)];
    
    //fire the method for every 2nd frame of 60.
    displayLink.frameInterval = 2;
    
    //add the display link to the runloop
    [displayLink addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
}


/*
 
 Changes the color of the view from black - red - black
 
 
 */
-(void)refreshView
{
    static int i = 0;
    self.view.backgroundColor = [UIColor colorWithWhite:(i%255)/255.f alpha:1];
    i+=5;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
