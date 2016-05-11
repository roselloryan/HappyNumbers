//
//  main.m
//  HappyNumbers


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *line = @"22";
        NSInteger testInt = 0;
        NSInteger counter = 0;
        
        
        while (counter < 200) {
        
            NSMutableArray *arrayOfNumbers = [[NSMutableArray alloc]init];
            testInt = 0;
            // build array of digits
            NSInteger i = 0;
            for (i = 0; i < line.length; i++) {
                [arrayOfNumbers addObject:[NSString stringWithFormat:@"%c", [line characterAtIndex:i]]];
            }
            // square and add all digits in array
            NSInteger k = 0;
            for (k = 0; k < arrayOfNumbers.count; k++) {
                testInt += [[arrayOfNumbers objectAtIndex:k]integerValue] * [[arrayOfNumbers objectAtIndex:k]integerValue];
                
                line = [NSString stringWithFormat:@"%ld", testInt];
            }
            
            if (testInt == 1) {
                NSLog(@"1");
                break;
            }
            else {
                counter ++;
                NSLog(@"testInt: %ld", testInt);
            }
        }
        
        if (testInt != 1) {
            NSLog(@"0");
        }
    }
    return 0;
}
