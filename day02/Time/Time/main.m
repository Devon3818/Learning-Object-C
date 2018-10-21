#import <Foundation/Foundation.h>
#import "Time.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSString* str = @"how are you?";
        
        Time* tm = [[Time alloc]init];
        //[tm show];
        //[tm release];
        NSLog(@"%@",tm);//-(NSString*)description
        
    }
    return 0;
}

