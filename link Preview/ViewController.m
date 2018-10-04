//
//  ViewController.m
//  link Preview
//
//  Created by Latitude on 10/2/18.
//  Copyright © 2018 Latitude. All rights reserved.
//

#import "ViewController.h"
#import "WBGLinkPreview.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    txtviewOrigenalText.text = @"Please enter url like https://www.facebook.com or other text";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnSubmitAction:(UIButton *)sender {
    WBGLinkPreview *urlPreview = [[WBGLinkPreview alloc] init];

    txtviewOrigenalText.text = txtEnterLink.text;
    [urlPreview previewWithText:txtEnterLink.text
                      onSuccess:^(NSDictionary *result) {
                          NSLog(@"Final Output:: %@", result);
                          if ([result objectForKey:@"image"] != nil) {
                              NSData * imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: [result valueForKey:@"image"]]];
                              self->img_View.image = [UIImage imageWithData: imageData];
                          }
                          self->lblTitle.text =[result valueForKey:@"title"];
                          self->lblDiscription.text =[result valueForKey:@"description"];
                          self->lblUrl.text =[result valueForKey:@"url"];
                          
                          
                      } onError:^(WBGPreviewError *error) {
                          NSLog(@"%@", error.description);
                      }];
}
@end
