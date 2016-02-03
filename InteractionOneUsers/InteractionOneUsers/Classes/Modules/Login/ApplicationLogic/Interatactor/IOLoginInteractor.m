//
//  IOLoginInteractor.m
//  InteractionOneUsers
//
//  Created by Murali on 2/1/16.
//  Copyright © 2016 InteractionOne Solutions Pvt Ltd. All rights reserved.
//

#import "IOLoginInteractor.h"

@implementation IOLoginInteractor

-(BOOL)performLoginWithUserName:(NSString*)userName password:(NSString*)password {
    
    //Data managere goes here.
  if ([userName isEqualToString:@"murali"]&&[password isEqualToString:@"1234"]) {
        return YES;
    }
    return NO;
}

@end
