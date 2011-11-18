//
//  EventsView.m
//  iMustangsV06
//
//  Created by Seals, Tommy on 10/15/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "EventsView.h"
#import "EventInfoView.h"


@implementation EventsView
@synthesize eventInfoView;

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


-(IBAction) removeView:(id)sender {
	[self.view removeFromSuperview];
}


-(IBAction) switchToEventInfoView: (id)sender{
	if (self.eventInfoView == nil) {
		EventInfoView *tempEventInfoView = [[EventInfoView alloc]initWithNibName:@"EventInfoView" bundle:nil];
		self.eventInfoView = tempEventInfoView;
		[tempEventInfoView release];
	}
	[self.view insertSubview:eventInfoView.view atIndex:0];
	[self.view bringSubviewToFront:eventInfoView.view];
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
	[eventInfoView release];
    [super dealloc];
}


@end
