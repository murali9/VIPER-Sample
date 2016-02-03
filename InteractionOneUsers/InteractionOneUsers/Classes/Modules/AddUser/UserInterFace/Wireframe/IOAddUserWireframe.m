//
//  IOAddUserWireframe.m
//  InteractionOneUsers
//
//  Created by Murali on 2/2/16.
//  Copyright © 2016 InteractionOne Solutions Pvt Ltd. All rights reserved.
//

#import "IOAddUserWireframe.h"
#import "IOAddUserViewController.h"
#import "IOAddUserPresenter.h"


static NSString *AddUserViewController = @"AddUserVC";

@interface IOAddUserWireframe ()
@property(strong,nonatomic)IOAddUserViewController *addUserViewController;
@end

@implementation IOAddUserWireframe

- (void)presentAddInterfaceFromViewController:(UIViewController *)viewController
{
    self.addUserViewController = [self addViewController];
    self.addUserViewController.eventHandler = self.addUserPresenter;
    self.addUserPresenter.addUserView = self.addUserViewController;
    
    if ([viewController isKindOfClass:[UIViewController class]]) {
        viewController = (IOAddUserViewController*)viewController;
        if (viewController.navigationController) {
            [viewController.navigationController pushViewController:self.addUserViewController animated:YES];
        }
        else {
            [viewController presentViewController:self.addUserViewController animated:YES completion:nil];
        }
    }
    
    self.presentingViewController = viewController;
}


- (void)dismissAddInterface
{
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

-(void)popViewController {
    [self.presentingViewController.navigationController popViewControllerAnimated:YES];
}


- (IOAddUserViewController *)addViewController
{
    UIStoryboard *storyboard = [self mainStoryboard];
    IOAddUserViewController *addUserViewController = [storyboard instantiateViewControllerWithIdentifier:AddUserViewController];
    
    return addUserViewController;
}


- (UIStoryboard *)mainStoryboard
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main"
                                                         bundle:[NSBundle mainBundle]];
    
    return storyboard;
}


@end
