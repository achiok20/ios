//
//  MenuViewController.m
//  Pprogram
//
//  Created by teclalabs on 7/08/14.
//  Copyright (c) 2014 teclalabs. All rights reserved.
//

#import "MenuViewController.h"
#import "RegisterClientViewController.h"
#import "ShareViewController.h"
#import "LoginViewController.h"
#import "ProspectListViewController.h"

@interface MenuViewController ()

@property (weak, nonatomic) IBOutlet UILabel *totalSalesPartners;
@property (weak, nonatomic) IBOutlet UILabel *clients;

@property (weak, nonatomic) IBOutlet UILabel *salesThisMonth;
@property (weak, nonatomic) IBOutlet UILabel *commisions;
@property (weak, nonatomic) IBOutlet UILabel *subtituloClientes;
@property (weak, nonatomic) IBOutlet UILabel *subtituloSalesthisMonth;
@property (weak, nonatomic) IBOutlet UILabel *subtituloCommision;

@end

@implementation MenuViewController

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
    self.navigationItem.hidesBackButton = NO;
    self.title=@"Partner Program";
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.0 green:0.355 blue:0.481 alpha:0.8];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.translucent = NO;
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(cerrarSesion:)];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor],NSFontAttributeName:[UIFont fontWithName:@"Verdana" size:18.0]}];
    
    NSMutableString *jsonRequest = [NSMutableString new];
    // This is an example of a json
    //{"code":"10","name":"1","email":"1","age":"1","address":"1","dni":"1"}
    [jsonRequest appendString:[NSString stringWithFormat:@"{\"id\":%d}",3]];
    NSURL *url = [NSURL URLWithString:@"http://10.0.1.8:8002/partnerprogram/dashboard/general_stadistics.json"];
    
    
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
            
            NSString *totalclient=[NSString stringWithFormat:@"%i",[[dictionary objectForKey:@"totalClient"] intValue]];
            
            NSString *clients=[NSString stringWithFormat:@"%i",[[dictionary objectForKey:@"totalSalesPerson"] intValue]];
            NSString *salesthismonth=[NSString stringWithFormat:@"%i",[[dictionary objectForKey:@"total"] intValue]];
            
            NSString *commisions=[NSString stringWithFormat:@"%i",[[dictionary objectForKey:@"commission"] intValue]];
            
            
            self.totalSalesPartners.text=clients;
            self.clients.text=totalclient;
            self.salesThisMonth.text=salesthismonth;
            self.commisions.text=commisions;
            
            
        }else{
            NSLog(@"ssss");
        }
        
    }else{
        NSLog(@"Description error%@",errorData.description);
    }
}


-(void)cargarUser:(User *)user
{
    usuario=user;
}

   


-(IBAction)cerrarSesion:(id)sender
{
    LoginViewController *servicio= [[LoginViewController alloc] initWithNibName:@"LoginViewController" bundle:nil];
    
    //[self presentViewController:servicio animated:YES completion:nil];
    [self.view endEditing:YES];
    [self.navigationController pushViewController:servicio animated:YES ];
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


- (IBAction)segmentedControl:(id)sender {
    UISegmentedControl *sc=sender;
    if(sc.selectedSegmentIndex==0){
        self.subtituloClientes.text=@"New Clients this Month:";
        self.subtituloSalesthisMonth.text=@"Sales this Month:";
        self.commisions.text=@"Commisions earned this Month:";
        NSMutableString *jsonRequest = [NSMutableString new];
        // This is an example of a json
        //{"code":"10","name":"1","email":"1","age":"1","address":"1","dni":"1"}
        [jsonRequest appendString:[NSString stringWithFormat:@"{\"id\":%d}",usuario.identi]];
        NSURL *url = [NSURL URLWithString:@"http://10.0.1.8:8002/partnerprogram/dashboard/general_stadistics.json"];
        
        
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
                
                NSString *totalclient=[NSString stringWithFormat:@"%i",[[dictionary objectForKey:@"totalClient"] intValue]];
                
                NSString *clients=[NSString stringWithFormat:@"%i",[[dictionary objectForKey:@"totalSalesPerson"] intValue]];
                NSString *salesthismonth=[NSString stringWithFormat:@"%i",[[dictionary objectForKey:@"total"] intValue]];
                
                NSString *commisions=[NSString stringWithFormat:@"%i",[[dictionary objectForKey:@"commission"] intValue]];
                
                
                self.totalSalesPartners.text=clients;
                self.clients.text=totalclient;
                self.salesThisMonth.text=salesthismonth;
                self.commisions.text=commisions;

                
            }else{
                NSLog(@"ssss");
            }
            
        }else{
            NSLog(@"Description error%@",errorData.description);
        }

        
    }else{
        self.subtituloClientes.text=@"Your new Clients this Month:";
        self.subtituloSalesthisMonth.text=@"Your Sales this Month:";
        self.commisions.text=@"Your Commisions earned this Month:";
        NSMutableString *jsonRequest = [NSMutableString new];
        // This is an example of a json
        //{"code":"10","name":"1","email":"1","age":"1","address":"1","dni":"1"}
        [jsonRequest appendString:[NSString stringWithFormat:@"{\"id\":%d}",usuario.identi]];
        NSURL *url = [NSURL URLWithString:@"http://10.0.1.8:8002/partnerprogram/dashboard/my_general_stadistics.json"];
        
        
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
                
                NSString *totalclient=[NSString stringWithFormat:@"%i",[[dictionary objectForKey:@"totalClient"] intValue]];
                
                NSString *clients=[NSString stringWithFormat:@"%i",[[dictionary objectForKey:@"totalSalesPerson"] intValue]];
                NSString *salesthismonth=[NSString stringWithFormat:@"%i",[[dictionary objectForKey:@"total"] intValue]];
                
                NSString *commisions=[NSString stringWithFormat:@"%i",[[dictionary objectForKey:@"commission"] intValue]];
                
                
                self.totalSalesPartners.text=clients;
                self.clients.text=totalclient;
                self.salesThisMonth.text=salesthismonth;
                self.commisions.text=commisions;
                
                
            }else{
                NSLog(@"ssss");
            }
            
        }else{
            NSLog(@"Description error%@",errorData.description);
        }
        

    }
}


-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.navigationController.navigationBarHidden=NO;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
