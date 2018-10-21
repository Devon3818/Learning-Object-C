#import<Foundation/Foundation.h>
@interface Time : NSObject
{
    //成员变量放在@interface里面，默认是@protected
    //成员变量放在@implementation里面，默认是@private
    int hour;
    //int minute;
    int second;
}
-(int)hour;//get方法，命名规则：返回类型就是成员变量的类型，方法名就是成员变量的名字
-(void)setHour:(int)newHour;//set方法，命名规则：返回类型都是void，方法名是set加上成员变量名字的首字母大写，带一个参数，参数类型是成员变量的类型

//-(int)minute;
//-(void)setMinute:(int)newMinute;
@property int minute;//@property只能用在@interface,作用就是为成员变量自动生成get和set方法的声明
//@property在新版的XCode中，可以做三件事：
//1、自动生成成员变量，名字是前面加下划线
//2、自动声明成员变量的get和set方法
//3、自动实现成员变量的get和set方法

//OC中的命名规则
//成员变量名前加下划线
//get和set方法中的名字去掉下划线

-(void)show;
@end

@implementation Time
//@synthesize minute;//@synthesize只能用在@implementation中，作用就是自动生成成员变量get和set方法的实现
-(int)hour
{
    NSLog(@"get");
    return hour;
}
-(void)setHour:(int)newHour
{
    NSLog(@"set");
    if(newHour>24||newHour<0)//对不合理的值进行过滤
    {
        hour = 0;
    }
    hour = newHour;
}
//-(void)setMinute:(int)newMinute
//{
//    NSLog(@"自定义的set");
//    if(newMinute>60 || newMinute<0)
//    {
//        minute = 0;
//    }
//    minute = newMinute;
//}
-(void)show
{
    NSLog(@"%02i:%02i:%02i",hour,_minute,second);//类的成员方法可以直接访问成员变量
}
@end

int main()
{
    Time* tm = [Time new]; //[[Time alloc]init]
    //[tm setHour:12];
    tm.hour = 12;  //点语法 成员变量在有了get和set方法后，可以用对象指针+.形式访问
    int h = tm.hour;
    NSLog(@"h = %i",h);
    tm.minute = 30;
    [tm setMinute: 25];
    [tm show];
    return 0;
}