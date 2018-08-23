//
//  AIRGoogleMapPolylgoneManager.m
//
//  Created by Nick Italiano on 10/22/16.
//

#ifdef HAVE_GOOGLE_MAPS
#import "AIRGoogleMapPolygonManager.h"

#if __has_include(<React/RCTBridge.h>)
    #import <React/RCTBridge.h>
#else
    #import "RCTBridge.h"
#endif
#if __has_include(<React/RCTConvert.h>)
    #import <React/RCTConvert.h>
#else
    #import "RCTConvert.h"
#endif
#if __has_include(<React/RCTConvert+CoreLocation.h>)
    #import <React/RCTConvert+CoreLocation.h>
#else
    #import "RCTConvert+CoreLocation.h"
#endif
#if __has_include(<React/RCTEventDispatcher.h>)
    #import <React/RCTEventDispatcher.h>
#else
    #import "RCTEventDispatcher.h"
#endif
#if __has_include(<React/RCTViewManager.h>)
    #import <React/RCTViewManager.h>
#else
    #import "RCTViewManager.h"
#endif
#if __has_include(<React/UIView+React.h>)
    #import <React/UIView+React.h>
#else
    #import "UIView+React.h"
#endif
#import "RCTConvert+AirMap.h"
#import "AIRGoogleMapPolygon.h"

@interface AIRGoogleMapPolygonManager()

@end

@implementation AIRGoogleMapPolygonManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
  AIRGoogleMapPolygon *polygon = [AIRGoogleMapPolygon new];
  polygon.bridge = self.bridge;
  return polygon;
}

RCT_EXPORT_VIEW_PROPERTY(coordinates, AIRMapCoordinateArray)
RCT_EXPORT_VIEW_PROPERTY(holes, AIRMapCoordinateArrayArray)
RCT_EXPORT_VIEW_PROPERTY(fillColor, UIColor)
RCT_EXPORT_VIEW_PROPERTY(strokeWidth, double)
RCT_EXPORT_VIEW_PROPERTY(strokeColor, UIColor)
RCT_EXPORT_VIEW_PROPERTY(geodesic, BOOL)
RCT_EXPORT_VIEW_PROPERTY(zIndex, int)
RCT_EXPORT_VIEW_PROPERTY(tappable, BOOL)
RCT_EXPORT_VIEW_PROPERTY(onPress, RCTBubblingEventBlock)

@end

#endif
