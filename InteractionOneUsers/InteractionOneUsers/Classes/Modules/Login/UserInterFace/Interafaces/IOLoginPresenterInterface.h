//
//  IOLoginPresenterInterface.h
//  InteractionOneUsers
//
//  Created by Murali on 2/2/16.
//  Copyright © 2016 InteractionOne Solutions Pvt Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol IOLoginPresenterInterface <NSObject>
-(BOOL)performLoginWithUserName:(NSString*)userName password:(NSString*)password ;
@end
