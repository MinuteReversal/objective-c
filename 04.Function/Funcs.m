#import <Foundation/Foundation.h>

void FN1() { NSLog(@"FN1"); }

void FN2(int x) { NSLog(@"FN%d", x); }

int FN3() {
  NSLog(@"FN3");
  return 3;
}

int FN4(int x) {
  NSLog(@"FN%d", x);
  return 4;
}

int main(int argc, const char *argv[]) {
  @autoreleasepool {
    FN1();
    FN2(2);
    int result1 = FN3();
    int result2 = FN4(4);
  }
  return 0;
}