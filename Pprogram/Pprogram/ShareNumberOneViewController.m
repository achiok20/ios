//
//  ShareNumberOneViewController.m
//  Pprogram
//
//  Created by teclalabs on 11/08/14.
//  Copyright (c) 2014 teclalabs. All rights reserved.
//

#import "ShareNumberOneViewController.h"
#import <Social/Social.h>
#import "ShareViewController.h"
#import "RegisterClientViewController.h"
#import "ProspectListViewController.h"

@interface ShareNumberOneViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lbl1;

@end

@implementation ShareNumberOneViewController

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
    self.navigationItem.hidesBackButton = YES;
    self.title=@"Share it!!";
    self.lbl1.text=share.msg;
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.0 green:0.355 blue:0.481 alpha:0.8];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.translucent = NO;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)twittear:(id)sender
{
    SLComposeViewController *twitterVC= [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
    [twitterVC setInitialText:self.lbl1.text];
    [self presentViewController:twitterVC animated:YES completion:nil];
}

-(IBAction)putInFb:(id)sender
{
    SLComposeViewController *fbVC= [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
    [fbVC setInitialText:self.lbl1.text];
    [self presentViewController:fbVC animated:YES completion:nil];
}


-(void)cargarMsg:(ShareSocial *)sharesocial
{
    share=sharesocial;
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
