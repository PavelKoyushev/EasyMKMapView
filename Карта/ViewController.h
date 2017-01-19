//
//  ViewController.h
//  Карта
//
//  Created by Павел Коюшев on 14.05.16.
//  Copyright © 2016 Павел Коюшев. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController {
    
    MKMapView *mapview;
}
@property (nonatomic, retain) IBOutlet MKMapView *mapview;
@property (strong, nonatomic) CLLocationManager *locationManager;

- (IBAction)SetMap:(id)sender;
- (IBAction)getLocation:(id)sender;


@end

