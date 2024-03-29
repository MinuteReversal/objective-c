#import <Foundation/Foundation.h>
#include <objc/NSObject.h>

@interface Car : NSObject {
  NSString *color;
}
- (void)go;
@end

@implementation Car {
}
- init {
  if(self = [super init]){
    self->color = @"red";
  }
  return self;
}
- (void)go {
  NSLog(@"%@ car are go.", self->color);
}
- (void)dealloc {
  [super dealloc];
}
@end

/**
 * https://www.runoob.com/w3cnote/objective-c-tutorial.html
 */
int main(int argc, const char *argv[]) {
  @autoreleasepool {
    Car *car = [[Car alloc] init];
    [car go];

    Car *car2 = [Car new];
    [car2 go];
  }
  return 0;
}