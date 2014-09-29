//
//  main.m
//  FormationM2i
//
//  Created by admin on 29/09/2014.
//  Copyright (c) 2014 fr.proxiad.com. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"

int main(int argc, char * argv[])
{
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
    
    int nombreA = 1;
    int nombreB = 3;
    
    int total = nombreA+nombreB;
    int monTab[] = {1,2,3};
    
    printf("Mon total est de %d \n",total);
    
    while(nombreA <= 10){
        nombreA++;
        printf("Mon nombreA incrémenté est de %d \n",nombreA);
    }
    
    for(;nombreB<=10;nombreB++){
        printf("Mon nombreB incrémenté est de %d \n",nombreB);
    }
    
    BOOL isFormation=NO;
    for(int i = 0;i < sizeof(monTab)/ sizeof(monTab[0]);i++){
        
        int var = monTab[i];
        
        if(var == 2 || isFormation){
            printf("M%di Formation\n",var);
            isFormation = YES;
        } else {
            printf("Mon tab a pour valeur %d \n",var);
        }
        
        switch (var) {
            case 1:
                printf("Le 1 c'est cool \n");
                break;
            case 2:
                printf("Le 2 c'est bien \n");
                break;
            case 3:
                printf("Le 3 c'est moyen \n");
                break;
                
            default:
                break;
        }
        
    }
}
