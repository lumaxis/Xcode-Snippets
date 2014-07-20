// Read JSON file
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 72B8255E-8F93-4ADB-942E-DB013DB2B19C
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetPlatformFamily: iphoneos
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 0
NSString *filePath = [unitTestBundle pathForResource:<#name#> ofType:@"<#filetype#>"];
  
NSError *fileError;
NSData *jsonData = [NSData dataWithContentsOfFile:filePath options:<#options#> error:&fileError ];
  NSError *jsonError = nil;
<#object type#> *data = [NSJSONSerialization JSONObjectWithData:jsonData options:<#options#> error:&jsonError];
  
  if (data.count == 0) {
    NSLog(@"JSON Serialization error: %@", jsonError);
  }