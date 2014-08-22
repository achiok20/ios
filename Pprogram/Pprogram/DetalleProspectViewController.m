//
//  DetalleProspectViewController.m
//  Pprogram
//
//  Created by teclalabs on 21/08/14.
//  Copyright (c) 2014 teclalabs. All rights reserved.
//

#import "DetalleProspectViewController.h"
#import "LoginViewController.h"

@interface DetalleProspectViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nombr;

@end

@implementation DetalleProspectViewController

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
    self.navigationItem.hidesBackButton = NO;
    self.title=@"Details";
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.0 green:0.355 blue:0.481 alpha:0.8];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.translucent = NO;
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(cerrarSesion:)];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor],NSFontAttributeName:[UIFont fontWithName:@"Verdana" size:18.0]}];
    self.nombr.text=@"dsdsds";
}

-(void)cargarProspect:(Prospect *)prospect
{
    prospecto=prospect;
}

-(IBAction)cerrarSesion:(id)sender
{
    
    
    LoginViewController *servicio= [[LoginViewController alloc] initWithNibName:@"LoginViewController" bundle:nil];
    
    //[self presentViewController:servicio animated:YES completion:nil];
    [self.view endEditing:YES];
    [self.navigationController pushViewController:servicio animated:YES ];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
