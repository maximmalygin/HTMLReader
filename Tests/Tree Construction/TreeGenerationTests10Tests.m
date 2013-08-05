// This file was autogenerated from Tests/html5lib/tree-construction/tests10.dat

#import <XCTest/XCTest.h>
#import "HTMLTreeConstructionTestUtilities.h"

@interface TreeGenerationTests10Tests : XCTestCase

@end

@implementation TreeGenerationTests10Tests

- (void)test000
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><svg></svg>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test001
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><svg></svg><![CDATA[a]]>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|     <!-- [CDATA[a]] -->\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test002
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><body><svg></svg>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test003
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><body><select><svg></svg></select>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test004
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><body><select><option><svg></svg></option></select>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <option>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test005
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><body><table><svg></svg></table>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|     <table>\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test006
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><body><table><svg><g>foo</g></svg></table>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg g>\n|         \"foo\"\n|     <table>\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test007
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><body><table><svg><g>foo</g><g>bar</g></svg></table>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg g>\n|         \"foo\"\n|       <svg g>\n|         \"bar\"\n|     <table>\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test008
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><body><table><tbody><svg><g>foo</g><g>bar</g></svg></tbody></table>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg g>\n|         \"foo\"\n|       <svg g>\n|         \"bar\"\n|     <table>\n|       <tbody>\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test009
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><body><table><tbody><tr><svg><g>foo</g><g>bar</g></svg></tr></tbody></table>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg g>\n|         \"foo\"\n|       <svg g>\n|         \"bar\"\n|     <table>\n|       <tbody>\n|         <tr>\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test010
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><body><table><tbody><tr><td><svg><g>foo</g><g>bar</g></svg></td></tr></tbody></table>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <svg svg>\n|               <svg g>\n|                 \"foo\"\n|               <svg g>\n|                 \"bar\"\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test011
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><body><table><tbody><tr><td><svg><g>foo</g><g>bar</g></svg><p>baz</td></tr></tbody></table>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <svg svg>\n|               <svg g>\n|                 \"foo\"\n|               <svg g>\n|                 \"bar\"\n|             <p>\n|               \"baz\"\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test012
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><body><table><caption><svg><g>foo</g><g>bar</g></svg><p>baz</caption></table>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <caption>\n|         <svg svg>\n|           <svg g>\n|             \"foo\"\n|           <svg g>\n|             \"bar\"\n|         <p>\n|           \"baz\"\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test013
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><body><table><caption><svg><g>foo</g><g>bar</g><p>baz</table><p>quux"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <caption>\n|         <svg svg>\n|           <svg g>\n|             \"foo\"\n|           <svg g>\n|             \"bar\"\n|         <p>\n|           \"baz\"\n|     <p>\n|       \"quux\"\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test014
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><body><table><caption><svg><g>foo</g><g>bar</g>baz</table><p>quux"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <caption>\n|         <svg svg>\n|           <svg g>\n|             \"foo\"\n|           <svg g>\n|             \"bar\"\n|           \"baz\"\n|     <p>\n|       \"quux\"\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test015
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><body><table><colgroup><svg><g>foo</g><g>bar</g><p>baz</table><p>quux"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg g>\n|         \"foo\"\n|       <svg g>\n|         \"bar\"\n|     <p>\n|       \"baz\"\n|     <table>\n|       <colgroup>\n|     <p>\n|       \"quux\"\n");
    HTMLAssertParserState(parser, 5, fixture);
}

- (void)test016
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><body><table><tr><td><select><svg><g>foo</g><g>bar</g><p>baz</table><p>quux"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <select>\n|               \"foobarbaz\"\n|     <p>\n|       \"quux\"\n");
    HTMLAssertParserState(parser, 7, fixture);
}

- (void)test017
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><body><table><select><svg><g>foo</g><g>bar</g><p>baz</table><p>quux"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n|       \"foobarbaz\"\n|     <table>\n|     <p>\n|       \"quux\"\n");
    HTMLAssertParserState(parser, 8, fixture);
}

- (void)test018
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><body></body></html><svg><g>foo</g><g>bar</g><p>baz"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg g>\n|         \"foo\"\n|       <svg g>\n|         \"bar\"\n|     <p>\n|       \"baz\"\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test019
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><body></body><svg><g>foo</g><g>bar</g><p>baz"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg g>\n|         \"foo\"\n|       <svg g>\n|         \"bar\"\n|     <p>\n|       \"baz\"\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test020
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><frameset><svg><g></g><g></g><p><span>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n");
    HTMLAssertParserState(parser, 8, fixture);
}

- (void)test021
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><frameset></frameset><svg><g></g><g></g><p><span>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n");
    HTMLAssertParserState(parser, 7, fixture);
}

