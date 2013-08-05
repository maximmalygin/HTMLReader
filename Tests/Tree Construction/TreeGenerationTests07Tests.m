// This file was autogenerated from Tests/html5lib/tree-construction/tests7.dat

#import <XCTest/XCTest.h>
#import "HTMLTreeConstructionTestUtilities.h"

@interface TreeGenerationTests07Tests : XCTestCase

@end

@implementation TreeGenerationTests07Tests

- (void)test000
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><body><title>X</title>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <title>\n|       \"X\"\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test001
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><table><title>X</title></table>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <title>\n|       \"X\"\n|     <table>\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test002
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><head></head><title>X</title>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <title>\n|       \"X\"\n|   <body>\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test003
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html></head><title>X</title>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <title>\n|       \"X\"\n|   <body>\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test004
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><table><meta></table>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <meta>\n|     <table>\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test005
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><table>X<tr><td><table> <meta></table></table>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"X\"\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <meta>\n|             <table>\n|               \" \"\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test006
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><html> <head>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test007
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html> <head>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test008
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><table><style> <tr>x </style> </table>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <style>\n|         \" <tr>x \"\n|       \" \"\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test009
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><table><TBODY><script> <tr>x </script> </table>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <script>\n|           \" <tr>x \"\n|         \" \"\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test010
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><p><applet><p>X</p></applet>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <applet>\n|         <p>\n|           \"X\"\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test011
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><listing>\nX</listing>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <listing>\n|       \"X\"\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test012
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><select><input>X"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n|     <input>\n|     \"X\"\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test013
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><select><select>X"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n|     \"X\"\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test014
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><table><input type=hidDEN></table>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <input>\n|         type=\"hidDEN\"\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test015
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><table>X<input type=hidDEN></table>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"X\"\n|     <table>\n|       <input>\n|         type=\"hidDEN\"\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test016
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><table>  <input type=hidDEN></table>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       \"  \"\n|       <input>\n|         type=\"hidDEN\"\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test017
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><table>  <input type='hidDEN'></table>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       \"  \"\n|       <input>\n|         type=\"hidDEN\"\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test018
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><table><input type=\" hidden\"><input type=hidDEN></table>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <input>\n|       type=\" hidden\"\n|     <table>\n|       <input>\n|         type=\"hidDEN\"\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test019
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><table><select>X<tr>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n|       \"X\"\n|     <table>\n|       <tbody>\n|         <tr>\n");
    HTMLAssertParserState(parser, 3, fixture);
}

- (void)test020
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><select>X</select>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n|       \"X\"\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test021
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE hTmL><html></html>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test022
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE HTML><html></html>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test023
{
    HTMLElementNode *context = [[HTMLElementNode alloc] initWithTagName:@"html"];
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<body>X</body></body>"
                                                    context:context];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <head>\n| <body>\n|   \"X\"\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test024
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<div><p>a</x> b"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <div>\n|       <p>\n|         \"a b\"\n");
    HTMLAssertParserState(parser, 3, fixture);
}

- (void)test025
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<table><tr><td><code></code> </table>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <code>\n|             \" \"\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test026
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<table><b><tr><td>aaa</td></tr>bbb</table>ccc"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <b>\n|     <b>\n|       \"bbb\"\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             \"aaa\"\n|     <b>\n|       \"ccc\"\n");
    HTMLAssertParserState(parser, 6, fixture);
}

- (void)test027
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"A<table><tr> B</tr> B</table>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     \"A B B\"\n|     <table>\n|       <tbody>\n|         <tr>\n");
    HTMLAssertParserState(parser, 5, fixture);
}

- (void)test028
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"A<table><tr> B</tr> </em>C</table>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     \"A BC\"\n|     <table>\n|       <tbody>\n|         <tr>\n|         \" \"\n");
    HTMLAssertParserState(parser, 6, fixture);
}

- (void)test029
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<select><keygen>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <select>\n|     <keygen>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

@end
