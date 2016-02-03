//
//  IOUsersListWireframe.h
//  InteractionOneUsers
//
//  Created by Murali on 2/1/16.
//  Copyright © 2016 InteractionOne Solutions Pvt Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <Foundation/Foundation.h>
#import "IOUsersListPresenter.h"
#import "IOAddUserWireframe.h"

@interface IOUsersListWireframe : NSObject
@property(strong,nonatomic)UIViewController *presentingViewController;
@property(strong,nonatomic)IOUsersListPresenter *userListPresenter;
@property(strong,nonatomic)IOAddUserWireframe *addUserWireframe;


- (void)presentUserListInterfaceFromViewController:(UIViewController *)viewController;
- (void)dismissUserListInterface;
- (void)presentAddUserView;
@end
