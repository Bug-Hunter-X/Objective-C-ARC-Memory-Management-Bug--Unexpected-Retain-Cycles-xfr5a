The solution involves using a `weak` reference instead of a `strong` reference for `myString` within the `MyClass` class. This prevents the retain cycle. 

```objectivec
@interface MyClass : NSObject
@property (weak, nonatomic) NSString *myString;
@end

@implementation MyClass
- (void)someMethod {
    self.myString = [[NSString alloc] initWithString:@