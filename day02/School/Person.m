#import "Person.h"

@implementation Person
-(NSString*)description
{
    return [NSString stringWithFormat:@"name=%@,age=%i,gender=%c",
            _name,_age,_gender];
}
-(instancetype)initWithName:(NSString*)n andAge:(int)a andGender:(char)c
{
    self = [super init];
    if(self!=nil)
    {
        _name = n;
        _age = a;
        _gender = c;
    }
    return self;
}
-(void)eat:(NSString *)food
{
    NSLog(@"eating %@",food);
}
-(void)sleep:(int)hour
{
    NSLog(@"sleeping %i hour",hour);
}
@end
