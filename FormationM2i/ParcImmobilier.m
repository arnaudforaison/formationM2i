//
//  ParcImmobilier.m
//  FormationM2i
//
//  Created by admin on 29/09/2014.
//  Copyright (c) 2014 fr.proxiad.com. All rights reserved.
//

#import "ParcImmobilier.h"

@implementation ParcImmobilier
@synthesize immeubles,maisons;

-(id)init {
    self = [super init];
    if (self) {
        // New version for alloc - init
        immeubles = [NSMutableArray new];
        
        // Old version for alloc - init
        maisons = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void) ajoutImmeuble: (Immeuble*) immeuble{
    [immeubles addObject:immeuble];
}

- (void) ajoutMaison: (Maison*) maison {
    [maisons addObject:maison];
}

@end
