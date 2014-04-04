//
//  SKBokkeScene.m
//  Bokke
//
//  Created by Matthew Knott on 30/03/2014.
//  Copyright (c) 2014 Matthew Knott. All rights reserved.
//

#import "SKBokkeScene.h"

@implementation SKBokkeScene

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        self.backgroundColor = [SKColor blackColor];
        
        NSString *emitterPath = [[NSBundle mainBundle]
                                 pathForResource:@"particleRain" ofType:@"sks"];
        SKEmitterNode *bling = [NSKeyedUnarchiver
                                unarchiveObjectWithFile:emitterPath];
        bling.position = CGPointMake(CGRectGetMidX(self.frame), self.size.height/2);;
        bling.name = @"particleBokeh";
        bling.targetNode = self.scene;
        [self addChild:bling];

        
    }
    
    return self;
}

@end
