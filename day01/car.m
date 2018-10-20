#import<Foundation/Foundation.h>

@interface Person : NSObject
{
    char name[20];
    char gender;
    int age;
}
-(void)show;
-(void)setName:(char*)n andGender:(char)g andAge:(int)a;
@end
@implementation Person

-(void)show
{
    NSLog(@"name:%s,gender:%c,age:%i",name,gender,age);
}
-(void)setName:(char*)n andGender:(char)g andAge:(int)a
{
    strcpy(name,n);
    gender = g;
    age = a;
}

@end

@interface Car : NSObject
{
    double speed;
    int wheels;
    Person* owner;
}
-(void)show;
-(void)setSpeed:(double)s andWheels:(int)w andOwner:(Person*)p;
@end

@implementation Car

-(void)show
{
    NSLog(@"%i轮车以%.2fkm/h速度在跑",wheels,speed);
    NSLog(@"车主的信息：");
    [owner show];
}

-(void)setSpeed:(double)s andWheels:(int)w andOwner:(Person*)p
{
    speed = s;
    wheels = w;
    owner = p;
}
@end

int main()
{
//    Car* car = [Car new]; //[[Car alloc]init]
//    [car setSpeed:100 andWheels:4];
//    [car show];
//    
//    Car* car3 = [Car new];
//    [car3 setSpeed:40 andWheels:3];
//    [car3 show];
//    [car show];
//    
//    Car* car2  = car;//car2和car指向了同一个对象
//    [car2 setSpeed:20 andWheels:2];
//    [car2 show];
//    [car show];
    
    Person* p=[Person new];
    [p setName:"yjm" andGender:'M' andAge:30];
    [p show];
    
    Car* car = [Car new]; //[[Car alloc]init]
    [car setSpeed:100 andWheels:4 andOwner:p];
    [car show];

    return 0;
}





