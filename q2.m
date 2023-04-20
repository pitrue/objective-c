/// Найдите ошибку в коде Objective-C ниже. Объясните свой ответ.

@interface HelloWorldController : UIViewController  

@property (strong, nonatomic) UILabel *alert;  

@end  

@implementation HelloWorldController  

- (void)viewDidLoad {
     CGRect frame = CGRectMake(150, 150, 150, 50);
     self.alert = [[UILabel alloc] initWithFrame:frame];
     self.alert.text = @"Hello...";
     [self.view addSubview:self.alert];
      dispatch_async(
        dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0),
        ^{
           sleep(10);
           self.alert.text = @"World";
        }
    ); 
}  

@end