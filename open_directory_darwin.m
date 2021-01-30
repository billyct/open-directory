#if defined(DARWIN)

#import <Cocoa/Cocoa.h>
#include "open_directory.h"

char* open_directory() {
    // https://stackoverflow.com/questions/62324273/nsopenpanel-cannot-get-focus
    [[NSApplication sharedApplication] setActivationPolicy:NSApplicationActivationPolicyAccessory];

    // Create the File Open Dialog class.
    NSOpenPanel* dialog = [NSOpenPanel openPanel];

    [dialog setCanChooseFiles:NO];
    [dialog setCanChooseDirectories:YES];

    // Display the dialog. If the OK button was pressed,
    // return the directory path.
    if ( [dialog runModal] == NSModalResponseOK )
    {
        NSURL* url = [[dialog URLs] objectAtIndex:0];
        return (char*)[[url absoluteString] UTF8String];
    }

    return "";
}

#endif // DARWIN