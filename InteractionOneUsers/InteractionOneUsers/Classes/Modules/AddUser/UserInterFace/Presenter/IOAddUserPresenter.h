//
//  IOAddUserPresenter.h
//  InteractionOneUsers
//
//  Created by Murali on 2/2/16.
//  Copyright © 2016 InteractionOne Solutions Pvt Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <Foundation/Foundation.h>
#import "IOAddUserViewEventHandler.h"
#import "IOAddUserViewInterface.h"
#import "IOAddUserPresenterInterface.h"
#import "IOAddUserInteractorInterface.h"
#import "IOAddUserWireframe.h"

@class IOAddUserWireframe;

@interface IOAddUserPresenter : NSObject<IOAddUserViewEventHandler,IOAddUserInteractorInterface>
@property(strong,nonatomic)id<IOAddUserViewInterface> addUserView;
@property(strong,nonatomic)id<IOAddUserPresenterInterface> addUserInteracter;
@property(strong,nonatomic)IOAddUserWireframe *addUserWireframe;

@end
