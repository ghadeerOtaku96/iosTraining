//
//  CustomTableViewCell.h
//  HoneyBees
//
//  Created by Ghadeer Abualrub on 6/13/18.
//  Copyright © 2018 Ghadeer Abualrub. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *ImageView;
@property (strong, nonatomic) IBOutlet UILabel *NameLabel;
@property (strong, nonatomic) IBOutlet UILabel *StatusLabel;
@property (strong, nonatomic) IBOutlet UILabel *DateLabel;

@end
