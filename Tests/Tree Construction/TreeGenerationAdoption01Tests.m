// This file was autogenerated from Tests/html5lib/tree-construction/adoption01.dat

#import <XCTest/XCTest.h>
#import "HTMLTreeConstructionTestUtilities.h"

@interface TreeGenerationAdoption01Tests : XCTestCase

@end

@implementation TreeGenerationAdoption01Tests

- (void)test000
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<a><p></a></p>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <a>\n|     <p>\n|       <a>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test001
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<a>1<p>2</a>3</p>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <a>\n|       \"1\"\n|     <p>\n|       <a>\n|         \"2\"\n|       \"3\"\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test002
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<a>1<button>2</a>3</button>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <a>\n|       \"1\"\n|     <button>\n|       <a>\n|         \"2\"\n|       \"3\"\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test003
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<a>1<b>2</a>3</b>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <a>\n|       \"1\"\n|       <b>\n|         \"2\"\n|     <b>\n|       \"3\"\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test004
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<a>1<div>2<div>3</a>4</div>5</div>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <a>\n|       \"1\"\n|     <div>\n|       <a>\n|         \"2\"\n|       <div>\n|         <a>\n|           \"3\"\n|         \"4\"\n|       \"5\"\n");
    HTMLAssertParserState(parser, 3, fixture);
}

- (void)test005
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<table><a>1<p>2</a>3</p>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <a>\n|       \"1\"\n|     <p>\n|       <a>\n|         \"2\"\n|       \"3\"\n|     <table>\n");
    HTMLAssertParserState(parser, 10, fixture);
}

- (void)test006
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<b><b><a><p></a>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <b>\n|       <b>\n|         <a>\n|         <p>\n|           <a>\n");
    HTMLAssertParserState(parser, 3, fixture);
}

- (void)test007
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<b><a><b><p></a>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <b>\n|       <a>\n|         <b>\n|       <b>\n|         <p>\n|           <a>\n");
    HTMLAssertParserState(parser, 3, fixture);
}

- (void)test008
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<a><b><b><p></a>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <a>\n|       <b>\n|         <b>\n|     <b>\n|       <b>\n|         <p>\n|           <a>\n");
    HTMLAssertParserState(parser, 3, fixture);
}

- (void)test009
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<p>1<s id=\"A\">2<b id=\"B\">3</p>4</s>5</b>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <p>\n|       \"1\"\n|       <s>\n|         id=\"A\"\n|         \"2\"\n|         <b>\n|           id=\"B\"\n|           \"3\"\n|     <s>\n|       id=\"A\"\n|       <b>\n|         id=\"B\"\n|         \"4\"\n|     <b>\n|       id=\"B\"\n|       \"5\"\n");
    HTMLAssertParserState(parser, 3, fixture);
}

- (void)test010
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<table><a>1<td>2</td>3</table>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <a>\n|       \"1\"\n|     <a>\n|       \"3\"\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             \"2\"\n");
    HTMLAssertParserState(parser, 5, fixture);
}

- (void)test011
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<table>A<td>B</td>C</table>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     \"AC\"\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             \"B\"\n");
    HTMLAssertParserState(parser, 4, fixture);
}

- (void)test012
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<a><svg><tr><input></a>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <a>\n|       <svg svg>\n|         <svg tr>\n|           <svg input>\n");
    HTMLAssertParserState(parser, 3, fixture);
}

- (void)test013
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<div><a><b><div><div><div><div><div><div><div><div><div><div></a>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <div>\n|       <a>\n|         <b>\n|       <b>\n|         <div>\n|           <a>\n|           <div>\n|             <a>\n|             <div>\n|               <a>\n|               <div>\n|                 <a>\n|                 <div>\n|                   <a>\n|                   <div>\n|                     <a>\n|                     <div>\n|                       <a>\n|                       <div>\n|                         <a>\n|                           <div>\n|                             <div>\n");
    HTMLAssertParserState(parser, 10, fixture);
}

- (void)test014
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<div><a><b><u><i><code><div></a>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <div>\n|       <a>\n|         <b>\n|           <u>\n|             <i>\n|               <code>\n|       <u>\n|         <i>\n|           <code>\n|             <div>\n|               <a>\n");
    HTMLAssertParserState(parser, 3, fixture);
}

- (void)test015
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<b><b><b><b>x</b></b></b></b>y"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <b>\n|       <b>\n|         <b>\n|           <b>\n|             \"x\"\n|     \"y\"\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test016
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<p><b><b><b><b><p>x"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <b>\n|         <b>\n|           <b>\n|             <b>\n|     <p>\n|       <b>\n|         <b>\n|           <b>\n|             \"x\"\n");
    HTMLAssertParserState(parser, 3, fixture);
}

@end
