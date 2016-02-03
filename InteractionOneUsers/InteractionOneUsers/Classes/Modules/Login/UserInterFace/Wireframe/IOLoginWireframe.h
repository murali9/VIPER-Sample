//
//  IOLoginWireframe.h
//  InteractionOneUsers
//
//  Created by Murali on 2/1/16.
//  Copyright © 2016 InteractionOne Solutions Pvt Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IOUsersListWireframe.h"
#import <UIKit/UIKit.h>
#import "IOLoginPresenter.h"
@class IOLoginPresenter;

@interface IOLoginWireframe : NSObject

@property(strong,nonatomic)IOLoginPresenter *loginPresentor;
@property(strong,nonatomic)IOUsersListWireframe *userListWireframe;

- (void)configureLoginView;
- (void)presentUserListInterface;

@end
