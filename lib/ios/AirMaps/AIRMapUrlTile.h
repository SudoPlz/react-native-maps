//
//  AIRUrlTileOverlay.h
//  AirMaps
//
//  Created by cascadian on 3/19/16.
//  Copyright © 2016. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import <UIKit/UIKit.h>

#if __has_include(<React/RCTComponent.h>)
    #import <React/RCTComponent.h>
#else
    #import "RCTComponent.h"
#endif
#if __has_include(<React/RCTView.h>)
    #import <React/RCTView.h>
#else
    #import "RCTView.h"
#endif
#import "AIRMapCoordinate.h"
#import "AIRMap.h"
#import "RCTConvert+AirMap.h"

@interface AIRMapUrlTile : MKAnnotationView <MKOverlay>

@property (nonatomic, weak) AIRMap *map;

@property (nonatomic, strong) MKTileOverlay *tileOverlay;
@property (nonatomic, strong) MKTileOverlayRenderer *renderer;
@property (nonatomic, copy) NSString *urlTemplate;
@property NSInteger maximumZ;
@property NSInteger minimumZ;
@property BOOL shouldReplaceMapContent;

#pragma mark MKOverlay protocol

@property(nonatomic, readonly) CLLocationCoordinate2D coordinate;
@property(nonatomic, readonly) MKMapRect boundingMapRect;
//- (BOOL)intersectsMapRect:(MKMapRect)mapRect;
- (BOOL)canReplaceMapContent;

@end
