/// В чем разница между атрибутами atomic и nonatomic?

/// Что atomic и nonatomic означает в декларациях о свойствах?
@property(nonatomic, retain) UITextField *userName;
@property(atomic, retain) UITextField *userName;
@property(retain) UITextField *userName;

/// В чем операционная разница между этими тремя?