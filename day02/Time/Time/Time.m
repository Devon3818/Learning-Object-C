#import "Time.h"

@implementation Time
-(instancetype)init
{
    self = [super init];
    if(self!=nil)
    {
        _hour = 13;
        _minute = 30;
        _second = 0;
    }
    return  self;
}
-(void)dealloc//销毁对象，进行对象的清理工作
{
    //[super dealloc];
    NSLog(@"dealloc");
    
}
-(NSString*)description//重写这个方法，可以使对象通过%@输出内容
{
    return [NSString stringWithFormat:@"%02i:%02i:%02i",_hour,_minute,_second];
}
-(void)show
{
    NSLog(@"%02i:%02i:%02i",
          _hour,
          _minute,
          _second);
    NSLog(@"%p",self);
}
@end
