//
//  ProspectListViewController.m
//  Pprogram
//
//  Created by teclalabs on 18/08/14.
//  Copyright (c) 2014 teclalabs. All rights reserved.
//

#import "ProspectListViewController.h"
#import "LoginViewController.h"
#import "DetalleProspectViewController.h"
#import "RegisterClientViewController.h"
#import "ShareViewController.h"

@interface ProspectListViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableProspectlist;


@end

@implementation ProspectListViewController

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
    self.title=@"Prospect List";
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.0 green:0.355 blue:0.481 alpha:0.8];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.translucent = NO;
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(cerrarSesion:)];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor],NSFontAttributeName:[UIFont fontWithName:@"Verdana" size:18.0]}];
    self.list=[[NSMutableArray alloc] init];
    self.colorStatus=[[NSMutableArray alloc] init];
    dictionary=[[NSDictionary alloc]init];
    
    NSMutableString *jsonRequest = [NSMutableString new];
    // This is an example of a json
    //{"code":"10","name":"1","email":"1","age":"1","address":"1","dni":"1"}
    [jsonRequest appendString:[NSString stringWithFormat:@"{\"id\":%d}",usuario.identi]];
    NSURL *url = [NSURL URLWithString:@"http://10.0.1.8:8002/partnerprogram/prospects/listprospect.json"];
    
    
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
    
         NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
        if ([[dict objectForKey:@"success"] boolValue]){
            NSArray *a=[dict objectForKey:@"objeto"];
            NSLog(@"%d",[a count]);
            for (int i=0; i<[a count]; i++) {
                dictionary = ((NSArray *)[dict objectForKey:@"objeto"])[i];
                //NSLog(@"%@ %@",[dictionary objectForKey:@"nombre"],[dictionary objectForKey:@"apellido"]);
                NSLog(@"%@",dictionary);
                [self.list addObject:[NSString stringWithFormat:@"%@ %@",[dictionary objectForKey:@"nombre"],[dictionary objectForKey:@"apellido"]]];
                [self.colorStatus addObject:[NSString stringWithFormat:@"%d",[[dictionary objectForKey:@"progress"]intValue]]];
               // NSLog(@"colores %@",self.colorStatus);
                
            }
            
           
        }
        
    }else{
        NSLog(@"Description error%@",errorData.description);
    }
    
    self.tableProspectlist.dataSource = self;
    self.tableProspectlist.delegate = self;
     [self.tableProspectlist reloadData];

    NSLog(@"%@",self.list);
    
    
    
    
}

-(void)cargarUser:(User *)user
{
    usuario=user;
}

-(void)cargarProspect:(Prospect *)prospect
{
    prospecto=prospect;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)cerrarSesion:(id)sender
{
    LoginViewController *servicio=[[LoginViewController alloc] initWithNibName:@"LoginViewController" bundle:nil];
    
    [self.navigationController pushViewController:servicio animated:YES];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.list count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *SimpleIdentifier=@"SimpleIdentifier";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:SimpleIdentifier];
    if(cell==nil){
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SimpleIdentifier];
    }
    
    if([self.colorStatus[indexPath.row] isEqualToString:@"1"]){
        UIImage *image1=[UIImage imageNamed:@"green"];
        cell.imageView.image=image1;
    } else if([self.colorStatus[indexPath.row] isEqualToString:@"2"]){
        UIImage *image1=[UIImage imageNamed:@"orange-apple"];
        cell.imageView.image=image1;
    }else{
        UIImage *image1=[UIImage imageNamed:@"red-apple"];
        cell.imageView.image=image1;
    }
    cell.textLabel.text =self.list[indexPath.row];
    
    
    return cell;
}

-(NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    return indexPath;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    Prospect *prospect=[[Prospect alloc] init];
    NSLog(@"AMTES");
   
   [prospect leerFromDic:dictionary];
    NSLog(@"DESPUES");
    
    DetalleProspectViewController *servicio=[[DetalleProspectViewController alloc] initWithNibName:@"DetalleProspectViewController" bundle:nil];
    [servicio cargarProspect:prospect];
    [self.navigationController pushViewController:servicio animated:YES];
}



- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50.f;
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
        NSDictionary  *dicto = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
        NSLog(@"%@",[dicto objectForKey:@"success"]);
        if ([[dicto objectForKey:@"success"] boolValue]){
            NSDictionary *dictionario = ([dicto objectForKey:@"objeto"]);
            NSLog(@"%@",[dicto objectForKey:@"objeto"]);
            
            UIAlertView *alert= [[UIAlertView alloc] initWithTitle:@"Deals" message:[NSString stringWithFormat:@"%i deals close, %i need follow-up",[[dictionario objectForKey:@"progress1"] intValue],[[dictionario objectForKey:@"progress2"] intValue]] delegate:nil cancelButtonTitle:@"Close" otherButtonTitles:nil, nil];
            [alert show];
            
        }else{
            NSLog(@"ssss");
        }
        
    }else{
        NSLog(@"Description error%@",errorData.description);
    }
    
    
    
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
