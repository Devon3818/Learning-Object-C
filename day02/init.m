#import<Foundation/Foundation.h>
@interface Time : NSObject
@property int hour;
@property int minute;
@property int second;

-(void)show;
-(instancetype)initWithHour:(int)h andMinute:(int)m andSecond:(int)s;
@end

@implementation Time
-(void)show
{
    NSLog(@"%02i:%02i:%02i",_hour,_minute,_second);
}
-(instancetype)initWithHour:(int)h andMinute:(int)m andSecond:(int)s{
    self = [super init];
    if(self != nil)
    {
        _hour = h;
        _minute = m;
        _second = s;
    }
    return self;
}
-(instancetype)init//instancetype实例类型，只用在init方法中
//id可以指向任意对象的类型
{
    //首先初始化父类的部分
    self = [super init];
    //初始化自己的部分，先判断self是否为nil，nil说明父类初始化失败
    if(self != nil)
    {
        _hour = 12;
        _minute = 0;
        _second = 0;
    }
    return self;
}
@end
int main()
{
    Time* tm = [[Time alloc]init];
//    tm.hour = 12;
//    tm.minute = 30;
//    tm.second = 25;
    [tm show];
    
    Time* tm2 = [[Time alloc]initWithHour:13 andMinute:30 andSecond:0];
    [tm2 show];
    return 0;
}