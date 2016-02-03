//
//  IOUsersListPresenter.h
//  InteractionOneUsers
//
//  Created by Murali on 2/1/16.
//  Copyright © 2016 InteractionOne Solutions Pvt Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IOUsersListInteractor.h"
#import "IOUserListEventHandlerInterface.h"
#import "IOUsersListWireframe.h"
#import "IOUserListViewInterface.h"
#import "IOUserListPresenterInterface.h"
#import "IOUserListInteractorInterface.h"

@class IOUsersListWireframe;

@interface IOUsersListPresenter : NSObject<IOUserListEventHandlerInterface,IOUserListInteractorInterface>
@property(strong,nonatomic)IOUsersListWireframe *userListWireframe;
@property(strong,nonatomic)id<IOUserListViewInterface> userListView;
@property(strong,nonatomic)id<IOUserListPresenterInterface> userListInteractor;

@end
