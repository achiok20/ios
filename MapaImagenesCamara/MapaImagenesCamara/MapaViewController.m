//
//  MapaViewController.m
//  MapaImagenesCamara
//
//  Created by teclalabs on 22/08/14.
//  Copyright (c) 2014 teclalabs. All rights reserved.
//

#import "MapaViewController.h"
#import <MapKit/MapKit.h>
#import "Annotation.h"
#import "ImagesViewController.h"


@interface MapaViewController ()
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end


static const float teclaLatitude=-12.104717;
static const float teclaLongitude=-77.032457;
static const float thespan=0.07f;


@implementation MapaViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[UIApplication sharedApplication] setStatusBarStyle:
     UIStatusBarStyleLightContent];
    
    self.mapView.showsUserLocation=YES;
    
    MKCoordinateRegion miRegion;
    CLLocationCoordinate2D center;
    center.latitude=teclaLatitude;
    center.longitude=teclaLongitude;
    
    MKCoordinateSpan span;
    span.latitudeDelta=thespan;
    span.longitudeDelta=thespan;
    
    miRegion.center=center;
    miRegion.span=span;
    
    [self.mapView setRegion:miRegion animated:YES];
    
    CLLocationCoordinate2D teclaLocation;
    teclaLocation.latitude=teclaLatitude;
    teclaLocation.longitude=teclaLongitude;
    
    CLLocationCoordinate2D segundaLocation;
    segundaLocation.latitude=-12.134757;
    segundaLocation.longitude=-77.436487;
    
    Annotation *annotation=[Annotation alloc] ;
    annotation.coordinate=teclaLocation;
    annotation.title=@"TeclaLabs";
    annotation.subtitle=@"Aqui esta!!";
    
    Annotation *segunda=[Annotation alloc];
    segunda.coordinate=segundaLocation;
    segunda.title=@"Segunga anotacion";
    segunda.subtitle=@"Aqui se encuentra";
    
    NSArray *anotaciones=[[NSArray alloc] initWithObjects:annotation,segunda, nil];
    [self.mapView addAnnotations:anotaciones];
    //[self.mapView addAnnotation:annotation];
    //[self.mapView addAnnotation:segunda];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)goToMapMyLocation:(id)sender
{
    ImagesViewController *servicio=[[ImagesViewController alloc] init];
    [self.navigationController pushViewController:servicio animated:YES];
    
}

@end
