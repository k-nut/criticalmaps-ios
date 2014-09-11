//
//  PLConstants.h
//  CriticalMass
//
//  Created by Norman Sander on 11.09.14.
//  Copyright (c) 2014 Pokus Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PLConstants : NSObject

// Debug
FOUNDATION_EXPORT BOOL const kDebug;
FOUNDATION_EXPORT BOOL const kDebugEnableTestURL;
FOUNDATION_EXPORT BOOL const kDebugEnableTestLocation;

// Urls
FOUNDATION_EXPORT NSString *const kUrlTile;
FOUNDATION_EXPORT NSString *const kUrlService;
FOUNDATION_EXPORT NSString *const kUrlServiceTest;

// Notifications
FOUNDATION_EXPORT NSString *const kNotificationPositionChanged;

// Misc
FOUNDATION_EXPORT NSTimeInterval const kRequestRepeatTime;
FOUNDATION_EXPORT double const kTestLocationLatitude;
FOUNDATION_EXPORT double const kTestLocationLongitude;

@end
