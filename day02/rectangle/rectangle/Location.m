#import "Location.h"

@implementation Location
-(NSString*)description
{
    return [NSString stringWithFormat:@"x=%i,y=%i",_x,_y];
}

@end
