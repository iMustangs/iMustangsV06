//
//  RootViewController.h
//  iMustangsV06
//
//  Created by Seals, Tommy on 10/14/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MapView;
@class EventsView;
@class PDFMapView;


@interface RootViewController : UIViewController {
	MapView *mapView;
	EventsView *eventsView;
	PDFMapView *pdfMapView;
}
@property (retain, nonatomic) MapView *mapView;
@property (retain, nonatomic) EventsView *eventsView;
@property (retain, nonatomic) PDFMapView *pdfMapView;
-(IBAction) switchToMapView: (id)sender;
-(IBAction) switchToEventsView: (id)sender;
-(IBAction) switchToPdfMapView: (id)sender;
@end
