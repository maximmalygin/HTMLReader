// This file was autogenerated from Tests/html5lib/tree-construction/tests18.dat

#import <XCTest/XCTest.h>
#import "HTMLTreeConstructionTestUtilities.h"

@interface TreeGenerationTests18Tests : XCTestCase

@end

@implementation TreeGenerationTests18Tests

- (void)test000
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><plaintext></plaintext>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <plaintext>\n|       \"</plaintext>\"\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test001
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><table><plaintext></plaintext>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <plaintext>\n|       \"</plaintext>\"\n|     <table>\n");
    HTMLAssertParserState(parser, 14, fixture);
}

- (void)test002
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><table><tbody><plaintext></plaintext>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <plaintext>\n|       \"</plaintext>\"\n|     <table>\n|       <tbody>\n");
    HTMLAssertParserState(parser, 14, fixture);
}

- (void)test003
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><table><tbody><tr><plaintext></plaintext>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <plaintext>\n|       \"</plaintext>\"\n|     <table>\n|       <tbody>\n|         <tr>\n");
    HTMLAssertParserState(parser, 14, fixture);
}

- (void)test004
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><table><td><plaintext></plaintext>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <plaintext>\n|               \"</plaintext>\"\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test005
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><table><caption><plaintext></plaintext>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <caption>\n|         <plaintext>\n|           \"</plaintext>\"\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test006
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><table><tr><style></script></style>abc"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"abc\"\n|     <table>\n|       <tbody>\n|         <tr>\n|           <style>\n|             \"</script>\"\n");
    HTMLAssertParserState(parser, 4, fixture);
}

- (void)test007
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><table><tr><script></style></script>abc"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"abc\"\n|     <table>\n|       <tbody>\n|         <tr>\n|           <script>\n|             \"</style>\"\n");
    HTMLAssertParserState(parser, 4, fixture);
}

- (void)test008
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><table><caption><style></script></style>abc"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <caption>\n|         <style>\n|           \"</script>\"\n|         \"abc\"\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test009
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><table><td><style></script></style>abc"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <style>\n|               \"</script>\"\n|             \"abc\"\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test010
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><select><script></style></script>abc"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <script>\n|         \"</style>\"\n|       \"abc\"\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test011
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><table><select><script></style></script>abc"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <script>\n|         \"</style>\"\n|       \"abc\"\n|     <table>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test012
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><table><tr><select><script></style></script>abc"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <script>\n|         \"</style>\"\n|       \"abc\"\n|     <table>\n|       <tbody>\n|         <tr>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

- (void)test013
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><frameset></frameset><noframes>abc"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n|   <noframes>\n|     \"abc\"\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test014
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><frameset></frameset><noframes>abc</noframes><!--abc-->"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n|   <noframes>\n|     \"abc\"\n|   <!-- abc -->\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test015
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><frameset></frameset></html><noframes>abc"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n|   <noframes>\n|     \"abc\"\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test016
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><frameset></frameset></html><noframes>abc</noframes><!--abc-->"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n|   <noframes>\n|     \"abc\"\n| <!-- abc -->\n");
    HTMLAssertParserState(parser, 0, fixture);
}

- (void)test017
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><table><tr></tbody><tfoot>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|       <tfoot>\n");
    HTMLAssertParserState(parser, 1, fixture);
}

- (void)test018
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><table><td><svg></svg>abc<td>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <svg svg>\n|             \"abc\"\n|           <td>\n");
    HTMLAssertParserState(parser, 2, fixture);
}

@end
