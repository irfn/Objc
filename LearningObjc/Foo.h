//
//  Foo.h
//  LearningObjc
//
//  Created by Irfan Shah on 12/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Foo : NSObject {
  @public
  NSString *publicData;
  @private
  BOOL someFlag;  
}
@property BOOL someFlag;
+(id) bar;

-(id) initWithData:(BOOL) data;

-(NSString*) aMessage;
@end
