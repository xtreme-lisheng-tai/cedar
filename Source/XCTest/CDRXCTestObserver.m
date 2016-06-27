#import "CDRXCTestObserver.h"
#import "CDRFunctions.h"
#import "CDRPrivateFunctions.h"
#import "CDRXCTestCase.h"
#import "CDRExample.h"

@interface CDRXCTestObserver ()
@property (assign) BOOL observedTestSuiteStart;
@end

@implementation CDRXCTestObserver

- (void)testSuiteWillStart:(XCTestSuite *)testSuite {
    if (self.observedTestSuiteStart) {
        return;
    }
    self.observedTestSuiteStart = YES;

    id cedarTestSuite = CDRCreateXCTestSuite();
    [testSuite addTest:cedarTestSuite];
}

- (void)testSuiteDidFinish:(XCTestSuite *)testSuite {
    
}

@end
