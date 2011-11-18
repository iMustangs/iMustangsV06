//
//  PDFMapView.h
//  iMustangsV06
//
//  Created by Seals, Tommy on 11/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface PDFMapView : UIViewController {
	UIWebView *webView;
	NSURL *pdfUrl;
}
@property (nonatomic, retain) IBOutlet UIWebView *webView;
@property (nonatomic, retain) NSURL *pdfUrl;

-(IBAction) removeView:(id)sender;

@end
