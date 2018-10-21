#import <Foundation/Foundation.h>

@interface Person : NSObject
@property int age;
@property char gender;
@property NSString* name;
-(instancetype)initWithName:(NSString*)n andAge:(int)a andGender:(char)c;
-(void)eat:(NSString*)food;
-(void)sleep:(int)hour;
@end