- (void)test022
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><body xlink:href=foo><svg xlink:href=foo></svg>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     xlink:href=\"foo\"\n|     <svg svg>\n|       xlink href=\"foo\"\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test023
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><body xlink:href=foo xml:lang=en><svg><g xml:lang=en xlink:href=foo></g></svg>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     xlink:href=\"foo\"\n|     xml:lang=\"en\"\n|     <svg svg>\n|       <svg g>\n|         xlink href=\"foo\"\n|         xml lang=\"en\"\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test024
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><body xlink:href=foo xml:lang=en><svg><g xml:lang=en xlink:href=foo /></svg>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     xlink:href=\"foo\"\n|     xml:lang=\"en\"\n|     <svg svg>\n|       <svg g>\n|         xlink href=\"foo\"\n|         xml lang=\"en\"\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test025
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><body xlink:href=foo xml:lang=en><svg><g xml:lang=en xlink:href=foo />bar</svg>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     xlink:href=\"foo\"\n|     xml:lang=\"en\"\n|     <svg svg>\n|       <svg g>\n|         xlink href=\"foo\"\n|         xml lang=\"en\"\n|       \"bar\"\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test026
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg></path>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n");
    HTMLAssertParserState(parser, 4, fixture);
}

- (void)test027
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<div><svg></div>a"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <div>\n|       <svg svg>\n|     \"a\"\n");
    HTMLAssertParserState(parser, 3, fixture);
}

- (void)test028
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<div><svg><path></div>a"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <div>\n|       <svg svg>\n|         <svg path>\n|     \"a\"\n");
    HTMLAssertParserState(parser, 3, fixture);
}

- (void)test029
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<div><svg><path></svg><path>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <div>\n|       <svg svg>\n|         <svg path>\n|       <path>\n");
    HTMLAssertParserState(parser, 3, fixture);
}

- (void)test030
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<div><svg><path><foreignObject><math></div>a"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <div>\n|       <svg svg>\n|         <svg path>\n|           <svg foreignObject>\n|             <math math>\n|               \"a\"\n");
    HTMLAssertParserState(parser, 4, fixture);
}

- (void)test031
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<div><svg><path><foreignObject><p></div>a"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <div>\n|       <svg svg>\n|         <svg path>\n|           <svg foreignObject>\n|             <p>\n|               \"a\"\n");
    HTMLAssertParserState(parser, 3, fixture);
}

- (void)test032
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><svg><desc><div><svg><ul>a"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg desc>\n|         <div>\n|           <svg svg>\n|           <ul>\n|             \"a\"\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test033
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><svg><desc><svg><ul>a"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg desc>\n|         <svg svg>\n|         <ul>\n|           \"a\"\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test034
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><p><svg><desc><p>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <svg svg>\n|         <svg desc>\n|           <p>\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test035
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><p><svg><title><p>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <svg svg>\n|         <svg title>\n|           <p>\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test036
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<div><svg><path><foreignObject><p></foreignObject><p>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <div>\n|       <svg svg>\n|         <svg path>\n|           <svg foreignObject>\n|             <p>\n|             <p>\n");
    HTMLAssertParserState(parser, 3, fixture);
}

- (void)test037
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<math><mi><div><object><div><span></span></div></object></div></mi><mi>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mi>\n|         <div>\n|           <object>\n|             <div>\n|               <span>\n|       <math mi>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test038
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<math><mi><svg><foreignObject><div><div></div></div></foreignObject></svg></mi><mi>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mi>\n|         <svg svg>\n|           <svg foreignObject>\n|             <div>\n|               <div>\n|       <math mi>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test039
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><script></script><path>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg script>\n|       <svg path>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test040
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<table><svg></svg><tr>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|     <table>\n|       <tbody>\n|         <tr>\n");
    HTMLAssertParserState(parser, 3, fixture);
}

- (void)test041
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<math><mi><mglyph>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mi>\n|         <math mglyph>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test042
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<math><mi><malignmark>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mi>\n|         <math malignmark>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test043
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<math><mo><mglyph>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mo>\n|         <math mglyph>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test044
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<math><mo><malignmark>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mo>\n|         <math malignmark>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test045
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<math><mn><mglyph>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mn>\n|         <math mglyph>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test046
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<math><mn><malignmark>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mn>\n|         <math malignmark>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test047
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<math><ms><mglyph>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math ms>\n|         <math mglyph>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test048
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<math><ms><malignmark>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math ms>\n|         <math malignmark>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test049
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<math><mtext><mglyph>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mtext>\n|         <math mglyph>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test050
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<math><mtext><malignmark>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mtext>\n|         <math malignmark>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test051
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<math><annotation-xml><svg></svg></annotation-xml><mi>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math annotation-xml>\n|         <svg svg>\n|       <math mi>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test052
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<math><annotation-xml><svg><foreignObject><div><math><mi></mi></math><span></span></div></foreignObject><path></path></svg></annotation-xml><mi>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math annotation-xml>\n|         <svg svg>\n|           <svg foreignObject>\n|             <div>\n|               <math math>\n|                 <math mi>\n|               <span>\n|           <svg path>\n|       <math mi>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test053
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<math><annotation-xml><svg><foreignObject><math><mi><svg></svg></mi><mo></mo></math><span></span></foreignObject><path></path></svg></annotation-xml><mi>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math annotation-xml>\n|         <svg svg>\n|           <svg foreignObject>\n|             <math math>\n|               <math mi>\n|                 <svg svg>\n|               <math mo>\n|             <span>\n|           <svg path>\n|       <math mi>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

@end
