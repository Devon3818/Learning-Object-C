#import<Foundation/Foundation.h>
@interface Time : NSObject
{
    int hour;
    int minute;
    int second;
}
- (void)show;
- (int)hour;
- (void)setHour:(int)hour;
-(void)setHour:(int)h andMinute:(int)m andSecond:(int)s;
@end
@implementation Time
- (void)show
{
    NSLog(@"%02d:%02d:%02d",hour,minute,second);
}
-(int)hour
{
    return hour;
}
-(void)setHour:(int)hour //方法名：setHour:
{
    self->hour = hour;//self指向类本身的指针
}
-(void)setHour:(int)h andMinute:(int)m andSecond:(int)s //方法名：setHour:andMinute:andSceond:
{
    hour = h;
    minute = m;
    second = s;
}
@end
int main()
{
    Time* tm1 = [[Time alloc]init];
    /*tm1->hour = 14;
    tm1->minute = 20;
    tm1->second = 35;*/
    [tm1 setHour:14];
    //[tm1 setHour:14 andMinute:23 andSecond:35];
    [tm1 show];
    return 0;
}