In Objective-C, a common yet subtle error arises when dealing with memory management using ARC (Automatic Reference Counting).  Consider this scenario: 

```objectivec
@interface MyClass : NSObject
@property (strong, nonatomic) NSString *myString;
@end

@implementation MyClass
- (void)someMethod {
    self.myString = [[NSString alloc] initWithString:@