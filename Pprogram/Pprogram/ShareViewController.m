//
//  ShareViewController.m
//  Pprogram
//
//  Created by teclalabs on 11/08/14.
//  Copyright (c) 2014 teclalabs. All rights reserved.
//

#import "ShareViewController.h"
#import "ShareNumberOneViewController.h"
#import "LoginViewController.h"
#import "ShareSocial.h"
#import "User.h"
#import "RegisterClientViewController.h"
#import "ProspectListViewController.h"


@interface ShareViewController ()


@end

@implementation ShareViewController

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
    self.title=@"Share";
    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(goToShare)];
    UITapGestureRecognizer *tapGestureRecognizer2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(goToShareTwo)];
    UITapGestureRecognizer *tapGestureRecognizer3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(goToShareThree)];
    UITapGestureRecognizer *tapGestureRecognizer4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(goToShareFour)];
    tapGestureRecognizer.numberOfTapsRequired=1;
    tapGestureRecognizer2.numberOfTapsRequired=1;
    tapGestureRecognizer3.numberOfTapsRequired=1;
    tapGestureRecognizer4.numberOfTapsRequired=1;
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(cerrarSesion:)];
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.0 green:0.355 blue:0.481 alpha:0.8];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.translucent = NO;
    [_viewNumOne addGestureRecognizer:tapGestureRecognizer];
    [_viewNumTwo addGestureRecognizer:tapGestureRecognizer2];
    [_viewNumThree addGestureRecognizer:tapGestureRecognizer3];
    [_viewNumFour addGestureRecognizer:tapGestureRecognizer4];
    [[UIApplication sharedApplication] setStatusBarStyle:
     UIStatusBarStyleLightContent];
    
    // Do any additional setup after loading the view from its nib.
}

-(void)goToShare
{
    
    [UIView animateWithDuration:1.5 animations:^{
        [_viewNumOne setFrame:CGRectMake(5, 169, 309, 233)];
        [_primertexto setFrame:CGRectMake(16, 70, 276, 115)];
      
    }completion:^(BOOL finished) {
        ShareSocial *share=[[ShareSocial alloc] init];
        [share leerElmsg:_primertexto.text];
        
        User *user=[[User alloc] init];
        [user leerElid:usuario.identi];
        
        ShareNumberOneViewController *servicio= [[ShareNumberOneViewController alloc] initWithNibName:@"ShareNumberOneViewController" bundle:nil];
        [servicio cargarUser:user];
        
        
        [self.view endEditing:YES];
        [servicio cargarMsg:share];
        [self.navigationController pushViewController:servicio animated:YES ];
    }];
    

    
  
}

-(void)goToShareTwo
{
    [UIView animateWithDuration:1.5 animations:^{
        [_viewNumTwo setFrame:CGRectMake(5, 169, 309, 233)];
        [_segundotexto setFrame:CGRectMake(16, 70, 276, 115)];
        
    }completion:^(BOOL finished) {
        ShareSocial *share=[[ShareSocial alloc] init];
        [share leerElmsg:_segundotexto.text];
        
        User *user=[[User alloc] init];
        [user leerElid:usuario.identi];
        
        ShareNumberOneViewController *servicio= [[ShareNumberOneViewController alloc] initWithNibName:@"ShareNumberOneViewController" bundle:nil];
        [servicio cargarUser:user];
        
        
        [self.view endEditing:YES];
        [servicio cargarMsg:share];
        [self.navigationController pushViewController:servicio animated:YES ];
    }];
}
-(void)goToShareThree
{
    [UIView animateWithDuration:1.5 animations:^{
        [_viewNumThree setFrame:CGRectMake(5, 169, 309, 233)];
        [_tercertexto setFrame:CGRectMake(16, 70, 276, 115)];
        
    }completion:^(BOOL finished) {
        ShareSocial *share=[[ShareSocial alloc] init];
        [share leerElmsg:_tercertexto.text];
        
        User *user=[[User alloc] init];
        [user leerElid:usuario.identi];
        
        ShareNumberOneViewController *servicio= [[ShareNumberOneViewController alloc] initWithNibName:@"ShareNumberOneViewController" bundle:nil];
        [servicio cargarUser:user];
        
        
        [self.view endEditing:YES];
        [servicio cargarMsg:share];
        [self.navigationController pushViewController:servicio animated:YES ];
    }];
}


-(void)goToShareFour
{
    [UIView animateWithDuration:1.5 animations:^{
        [_viewNumFour setFrame:CGRectMake(5, 169, 309, 233)];
        [_cuartotexto setFrame:CGRectMake(16, 70, 276, 115)];
        
    }completion:^(BOOL finished) {
        ShareSocial *share=[[ShareSocial alloc] init];
        [share leerElmsg:_cuartotexto.text];
        
        User *user=[[User alloc] init];
        [user leerElid:usuario.identi];
        
        ShareNumberOneViewController *servicio= [[ShareNumberOneViewController alloc] initWithNibName:@"ShareNumberOneViewController" bundle:nil];
        [servicio cargarUser:user];
        
        
        [self.view endEditing:YES];
        [servicio cargarMsg:share];
        [self.navigationController pushViewController:servicio animated:YES ];
    }];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

-(void)cargarUser:(User *)user
{
    usuario=user;
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

/*-(IBAction)goToSocial:(id)sender{
    User *user=[[User alloc] init];
    [user leerElid:usuario.identi];
    ShareViewController *servicio= [[ShareViewController alloc] initWithNibName:@"ShareViewController" bundle:nil];
    [servicio cargarUser:user];
    //[self presentViewController:servicio animated:YES completion:nil];
    [self.view endEditing:YES];
    [self.navigationController pushViewController:servicio animated:YES ];
}*/

-(IBAction)goToProspectList:(id)sender
{
    User *user=[[User alloc] init];
    [user leerElid:usuario.identi];
    ProspectListViewController *servicio=[[ProspectListViewController alloc] initWithNibName:@"ProspectListViewController" bundle:nil];
    [servicio cargarUser:user];
    [self.navigationController pushViewController:servicio animated:YES ];
    
}
@end
