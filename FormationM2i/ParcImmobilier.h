//
//  ParcImmobilier.h
//  FormationM2i
//
//  Created by admin on 29/09/2014.
//  Copyright (c) 2014 fr.proxiad.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Maison.h"
#import "Immeuble.h"

@interface ParcImmobilier : NSObject

@property (nonatomic,strong) NSMutableArray* maisons;
@property (nonatomic,strong) NSMutableArray* immeubles;

- (void) ajoutImmeuble: (Immeuble*) immeuble;
- (void) ajoutMaison: (Maison*) maison;

@end
