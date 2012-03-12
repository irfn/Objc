//
//  Foo.m
//  LearningObjc
//
//  Created by Irfan Shah on 12/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Foo.h"

@implementation Foo

@synthesize someFlag;

+(id) bar{
  return nil;
}

-(id) initWithData:(BOOL)data{
  self = [super init];
  someFlag = data;  
  publicData = @"this is public";
  return self;
}

-(NSString*) aMessage{
  NSString *message;
  if (someFlag) {
    message = @"Flag was on";
      } else {
    message = @"Flag was off";        
          }
  return message;
}
@end
