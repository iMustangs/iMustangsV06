//
//  EventsView.h
//  iMustangsV06
//
//  Created by Seals, Tommy on 10/15/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class EventInfoView;


@interface EventsView : UIViewController {
	EventInfoView *eventInfoView;
}
@property (retain, nonatomic) EventInfoView *eventInfoView;
-(IBAction) switchToEventInfoView: (id)sender;
-(IBAction) removeView:(id)sender;

@end
