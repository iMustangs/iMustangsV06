//
//  RootViewController.m
//  iMustangsV06
//
//  Created by Seals, Tommy on 10/14/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"
#import "MapView.h"
#import	"EventsView.h"
#import "PDFMapView.h"


@implementation RootViewController
@synthesize mapView;
@synthesize eventsView;
@synthesize pdfMapView;

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/



-(IBAction) switchToMapView: (id)sender {
	if (self.mapView == nil) {
		MapView *tempMapView = [[MapView alloc]initWithNibName:@"MapView" bundle:nil];
		self.mapView = tempMapView;
		[tempMapView release];
	}
	[self.view insertSubview:mapView.view atIndex:0];
	[self.view bringSubviewToFront:mapView.view];
}

-(IBAction) switchToEventsView: (id)sender {
	if (self.eventsView == nil) {
		EventsView *tempEventsView = [[EventsView alloc]initWithNibName:@"EventsView" bundle:nil];
		self.eventsView = tempEventsView;
		[tempEventsView release];
	}
	
	[self.view insertSubview:eventsView.view atIndex:0];
	[self.view bringSubviewToFront:eventsView.view];
}

-(IBAction) switchToPdfMapView: (id)sender {
	if (self.pdfMapView == nil) {
		PDFMapView *tempPdfMapView = [[PDFMapView alloc]initWithNibName:@"PDFMapView" bundle:nil];
		self.pdfMapView = tempPdfMapView;
		[tempPdfMapView release];
	}

	[self.view insertSubview:pdfMapView.view atIndex:0];
	[self.view bringSubviewToFront:pdfMapView.view];
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[eventsView release];
	[mapView release];
	[pdfMapView release];
    [super dealloc];
}


@end
