//
//  IOLoginWireframe.m
//  InteractionOneUsers
//
//  Created by Murali on 2/1/16.
//  Copyright © 2016 InteractionOne Solutions Pvt Ltd. All rights reserved.
//

#import "IOLoginWireframe.h"
#import "IOLoginViewController.h"

static NSString *LoginViewControllerIdentifier = @"UserLoginVC";

@interface IOLoginWireframe ()

@property (nonatomic, strong) IOLoginViewController *loginViewController;

@end
@implementation IOLoginWireframe

- (void)configureLoginView {
    self.loginViewController = [self loginViewControllerFromStoryboard];
    self.loginViewController.eventHandler = self.loginPresentor;
    self.loginPresentor.loginView = self.loginViewController;
}

- (void)presentUserListInterface {
    [self.userListWireframe presentUserListInterfaceFromViewController:self.loginViewController];
}

- (IOLoginViewController *)loginViewControllerFromStoryboard {
    
    IOLoginViewController *loginVC;
    UIWindow *mainWindow = [[[UIApplication sharedApplication] delegate] window];
    if ([[mainWindow rootViewController] isKindOfClass:[UINavigationController class]]) {
       UINavigationController *navC = (UINavigationController*) [mainWindow rootViewController];
        loginVC = (IOLoginViewController*)[navC.viewControllers firstObject];
    }else if ([[mainWindow rootViewController] isKindOfClass:[IOLoginViewController class]]){
        loginVC = (IOLoginViewController*) [mainWindow rootViewController];
    }
    return loginVC;
}


- (UIStoryboard *)mainStoryboard {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main"
                                                         bundle:[NSBundle mainBundle]];

    return storyboard;
}
@end
