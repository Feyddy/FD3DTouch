//
//  customActivity.h
//  FD3DTouch
//
//  Created by 徐忠林 on 10/01/2017.
//  Copyright © 2017 Feyddy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface customActivity : UIActivity

@property (nonatomic, copy) NSString * title;

@property (nonatomic, strong) UIImage * image;

@property (nonatomic, strong) NSURL * url;

@property (nonatomic, copy) NSString * type;

@property (nonatomic, strong) NSArray * shareContexts;

- (instancetype)initWithTitie:(NSString *)title withActivityImage:(UIImage *)image withUrl:(NSURL *)url withType:(NSString *)type  withShareContext:(NSArray *)shareContexts;
@end
