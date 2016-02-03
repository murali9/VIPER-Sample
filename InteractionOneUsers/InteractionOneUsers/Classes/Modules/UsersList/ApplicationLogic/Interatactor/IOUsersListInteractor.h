//
//  IOUsersListInteractor.h
//  InteractionOneUsers
//
//  Created by Murali on 2/1/16.
//  Copyright © 2016 InteractionOne Solutions Pvt Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IOUserListPresenterInterface.h"
#import "IOUserListInteractorInterface.h"
#import "IOUsersListDataManager.h"


@class IOUsersListPresenter;

@interface IOUsersListInteractor : NSObject<IOUserListPresenterInterface>
//@property(strong,nonatomic)IOUsersListPresenter *userListPresenter;
@property(strong,nonatomic)IOUsersListDataManager *userListDataManager;
@property(strong,nonatomic)id<IOUserListInteractorInterface> userListPresenter;

@end
