#import<Foundation/Foundation.h>
@interface Time : NSObject
{
    int _hour;
    int _minute;
    int _second;
}
@property int hour;
@property int minute;
@property int second;

-(void)show;
@end

@implementation Time
//@synthesize会生成同名的成员变量
@synthesize hour=_hour;
@synthesize minute=_minute;
@synthesize second=_second;
-(void)show
{
    NSLog(@"%02i:%02i:%02i",_hour,_minute,_second);
}
@end
int main()
{
    Time* tm = [[Time alloc]init];
    tm.hour = 12;
    tm.minute = 30;
    tm.second = 25;
    [tm show];
    return 0;
}