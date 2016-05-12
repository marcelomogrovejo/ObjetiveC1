//
//  ExampleViewController.m
//  FirstApp
//
//  Created by Marcelo Mogrovejo on 5/12/16.
//  Copyright © 2016 Marcelo Mogrovejo. All rights reserved.
//

#import "ExampleViewController.h"

@interface ExampleViewController ()

@property(strong, nonatomic) UILabel *email;
@property(strong, nonatomic) UISwitch *turnEmail;
@property(strong, nonatomic) UITextField *textField;
@property(strong, nonatomic) UIButton *eraseValueBtn;
@property(strong, nonatomic) UISlider *updateValue;

@end

@implementation ExampleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Examples";
    self.view.backgroundColor = [UIColor purpleColor];
}

- (void)loadView {
    self.view = [[UIView alloc] init];
    
    /* Ejercicio: Hacer una pantalla con un switch que active y desactive el “hidden” de alguna otra view cualquiera.
     */
    self.email = [[UILabel alloc] init];
    self.email.frame = CGRectMake(10, 50, 300, 100);
    self.email.text = @"My email is: mmogrovejo@belatrixsf.com";
    self.email.adjustsFontSizeToFitWidth = YES;
    self.email.textColor = [UIColor lightGrayColor];
    
    self.turnEmail = [[UISwitch alloc] init];
    self.turnEmail.frame = CGRectMake(100, 120, 100, 100);
    // Initialize the switch
    [self switchChanged:self.turnEmail];
    [self.turnEmail addTarget: self action:@selector(switchChanged:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.email];
    [self.view addSubview:self.turnEmail];
    
    /* Ejercicio: Hacer una pantalla con un textfield y un botón que al presionarlo borre el contenido del textfield.
     */
    self.textField = [[UITextField alloc] init];
    self.textField.frame = CGRectMake(10, 190, 300, 50);
    self.textField.textColor = [UIColor whiteColor];
    self.textField.backgroundColor = [UIColor grayColor];
    
    self.eraseValueBtn = [[UIButton alloc] init];
    self.eraseValueBtn.frame = CGRectMake(100, 260, 100, 30);
    [self.eraseValueBtn setTitle:@"Erase Value" forState:UIControlStateNormal];
    [self.eraseValueBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.eraseValueBtn setTitle:@"Erasing..." forState:UIControlStateHighlighted];
    [self.eraseValueBtn setTitleColor:[UIColor greenColor] forState:UIControlStateHighlighted];
    [self.eraseValueBtn addTarget:self action:@selector(eraseTextValue:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.textField];
    [self.view addSubview:self.eraseValueBtn];
    
    /* Ejercicio: Agregar un slider y un textfield de manera tal que el texto del textfield siempre esté reflejando el valor del slider.
     */
    self.updateValue = [[UISlider alloc] init];
    self.updateValue.frame = CGRectMake(10, 330, 300, 30);
    self.updateValue.minimumValue = 0;
    self.updateValue.maximumValue = 100;
    [self.updateValue addTarget:self action:@selector(updateTextField:) forControlEvents:UIControlEventTouchDragInside];
    
    [self.view addSubview:self.updateValue];
}

- (void)switchChanged:(UISwitch *)sender {
    self.email.hidden = !sender.isOn;
}

- (void)eraseTextValue:(UIButton *)sender {
    if(![self.textField.text  isEqual: @""]) {
        self.textField.text = @"";
    }
}

- (void)updateTextField:(UISlider *)sender {
    self.textField.text = [[NSNumber numberWithFloat:sender.value] stringValue];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
