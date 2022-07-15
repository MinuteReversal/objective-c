#import <Foundation/Foundation.h>

@interface Methods : NSObject {
}
- (void)fn1;
- (void)fn2:(int)x;
- (int)fn3;
- (int)fn4:(int)x;
@end

@implementation Methods {
}
- (id)init {
  if (self = [super init]) {
    // do init
  }
  return self;
}

- (void)fn1 {
  NSLog(@"fn1");
}

- (void)fn2:(int)x {
  NSLog(@"fn%d", x);
}

- (int)fn3 {
  NSLog(@"fn3");
  return 3;
}

- (int)fn4:(int)x {
  NSLog(@"fn4");
  return x;
}

- (void)fn5:(int)x second:(int)y thrid:(int)z {
  NSLog(@"x:%d,y:%d,z:%d", x, y, z);
}

- (void)dealloc {
  [super dealloc];
}
@end

int main(int argc, const char *argv[]) {
  @autoreleasepool {
    Methods *methods = [[Methods alloc] init];
    [methods fn1];
    [methods fn2:(int)2];
    int result1 = [methods fn3];
    int result2 = [methods fn4:(int)4];
    NSLog(@"%d,%d", result1, result2);
    [methods fn5:(int)1 second:(int)2 thrid:(int)3];
    [methods dealloc];
  }
  return 0;
}