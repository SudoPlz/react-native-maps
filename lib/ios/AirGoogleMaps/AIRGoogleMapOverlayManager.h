//
//  AIRGoogleMapOverlayManager.h
//  Created by Taro Matsuzawa on 3/5/17.
//
#ifdef HAVE_GOOGLE_MAPS

#import <Foundation/Foundation.h>
#if __has_include(<React/RCTViewManager.h>)
    #import <React/RCTViewManager.h>
#else
    #import "RCTViewManager.h"
#endif

@interface AIRGoogleMapOverlayManager : RCTViewManager
@end

#endif
