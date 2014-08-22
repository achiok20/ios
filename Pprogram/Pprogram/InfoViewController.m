//
//  InfoViewController.m
//  Pprogram
//
//  Created by teclalabs on 14/08/14.
//  Copyright (c) 2014 teclalabs. All rights reserved.
//

#import "InfoViewController.h"
#import "LoginViewController.h"
#import "MenuViewController.h"
#import <SDWebImage/SDImageCache.h>
#import <SDWebImage/UIImageView+WebCache.h>
#import "RegisterClientViewController.h"
#import "ShareViewController.h"
#import "ProspectListViewController.h"


@interface InfoViewController ()
@property (weak, nonatomic) IBOutlet UILabel *fullname;
@property (weak, nonatomic) IBOutlet UILabel *level;
@property (weak, nonatomic) IBOutlet UIImageView *imgView;

@end

@implementation InfoViewController

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
    // Do any additional setup after loading the view from its nib.
    [[UIApplication sharedApplication] setStatusBarStyle:
     UIStatusBarStyleLightContent];
    self.navigationItem.hidesBackButton = YES;
    self.title=@"User Information";
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.0 green:0.355 blue:0.481 alpha:0.8];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.translucent = NO;
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(cerrarSesion:)];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor],NSFontAttributeName:[UIFont fontWithName:@"Verdana" size:18.0]}];
    self.fullname.text=usuario.fullname;
    self.level.text=[NSString stringWithFormat:@"%d",usuario.level];
    
    NSURL *url = [NSURL URLWithString:usuario.photo];
    NSData *data = [NSData dataWithContentsOfURL:url];
    UIImage *img = [[UIImage alloc] initWithData:data];
    //UIImageView *profileImage=[[UIImageView alloc] init];
    self.imgView.image=img;
    
}


-(IBAction)goToTheMenu:(id)sender
{
    User *user=[[User alloc] init];
    [user leerElid:usuario.identi];
    MenuViewController *servicio=[[MenuViewController alloc] initWithNibName:@"MenuViewController" bundle:nil];
    [servicio cargarUser:user];
    [self.navigationController pushViewController:servicio animated:YES];
}

-(IBAction)cerrarSesion:(id)sender
{
    LoginViewController *servicio=[[LoginViewController alloc] initWithNibName:@"LoginViewController" bundle:nil];
    
    [self.navigationController pushViewController:servicio animated:YES];
}

-(void)cargarUser:(User *)user
{
    usuario=user;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.navigationController.navigationBarHidden=NO;
}

- (IBAction)countProspects:(id)sender {
    
    NSMutableString *jsonRequest = [NSMutableString new];
    // This is an example of a json
    //{"code":"10","name":"1","email":"1","age":"1","address":"1","dni":"1"}
    [jsonRequest appendString:[NSString stringWithFormat:@"{\"id\":%d}",usuario.identi]];
    NSURL *url = [NSURL URLWithString:@"http://10.0.1.8:8002/partnerprogram/prospects/countprospect.json"];
    
    
    //creando request
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    NSData *requestData = [NSData dataWithBytes:[jsonRequest UTF8String] length:[jsonRequest length]];
    [request setHTTPMethod:@"POST"];
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request setHTTPBody:requestData];
    
    
    //enviando request
    NSError *errorData;
    NSURLResponse *response;
    NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&errorData];
    if(errorData == nil)
    {
        NSDictionary  *dict = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
        NSLog(@"%@",[dict objectForKey:@"success"]);
        if ([[dict objectForKey:@"success"] boolValue]){
            NSDictionary *dictionary = ([dict objectForKey:@"objeto"]);
            NSLog(@"%@",[dict objectForKey:@"objeto"]);
            
            UIAlertView *alert= [[UIAlertView alloc] initWithTitle:@"Deals" message:[NSString stringWithFormat:@"%i deals close, %i need follow-up",[[dictionary objectForKey:@"progress1"] intValue],[[dictionary objectForKey:@"progress2"] intValue]] delegate:nil cancelButtonTitle:@"Close" otherButtonTitles:nil, nil];
            [alert show];
            
        }else{
            NSLog(@"ssss");
        }
        
    }else{
        NSLog(@"Description error%@",errorData.description);
    }
    
    
    
}

-(IBAction)goToRegisterClient:(id)sender
{
    
    User *user=[[User alloc] init];
    [user leerElid:usuario.identi];
    RegisterClientViewController *servicio= [[RegisterClientViewController alloc] initWithNibName:@"RegisterClientViewController" bundle:nil];
    [servicio cargarUser:user];
    //[self presentViewController:servicio animated:YES completion:nil];
    [self.view endEditing:YES];
    [self.navigationController pushViewController:servicio animated:YES ];
    
    
}

-(IBAction)goToSocial:(id)sender{
    User *user=[[User alloc] init];
    [user leerElid:usuario.identi];
    ShareViewController *servicio= [[ShareViewController alloc] initWithNibName:@"ShareViewController" bundle:nil];
    [servicio cargarUser:user];
    
    //[self presentViewController:servicio animated:YES completion:nil];
    [self.view endEditing:YES];
    [self.navigationController pushViewController:servicio animated:YES ];
}

-(IBAction)goToProspectList:(id)sender
{
    User *user=[[User alloc] init];
    [user leerElid:usuario.identi];
    ProspectListViewController *servicio=[[ProspectListViewController alloc] initWithNibName:@"ProspectListViewController" bundle:nil];
    [servicio cargarUser:user];
    [self.navigationController pushViewController:servicio animated:YES ];
    
}

@end
