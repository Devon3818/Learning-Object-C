#import<Foundation/Foundation.h>
@interface Time : NSObject
@property int hour;
@property int minute;
@property int second;

-(void)show;
@end

@implementation Time
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