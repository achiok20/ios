//
//  RegisterClientViewController.m
//  Pprogram
//
//  Created by teclalabs on 7/08/14.
//  Copyright (c) 2014 teclalabs. All rights reserved.
//

#import "RegisterClientViewController.h"
#import "MenuViewController.h"
#import "LoginViewController.h"
#import "User.h"
#import "ShareViewController.h"
#import "ProspectListViewController.h"



@interface RegisterClientViewController ()
@property (weak, nonatomic) IBOutlet UITextField *firstName;
@property (weak, nonatomic) IBOutlet UITextField *lastName;
@property (weak, nonatomic) IBOutlet UITextField *emailAddress;

@property (weak, nonatomic) IBOutlet UITextField *notes;

@property (weak, nonatomic) IBOutlet UITextField *phone;

@property (weak, nonatomic) IBOutlet UITextField *relationship;

@property (weak, nonatomic) IBOutlet UISwitch *mySlider;
@end

@implementation RegisterClientViewController

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
    self.title=@"Register Client";
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.0 green:0.355 blue:0.481 alpha:0.8];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.translucent = NO;
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor],NSFontAttributeName:[UIFont fontWithName:@"Verdana" size:18.0]}];
    //self.navigationController.navigationBar.topItem.title = @"Menu";
    self.firstName.delegate=self;
    self.lastName.delegate=self;
    self.emailAddress.delegate=self;
    self.notes.delegate=self;
    self.phone.delegate=self;
    self.relationship.delegate=self;
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(cerrarSesion:)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)cargarUser:(User *)user
{
    usuario=user;
}



-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.firstName resignFirstResponder];
    [self.lastName resignFirstResponder];
    [self.emailAddress resignFirstResponder];
    [self.notes resignFirstResponder];
    [self.phone resignFirstResponder];
    [self.relationship resignFirstResponder];
    
    return YES;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

-(IBAction)registerClient:(id)sender
{
    
    
    if([self.firstName.text isEqualToString:@""] || [self.lastName.text isEqualToString:@""] || [self.emailAddress.text isEqualToString:@""] || [self.notes.text isEqualToString:@""] ){
        
        UIAlertView *alerta=[[UIAlertView alloc] initWithTitle:@"Error" message:@"ERROR!! Empty fields" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        [alerta show];
    }else{
        
        NSMutableString *jsonRequest = [NSMutableString new];
        // This is an example of a json
        //{"firstname":"Alber","lastname":"heinsten","email":"j.murga@gmail.com","phonenumber":"","leadwarmth":3,"relationship":"","notes":"12312","communicate":1,"salesperson":2}
        if(self.mySlider.on){
            [jsonRequest appendString:[NSString stringWithFormat:@"{\"firstname\":\"%@\",\"lastname\":\"%@\",\"email\":\"%@\",\"phonenumber\":\"%@\",\"leadwarmth\":%d,\"relationship\":\"%@\",\"notes\":\"%@\",\"communicate\":%d,\"salesperson\":%d}",self.firstName.text,self.lastName.text,self.emailAddress.text,self.phone.text,3,self.relationship.text,self.notes.text,1,usuario.identi]];
        }else{
            [jsonRequest appendString:[NSString stringWithFormat:@"{\"firstname\":\"%@\",\"lastname\":\"%@\",\"email\":\"%@\",\"phonenumber\":\"%@\",\"leadwarmth\":%d,\"relationship\":\"%@\",\"notes\":\"%@\",\"communicate\":%d,\"salesperson\":%d}",self.firstName.text,self.lastName.text,self.emailAddress.text,@"",3,@"",self.notes.text,0,usuario.identi]];
        }
        
        
        NSLog(@"%@",jsonRequest);
        
        NSURL *url = [NSURL URLWithString:@"http://10.0.1.8:8002/partnerprogram/client/addclient.json"];
        
        
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
                //NSDictionary *dictionary = ((NSArray *)[dict objectForKey:@"objeto"])[0];
                //codRegister = [dictionary objectForKey:@"id"];
                NSLog(@"registro");
                MenuViewController *servicio= [[MenuViewController alloc] initWithNibName:@"MenuViewController" bundle:nil];
                [self.navigationController pushViewController:servicio animated:YES ];
                //ServiciosViewController *servicio= [[ServiciosViewController alloc] init];
                // ServiciosViewController *servicio= [[ServiciosViewController alloc] initWithNibName:@"ServiciosViewController" bundle:nil];
                
                // [self presentViewController:servicio animated:YES completion:nil];
                //[self.view endEditing:YES];
                //[self.navigationController pushViewController:servicio animated:YES ];
            }else{
                NSLog(@"No esta registrando");
            }
            
        }else{
            NSLog(@"Description error%@",errorData.description);
        }
        
        [self.view endEditing:YES];
    }
    
   
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

/*-(IBAction)goToRegisterClient:(id)sender
{
    
    User *user=[[User alloc] init];
    [user leerElid:usuario.identi];
    RegisterClientViewController *servicio= [[RegisterClientViewController alloc] initWithNibName:@"RegisterClientViewController" bundle:nil];
    [servicio cargarUser:user];
    //[self presentViewController:servicio animated:YES completion:nil];
    [self.view endEditing:YES];
    [self.navigationController pushViewController:servicio animated:YES ];
    
    
}*/

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
