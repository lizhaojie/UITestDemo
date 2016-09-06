//
//  TestDemoTests.m
//  TestDemoTests
//
//  Created by lizhaojie on 16/8/11.
//  Copyright © 2016年 siemens. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"
#import <objc/runtime.h>
@interface TestDemoTests : XCTestCase

@end

@implementation TestDemoTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}
- (void)testValueLabelText{
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    ViewController *vc = [storyboard instantiateInitialViewController];
    [self performSelector:@selector(getLabelText:) withObject:vc afterDelay:1.0];
//    vc.showAlertBtn.tag = 8;
//    [vc tapBtn:vc.showAlertBtn];
//    NSLog(@"vc.tag+1 == %@",vc.valueLabel.text);
//    XCTAssertTrue([vc.valueLabel.text isEqualToString:@"9"],@"");

}
- (void)getLabelText:(ViewController*)vc{
    vc.showAlertBtn.tag = 8;
    [vc tapBtn:vc.showAlertBtn];
    NSLog(@"vc.tag+1 == %@",vc.valueLabel.text);
    XCTAssertTrue([vc.valueLabel.text isEqualToString:@"9"],@"");
}
- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
