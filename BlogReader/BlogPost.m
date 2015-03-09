//
//  BlogPost.m
//  BlogReader
//
//  Created by Samia Al Rahmani on 3/3/15.
//  Copyright (c) 2015 Samia Al Rahmani. All rights reserved.
//

#import "BlogPost.h"

@implementation BlogPost

- (BlogPost *) initWithTitle:(NSString *)title {
    self = [super init];
    
    if ( self ) {
        self.title = title;
        // so we don't get errors in case there is nothing there, we set to nil
        self.author = nil;
        self.thumbnail = nil;
    }
    
    return self;
}

+ (id) blogPostWithTitle:(NSString *)title {
    return [[self alloc] initWithTitle:title];
}


- (NSURL *) thumbnailURL {
    NSLog(@"%@", [self.thumbnail class]);
    return [NSURL URLWithString:self.thumbnail];
}

- (NSString *) formattedDate {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *tempDate = [dateFormatter dateFromString:self.date];
    
    [dateFormatter setDateFormat:@"EE MM, dd"];
    return [dateFormatter stringFromDate:tempDate];
    
}



@end
