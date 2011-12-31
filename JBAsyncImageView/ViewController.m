//
//  ViewController.m
//  JBAsyncImageView
//
//  Created by Jesse Bunch on 12/31/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController



#pragma mark - View lifecycle

- (void)viewDidLoad {

    [super viewDidLoad];
	
	// No cache while testing, remove for production
	asyncImageView.cachesImage = NO;
	asyncImageView.delegate = self;
	
	// Success (delegate notified of success)
	asyncImageView.imageURL = [NSURL URLWithString:@"http://f.cl.ly/items/3T0V0w0G3D0Q411k1p1n/congrats.png"];
	
	// Wrong MIME Error (delegate gets custom NSError about MIME type)
//	asyncImageView.imageURL = [NSURL URLWithString:@"http://f.cl.ly/items/2y0m1S1w0A2y022z3d2Y/wrong%20mime.txt"];
	
	// Failed loading Error (delegate gets NSError from NSURLConnection delegate)
//	asyncImageView.imageURL = [NSURL URLWithString:@"asdfasdfasdf"];
	
}

- (void)viewDidUnload {
	asyncImageView = nil;
    [super viewDidUnload];

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return YES;
}



#pragma mark - *** JBAsyncImageViewDelegate ***

-(void)imageView:(JBAsyncImageView *)sender failedLoadingImageFromURL:(NSURL *)url withError:(NSError *)error {
	UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Download Failed" message:[error localizedDescription] delegate:self
											  cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
	[alertView show];
}

@end
