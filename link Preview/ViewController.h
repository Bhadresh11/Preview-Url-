//
//  ViewController.h
//  link Preview
//
//  Created by Latitude on 10/2/18.
//  Copyright © 2018 Latitude. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    __weak IBOutlet UITextField *txtEnterLink;
    
    __weak IBOutlet UITextView *txtviewOrigenalText;
    __weak IBOutlet UILabel *lblDiscription;
    __weak IBOutlet UILabel *lblTitle;
    __weak IBOutlet UILabel *lblUrl;
    __weak IBOutlet UIImageView *img_View;
}
- (IBAction)btnSubmitAction:(UIButton *)sender;

@end

