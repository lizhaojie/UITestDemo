//
//  TestDemoUITests.m
//  TestDemoUITests
//
//  Created by lizhaojie on 16/8/11.
//  Copyright © 2016年 siemens. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface TestDemoUITests : XCTestCase

@end

@implementation TestDemoUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}
- (void)testUI{
    
//    XCUIApplication *app = [[XCUIApplication alloc] init];
//    [app.buttons[@"addOne"] tap];
//    [app.buttons[@"showAlert"] tap];
//    
//    XCUIElementQuery *collectionViewsQuery = app.alerts[@"\U63d0\U793a\U4fe1\U606f"].collectionViews;
//    [collectionViewsQuery.buttons[@"\U786e\U5b9a"] tap];
//    [collectionViewsQuery.buttons[@"\U53d6\U6d88"] tap];
//    [[[[app childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther] elementBoundByIndex:1] tap];
    
}
- (void)testAlertView{
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.staticTexts[@"0"] tap];
    [app.buttons[@"addOne"] tap];
    [app.buttons[@"showAlert"] tap];
    
    XCUIElementQuery *collectionViewsQuery = app.alerts[@"showAlert"].collectionViews;
    NSLog(@"query === %@",collectionViewsQuery.buttons);
//    [collectionViewsQuery.buttons[@"取消"] tap];
//    [collectionViewsQuery.buttons[@"确定"] tap];
    [self performSelector:@selector(sureHiddenAlert:) withObject:collectionViewsQuery afterDelay:4.0];
    
    
    
}
- (void)sureHiddenAlert:(XCUIElementQuery *)query{
    [query.buttons[@"取消"] tap];
    [query.buttons[@"确定"] tap];


}
- (void)testViewControllerTable{
    
    
}
- (void)testExample {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

@end
