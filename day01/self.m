#import<Foundation/Foundation.h>

@interface Time : NSObject
{
    int hour;
    int minute;
    int second;
}
@property int hour;
@property int minute;
@property int second;
-(void)show;
@end

@implementation Time
//@synthesize hour,minute,second;
-(void)show
{
    NSLog(@"%02i:%02i:%02i",self.hour,_minute,_second);
    NSLog(@"self is %p",self);
}
@end
int main()
{
    Time *tm = [Time new];
    NSLog(@"tm is %p",tm);
    [tm show];
    return 0;
}