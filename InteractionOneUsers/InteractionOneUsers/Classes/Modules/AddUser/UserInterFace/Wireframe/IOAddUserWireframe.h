//
//  IOAddUserWireframe.h
//  InteractionOneUsers
//
//  Created by Murali on 2/2/16.
//  Copyright © 2016 InteractionOne Solutions Pvt Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class IOAddUserPresenter;

@interface IOAddUserWireframe : NSObject
@property(strong,nonatomic)IOAddUserPresenter *addUserPresenter;
@property(strong,nonatomic)UIViewController *presentingViewController;
- (void)presentAddInterfaceFromViewController:(UIViewController *)viewController;
- (void)dismissAddInterface;
- (void)popViewController;

@end
