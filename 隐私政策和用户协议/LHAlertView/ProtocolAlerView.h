//
//  ProtocolAlerView.h
//  隐私政策和用户协议
//
//  Created by 新橄榄教育 on 2020/3/29.
//  Copyright © 2020 Alyssa. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ProtocolAlerView : UIView
//弹框内容
@property (nonatomic, copy) NSString *strContent;

- (void)showAlert:(UIViewController *)vc cancelAction:(void (^ _Nullable)(id _Nullable object))cancelAction  privateAction:(void (^ _Nullable)(id _Nullable object))privateAction delegateAction:(void (^ _Nullable)(id _Nullable object))delegateAction;
@end

NS_ASSUME_NONNULL_END
