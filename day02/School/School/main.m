#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
#import "Teacher.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Student* stu = [[Student alloc]initWithName:@"张三" andAge:23 andGender:'M'];
        NSLog(@"%@",stu);
        [stu eat:@"apple"];
        [stu sleep:8];
        [stu study:@"Objective C"];
        
        Teacher* tea = [[Teacher alloc]initWithName:@"王五" andAge:45 andGender:'M'];
        NSLog(@"%@",tea);
        [tea eat:@"banana"];
        [tea sleep:7];
        [tea setSubject:@"Objective C"];
        [tea teach];
        
    }
    return 0;
}

