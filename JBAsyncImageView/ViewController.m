//
//  ViewController.m
//  JBAsyncImageView
//
//  Created by Jesse Bunch on 12/31/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "JBAsyncImageView.h"

@implementation ViewController



#pragma mark - View lifecycle

- (void)viewDidLoad {

    [super viewDidLoad];
	
	// Success
//	asyncImageView.imageURL = [NSURL URLWithString:@"http://f.cl.ly/items/3T0V0w0G3D0Q411k1p1n/congrats.png"];
	
	// Wrong MIME
//	asyncImageView.imageURL = [NSURL URLWithString:@"http://f.cl.ly/items/2y0m1S1w0A2y022z3d2Y/wrong%20mime.txt"];
	
	// Failed loading
	asyncImageView.imageURL = [NSURL URLWithString:@"asdfasdfasdf"];
	
}

- (void)viewDidUnload {
	asyncImageView = nil;
    [super viewDidUnload];

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return YES;
}

@end
