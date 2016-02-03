//
//  IOAddUserInteractor.h
//  InteractionOneUsers
//
//  Created by Murali on 2/2/16.
//  Copyright © 2016 InteractionOne Solutions Pvt Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IOAddUserInteractorInterface.h"
#import "IOAddUserPresenterInterface.h"
#import "IOAddUserDataManager.h"

@interface IOAddUserInteractor : NSObject<IOAddUserPresenterInterface>
@property(strong,nonatomic)id<IOAddUserInteractorInterface> addUserPresenter;
@property(strong,nonatomic)IOAddUserDataManager *addDataManager;
@end
