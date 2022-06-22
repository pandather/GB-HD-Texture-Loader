#import "CCFileUtils.h"

%hook CCFileUtils

- (void)setSearchResolutionsOrder:(id)arg1 {
  NSArray *nsArray = [NSArray arrayWithObjects:@"ipadhd", @"iphone5hd", @"ipad", @"hd", @"iphone5", @"iphone", @"default", nil];
  %orig(nsArray);
}

- (void)buildSearchResolutionsOrder {
  %orig;
  [self setSearchResolutionsOrder:0];
  [self setiPadContentScaleFactor:2.0];
}

%end
