//
//  Adresse.h
//  FormationM2i
//
//  Created by admin on 29/09/2014.
//  Copyright (c) 2014 fr.proxiad.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Adresse : NSObject

@property (nonatomic) int numero;
@property (nonatomic,strong) NSString* rue;
@property (nonatomic) int codePostal;
@property (nonatomic,strong) NSString* ville;

@end
