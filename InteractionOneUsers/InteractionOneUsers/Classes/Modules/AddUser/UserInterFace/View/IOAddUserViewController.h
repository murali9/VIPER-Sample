//
//  IOAddUserViewController.h
//  InteractionOneUsers
//
//  Created by Murali on 2/2/16.
//  Copyright © 2016 InteractionOne Solutions Pvt Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IOAddUserPresenter.h"
#import "IOAddUserViewEventHandler.h"
#import "IOAddUserViewInterface.h"

@interface IOAddUserViewController : UIViewController<IOAddUserViewInterface>
@property(strong,nonatomic)IOAddUserPresenter *addUserPresenter;
@property(strong,nonatomic)id<IOAddUserViewEventHandler> eventHandler;
@end
