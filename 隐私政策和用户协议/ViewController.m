//
//  ViewController.m
//  隐私政策和用户协议
//
//  Created by 新橄榄教育 on 2020/3/29.
//  Copyright © 2020 Alyssa. All rights reserved.
//

#import "ViewController.h"
#import "ProtocolAlerView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    ProtocolAlerView *alert = [ProtocolAlerView new];
             alert.strContent = @"感谢您使用**app！\n为了更好地保障您的个人权益，请认真阅读《用户协议》和《隐私政策》的全部内容，同意并接受全部条款后开始使用我们的产品和服务。\n若不选择同意，将无法使用我们的产品和服务，并退出应用。";
           
           [alert showAlert:self cancelAction:^(id  _Nullable object) {
               //不同意
               [[NSUserDefaults standardUserDefaults]setBool:NO forKey:@"firstLaunch"];
               [self exitApplication];
           } privateAction:^(id  _Nullable object) {
               
//        [self pushWebController:[YSCommonWebUrl userAgreementsUrl] isLoadOutUrl:NO title:@"用户协议"];
           } delegateAction:^(id  _Nullable object) {
               NSLog(@"用户协议");
           }];
}
//退出程序
- (void)exitApplication {
    
    UIWindow *window = [UIApplication sharedApplication].delegate.window;
    [UIView animateWithDuration:0.2f animations:^{
        window.alpha = 0;
        window.frame = CGRectMake(0, window.bounds.size.width, 0, 0);
    } completion:^(BOOL finished) {
        exit(0);
    }];
    //exit(0);
}

@end
