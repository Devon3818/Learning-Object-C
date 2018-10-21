#import "Rectangle.h"

@implementation Rectangle
-(NSString*)description
{
    return [NSString stringWithFormat:@"x=%i,y=%i,height=%i,width=%i",self.x,self.y,
            _height,_width];
}
@end
