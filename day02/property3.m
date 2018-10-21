#import<Foundation/Foundation.h>
@interface Time : NSObject
@property int hour;
@property int minute;
@property int second;

-(void)show;
@end

@implementation Time
//不要在set或get方法中使用点语法，否则会形成方法的递归，变成死循环
-(void)setHour:(int)newHour
{
    if(newHour>24||newHour<0)
    {
        _hour = 0;
        //self.hour =0;//error
    }
    _hour = newHour;
    //self.hour = newHour;//error
}
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