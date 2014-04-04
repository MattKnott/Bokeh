//
//  ViewController.m
//  Bokeh
//
//  Created by Matthew Knott on 04/04/2014.
//  Copyright (c) 2014 Matthew Knott. All rights reserved.
//

#import "ViewController.h"
#import "SKBokkeScene.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet SKView *skBokkeBackground;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    SKBokkeScene * scene = [SKBokkeScene sceneWithSize:_skBokkeBackground.bounds.size];
    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    [_skBokkeBackground presentScene:scene];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
