//
//  ViewController.h
//  JBAsyncImageView
//
//  Created by Jesse Bunch on 12/31/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JBAsyncImageView.h"

@interface ViewController : UIViewController<JBAsyncImageViewDelegate> {
	__weak IBOutlet JBAsyncImageView *asyncImageView;
}

@end
