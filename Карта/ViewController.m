//
//  ViewController.m
//  Карта
//
//  Created by Павел Коюшев on 14.05.16.
//  Copyright © 2016 Павел Коюшев. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize mapview;


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.locationManager requestWhenInUseAuthorization];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)getLocation;
{   //mapview.showsUserLocation=YES;
    [self.locationManager startUpdatingLocation];
    [mapview setShowsUserLocation:YES];
}

-(IBAction)SetMap:(id)sender {
    
    switch (((UISegmentedControl *)sender).selectedSegmentIndex) {
        case 0:
            mapview.mapType = MKMapTypeStandard;
            break;
        case 1:
            mapview.mapType = MKMapTypeSatellite;
            break;
        case 2:
            mapview.mapType = MKMapTypeHybrid;
            break;
        default:
            break;
    }
}

- (IBAction)getLocation:(id)sender {
    
}

@end
