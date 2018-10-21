#import <Foundation/Foundation.h>
#import "Location.h"
#import "Rectangle.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Location* l = [[Location alloc]init];
        [l setX:100];
        [l setY:200];
        NSLog(@"%@",l);
        
        
        Rectangle* rect = [[Rectangle alloc]init];
        [rect setX:100];
        [rect setY:300];
        [rect setHeight:50];
        [rect setWidth:60];
        NSLog(@"%@",rect);
        
    }
    return 0;
}

