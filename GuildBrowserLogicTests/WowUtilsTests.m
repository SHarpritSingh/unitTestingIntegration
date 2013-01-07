//
//  WowUtilsTests.m
//  GuildBrowser
//
//  Created by Harprit Singh on 1/7/13.
//  Copyright (c) 2013 Charlie Fulton. All rights reserved.
//

#import "WowUtilsTests.h"
#import "WowUtils.h"

@implementation WowUtilsTests

// 1
-(void)testCharacterClassNameLookup
{
    // 2
    STAssertEqualObjects(@"Warrior",
                         [WoWUtils classFromCharacterType:1],
                         @"ClassType should be Warrior");
    // 3
    STAssertFalse([@"Mage" isEqualToString:[WoWUtils classFromCharacterType:2]],
                  nil);
    
    // 4
    STAssertTrue([@"Paladin" isEqualToString:[WoWUtils classFromCharacterType:2]],
                 nil);
    // add the rest as an exercise
}



@end
