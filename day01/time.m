#import<Foundation/Foundation.h>
@interface Time : NSObject
{
    //@interface中声明的成员变量默认都是@protected
    //保护的成员只能在类的内部或子类访问，外部不能访问
    //@public公共的 @private私有的 @protected保护的
    @public
    int hour;
    int minute;
    int second;
}
@end
@implementation Time
@end
int main()
{
    Time* tm  = [Time new];
    tm->hour = 12;
    tm->minute = 30;
    tm->second = 0;
    NSLog(@"%02d:%02d:%02d",tm->hour,tm->minute,tm->second);
    return 0;
}