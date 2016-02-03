//
//  IOUserListInteractorInterface.h
//  InteractionOneUsers
//
//  Created by Murali on 2/3/16.
//  Copyright © 2016 InteractionOne Solutions Pvt Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol IOUserListInteractorInterface <NSObject>
- (void)fetchedUser:(NSArray *)users;
@end
