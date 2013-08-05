// This file was autogenerated from Tests/html5lib/tree-construction/tests4.dat

#import <XCTest/XCTest.h>
#import "HTMLTreeConstructionTestUtilities.h"

@interface TreeGenerationTests04Tests : XCTestCase

@end

@implementation TreeGenerationTests04Tests

- (void)test000
{
    HTMLElementNode *context = [[HTMLElementNode alloc] initWithTagName:@"div"];
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"direct div content"
                                                    context:context];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| \"direct div content\"\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test001
{
    HTMLElementNode *context = [[HTMLElementNode alloc] initWithTagName:@"textarea"];
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"direct textarea content"
                                                    context:context];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| \"direct textarea content\"\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test002
{
    HTMLElementNode *context = [[HTMLElementNode alloc] initWithTagName:@"textarea"];
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"textarea content with <em>pseudo</em> <foo>markup"
                                                    context:context];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| \"textarea content with <em>pseudo</em> <foo>markup\"\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test003
{
    HTMLElementNode *context = [[HTMLElementNode alloc] initWithTagName:@"style"];
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"this is &#x0043;DATA inside a <style> element"
                                                    context:context];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| \"this is &#x0043;DATA inside a <style> element\"\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test004
{
    HTMLElementNode *context = [[HTMLElementNode alloc] initWithTagName:@"plaintext"];
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"</plaintext>"
                                                    context:context];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| \"</plaintext>\"\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test005
{
    HTMLElementNode *context = [[HTMLElementNode alloc] initWithTagName:@"html"];
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"setting html's innerHTML"
                                                    context:context];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <head>\n| <body>\n|   \"setting html's innerHTML\"\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test006
{
    HTMLElementNode *context = [[HTMLElementNode alloc] initWithTagName:@"head"];
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<title>setting head's innerHTML</title>"
                                                    context:context];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <title>\n|   \"setting head's innerHTML\"\n");
    HTMLAssertParserState(parser, 0, fixture);
}

@end
