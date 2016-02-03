//
//  IOUsersListViewController.h
//  InteractionOneUsers
//
//  Created by Murali on 2/2/16.
//  Copyright © 2016 InteractionOne Solutions Pvt Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IOUserListEventHandlerInterface.h"
#import "IOUserListViewInterface.h"

@interface IOUsersListViewController : UIViewController<IOUserListViewInterface>
@property(strong,nonatomic)id<IOUserListEventHandlerInterface> eventHandler;
@end
