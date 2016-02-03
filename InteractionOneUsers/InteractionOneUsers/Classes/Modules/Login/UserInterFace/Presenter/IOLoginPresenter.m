//
//  IOLoginPresenter.m
//  InteractionOneUsers
//
//  Created by Murali on 2/1/16.
//  Copyright © 2016 InteractionOne Solutions Pvt Ltd. All rights reserved.
//

#import "IOLoginPresenter.h"

@implementation IOLoginPresenter

- (void)loginWithUserName:(NSString *)userName password:(NSString *)password {
    
    if ([userName isEqualToString:@""] || [password isEqualToString:@""]) {
        
        [self.loginView showNoteView:@"Please fill the data properly"];
        
    } else if ([self.loginInteractor performLoginWithUserName:userName password:password]) {
        [self.loginWireFrame presentUserListInterface];
    }

}

@end
