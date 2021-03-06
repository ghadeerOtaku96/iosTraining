//
//  ConversatoinsViewController.m
//  HoneyBees
//
//  Created by Ghadeer Abualrub on 6/6/18.
//  Copyright © 2018 Ghadeer Abualrub. All rights reserved.
//

#import "ConversatoinsViewController.h"

@interface ConversatoinsViewController () <UITableViewDelegate , UITableViewDataSource>

@end

@implementation ConversatoinsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.conversationsArray  = [ServicesManager sharedInstance].conversationsManagerService.conversations;
    //self.conversationsArray = [[NSArray alloc]initWithObjects:@"red",@"black",@"blue", nil];
    self.ConversationTable.delegate = self;
    self.ConversationTable.dataSource = self;
				
    // Do any additional setup after loading the view.
    

    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
 
    
    

}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.conversationsArray.count;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self.ConversationTable deselectRowAtIndexPath:indexPath animated:YES];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
   CustomTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"mycell"];
    if(!cell){
        [tableView registerNib:[UINib nibWithNibName:@"CustomTableViewCell" bundle:nil] forCellReuseIdentifier:@"mycell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"mycell"];
    }
    
    Conversation * conversation = (Conversation *)  [self.conversationsArray objectAtIndex:indexPath.row];
    cell.NameLabel.text =  conversation.lastMessage.body;
   // cell.DateLabel.text = [self.conversationsArray objectAtIndex:indexPath.row].autoContentAccessingProxy;
    //cell.textLabel.text = (NSString*)[self.conversationsArray objectAtIndex:indexPath.row];
    //cell.NameLabel.text = (NSString*)[self.conversationsArray objectAtIndex:indexPath.row];
    return cell;
}

-(void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];


}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



@end

