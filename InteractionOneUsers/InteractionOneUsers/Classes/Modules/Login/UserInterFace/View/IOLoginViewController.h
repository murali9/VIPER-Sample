//
//  IOLoginViewController.h
//  InteractionOneUsers
//
//  Created by Murali on 2/1/16.
//  Copyright © 2016 InteractionOne Solutions Pvt Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "IOLoginViewEventHandlerInterface.h"
#import "IOLoginViewInterface.h"

@interface IOLoginViewController : UIViewController<IOLoginViewInterface>

@property(weak,nonatomic)id<IOLoginViewEventHandlerInterface>eventHandler;

@end
