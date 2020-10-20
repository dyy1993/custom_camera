//
//  CustomCameraViewController.h
//  RACustomCamera
//
//  Created by capgemini on 2020/10/20.
//  Copyright © 2020 Rocky. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CustomCameraControllerDelegate <NSObject>
@optional
- (void)photoCapViewController:(UIViewController *)viewController didFinishDismissWithImage:(UIImage *)image;

@end
NS_ASSUME_NONNULL_BEGIN

@interface CustomCameraViewController : UIViewController
@property(nonatomic,weak)id<CustomCameraControllerDelegate> delegate;

@end

NS_ASSUME_NONNULL_END



