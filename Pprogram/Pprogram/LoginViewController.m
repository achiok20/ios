//
//  LoginViewController.m
//  Pprogram
//
//  Created by teclalabs on 7/08/14.
//  Copyright (c) 2014 teclalabs. All rights reserved.
//

#import "LoginViewController.h"
#import "RegisterClientViewController.h"
#import "MenuViewController.h"
#import "InfoViewController.h"
@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UITextField *password;

@property (weak, nonatomic) IBOutlet UILabel *mensaje;
@end

@implementation LoginViewController

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
    //self.navigationController.navigationBarHidden=YES;
    self.email.delegate=self;
    self.password.delegate=self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBarHidden=YES;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.email resignFirstResponder];
    [self.password resignFirstResponder];
    return YES;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

-(IBAction)login:(id)sender
{
    
    NSMutableString *jsonRequest = [NSMutableString new];
    // This is an example of a json
    //{"code":"10","name":"1","email":"1","age":"1","address":"1","dni":"1"}
    [jsonRequest appendString:[NSString stringWithFormat:@"{\"email\":\"%@\",\"password\":\"%@\"}",self.email.text,self.password.text]];
    NSURL *url = [NSURL URLWithString:@"http://10.0.1.8:8002/partnerprogram/user/user_login.json"];
    
    
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
            
            User *user=[[User alloc] init];
            [user leerFromDic:[dict objectForKey:@"objeto"]];
            
            //NSDictionary *dictionary = ((NSArray *)[dict objectForKey:@"objeto"])[0];
            //codRegister = [dictionary objectForKey:@"id"];
            NSLog(@"asjdnajsdnajsndjansdjna");
            //RegisterClientViewController *servicio= [[RegisterClientViewController alloc] init];
            //MenuViewController *servicio= [[MenuViewController alloc] initWithNibName:@"MenuViewController" bundle:nil];
            InfoViewController *servicio=[[InfoViewController alloc] initWithNibName:@"InfoViewController" bundle:nil];
            [servicio cargarUser:user];
            //[self presentViewController:servicio animated:YES completion:nil];
            
            [self.view endEditing:YES];
            [self.navigationController pushViewController:servicio animated:YES ];
            
        }else{
           // self.mensaje.hidden=NO;
            //self.mensaje.text=@"Usuario o contraseña incorrecta";
            UIAlertView *alert= [[UIAlertView alloc] initWithTitle:@"Error" message:@"User or Password incorrect" delegate:nil cancelButtonTitle:@"Close" otherButtonTitles:nil, nil];
            [alert show];
        }
        
    }else{
        NSLog(@"Description error%@",errorData.description);
    }
    
    [self.view endEditing:YES];
    
}


@end
