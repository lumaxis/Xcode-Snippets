// Read JSON file
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 72B8255E-8F93-4ADB-942E-DB013DB2B19C
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetPlatformFamily: iphoneos
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 0
  NSBundle *unitTestBundle = [NSBundle bundleForClass:[self class]];
NSString *filePath = [unitTestBundle pathForResource:<#name##> ofType:@"json"];
  
  NSError *jsonError = nil;
  NSData *jsonData = [NSData dataWithContentsOfFile:filePath options:kNilOptions error:&jsonError ];
  NSArray *dataArray = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&jsonError];
  
  if (dataArray.count == 0) {
    NSLog(@"JSON Serialization error: %@", jsonError);
  }