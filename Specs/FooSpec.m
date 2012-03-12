#import <Cedar/SpecHelper.h>
#define HC_SHORTHAND
#import <OCHamcrest/OCHamcrest.h>
#import "Foo.h"
SPEC_BEGIN(FooSpec)

describe(@"Foo", ^{
  
  it(@"should not be nil", ^{                    
    Foo *foo = [[Foo alloc] init];
    assertThat(foo, isNot(nil));
  });
  
  it(@"should be off", ^{                    
    Foo *foo = [[Foo alloc] initWithData:FALSE];
    assertThat([foo aMessage], equalTo(@"Flag was off"));
  });
  
  it(@"should be public", ^{                    
    Foo *foo = [[Foo alloc] initWithData:FALSE];
    assertThat(foo->publicData, equalTo(@"this is public"));
  });
  
  
  it(@"should have nil bar", ^{                    
    assertThat([Foo bar], is(nil));    
  });
  
  
});
SPEC_END

