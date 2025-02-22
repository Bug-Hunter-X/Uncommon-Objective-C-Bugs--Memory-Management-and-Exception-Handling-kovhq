```objectivec
#import <Foundation/Foundation.h>

@interface MyClass : NSObject
@property (nonatomic, strong) NSString *myString;
@end

@implementation MyClass
- (void)setMyString:(NSString *)newString {
    if (myString != newString) {
        [_myString release];
        _myString = [newString retain];
    }
}
- (void)dealloc {
    [_myString release];
    [super dealloc];
}
@end

// Delegate handling example (Illustrative)
@interface MyDelegate : NSObject <MyProtocol>  // Assumes a protocol 'MyProtocol'
@end
@implementation MyDelegate
// ... implement delegate methods
@end

//Proper use
//In dealloc of the class that sets the delegate
- (void)dealloc {
    self.delegate = nil;
    [super dealloc];
}

//Exception Handling

//Use proper exceptions handling to prevent application crashes.
@try {
   // Code that may throw an exception
} @catch (NSException *exception) {
   //Handle exception
   NSLog(@"Exception: %@", exception);
} @finally {
  //Cleanup
}
```