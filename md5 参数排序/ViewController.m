//
//  ViewController.m
//  md5 参数排序
//
//  Created by ZeKunLi on 2019/11/14.
//  Copyright © 2019 lingdong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSDictionary * dic = @{@"sort":@"10",@"type": @"2",@"page":@"1"};
    
    NSArray *allKeyArray = [dic allKeys];
    
    NSArray *afterSortKeyArray = [allKeyArray sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {

        NSComparisonResult resuest = [obj1 compare:obj2];
        NSLog(@"%ld",(long)resuest);
        return resuest;
    }];
    
    NSLog(@"%@",afterSortKeyArray);
    
    
}

//+ (NSString*)md5Codesign:(NSDictionary*)dict{
//
//    NSArray *allKeyArray = [dict allKeys];
//
//    NSArray *afterSortKeyArray = [allKeyArray sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnullobj1,id  _Nonnullobj2) {
//
//        NSComparisonResultresuest = [obj1 compare:obj2];
//
//        return resuest;
//
//    }];
//
//    //NSLog(@"afterSortKeyArray:%@",afterSortKeyArray);
//
//
//
//    //通过排列的key值获取value
//
//    NSMutableArray *valueArray = [NSMutableArray array];
//
//    for(NSString*sortsing in afterSortKeyArray) {
//
//        NSString*valueString = [dictobjectForKey:sortsing];
//
//        [valueArray addObject:valueString];
//
//    }
//
//    NSMutableString *signString = [NSMutableString string];
//
//    for(inti =0; i < afterSortKeyArray.count; i++) {
//
//        NSString*keyValue = [NSString stringWithFormat:@"%@",valueArray[i]];
//
//        [signString appendString:keyValue];
//
//    }
//
//    //signString用于签名的原始参数集合
//
////    MYLog(@"%@",signString);
//
////    MYLog(@"%@",[signString md5Str]);
//
//    return signString;
//
//}



//-(NSString*)md5Str
//
//{
//
//    const char* myPasswordd = [self UTF8String];
//
//    unsigned char md5c[16];
//
//    CC_MD5(myPasswordd, (CC_LONG)strlen(myPasswordd), md5c);
//
//    NSMutableString *md5Str = [NSMutableString string];
//
//    for(inti =0; i<16; i++) {
//
//        [md5Str appendFormat:@"%02x",md5c[i]];
//
//    }
//
//    return md5Str;
//
//}



@end
