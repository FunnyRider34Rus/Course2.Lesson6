//
//  ViewController.m
//  Course2.Lesson6
//
//  Created by Павел on 25.09.2023.
//

#import "ViewController.h"
#import "Robot.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Robot *robot = [[Robot alloc] initWithCoord:10.0 y:20.0 name:@"Robot1"];
    
    NSData *robotData = [NSKeyedArchiver archivedDataWithRootObject:robot requiringSecureCoding:NO error:nil];
    [[NSUserDefaults standardUserDefaults] setObject:robotData forKey:@"Robot1"];
    
    NSData *savedRobotData = [[NSUserDefaults standardUserDefaults] objectForKey:@"Robot1"];
    Robot *savedRobot = [NSKeyedUnarchiver unarchiveObjectWithData:savedRobotData];
    
    self.textView.text = [NSString stringWithFormat:@"Name: %@\nCoordinates: (%.2f, %.2f)", savedRobot.name, savedRobot.x, savedRobot.y];
    
    NSString *filePath = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject] stringByAppendingPathComponent:savedRobot.name];
    [NSKeyedArchiver archiveRootObject:savedRobot toFile:filePath];
    
    Robot *readRobot = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
    
    self.textView.text = [NSString stringWithFormat:@"%@\n\nName: %@\nCoordinates: (%.2f, %.2f)", self.textView.text, readRobot.name, readRobot.x, readRobot.y];
}

@end
