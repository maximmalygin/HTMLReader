// This file was autogenerated from Tests/html5lib/tree-construction/tests21.dat

#import <XCTest/XCTest.h>
#import "HTMLTreeConstructionTestUtilities.h"

@interface TreeGenerationTests21Tests : XCTestCase

@end

@implementation TreeGenerationTests21Tests

- (void)test000
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[foo]]>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"foo\"\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test001
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<math><![CDATA[foo]]>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       \"foo\"\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test002
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<div><![CDATA[foo]]>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <div>\n|       <!-- [CDATA[foo]] -->\n");
    HTMLAssertParserState(parser, 3, fixture);
}

- (void)test003
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[foo"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"foo\"\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test004
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[foo"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"foo\"\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test005
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA["];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test006
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[]]>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test007
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[]] >]]>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"]] >\"\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test008
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[]] >]]>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"]] >\"\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test009
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[]]"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"]]\"\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test010
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[]"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"]\"\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test011
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[]>a"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"]>a\"\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test012
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><svg><![CDATA[foo]]]>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"foo]\"\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test013
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><svg><![CDATA[foo]]]]>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"foo]]\"\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test014
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><svg><![CDATA[foo]]]]]>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"foo]]]\"\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test015
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><foreignObject><div><![CDATA[foo]]>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg foreignObject>\n|         <div>\n|           <!-- [CDATA[foo]] -->\n");
    HTMLAssertParserState(parser, 3, fixture);
}

- (void)test016
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[<svg>]]>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"<svg>\"\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test017
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[</svg>a]]>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"</svg>a\"\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test018
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[<svg>a"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"<svg>a\"\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test019
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[</svg>a"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"</svg>a\"\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test020
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[<svg>]]><path>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"<svg>\"\n|       <svg path>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test021
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[<svg>]]></path>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"<svg>\"\n");
    HTMLAssertParserState(parser, 4, fixture);
}

- (void)test022
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[<svg>]]><!--path-->"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"<svg>\"\n|       <!-- path -->\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test023
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[<svg>]]>path"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"<svg>path\"\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test024
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[<!--svg-->]]>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"<!--svg-->\"\n");
    HTMLAssertParserState(parser, 2, fixture);
}

@end
