#import "CDVContextMenuState.h"

@implementation CDVContextMenuState

- (void)hide:(CDVInvokedUrlCommand*)command
{
        // Do any additional setup after loading the view from its nib.
        [[NSNotificationCenter defaultCenter] addObserver:self.webView selector:@selector(menuWillBeShown:) name:UIMenuControllerWillShowMenuNotification object:nil];
}

- (void)menuWillBeShown:(NSNotification *)notification {
        dispatch_async(dispatch_get_main_queue(),^{
                [[UIMenuController sharedMenuController] setMenuVisible:NO animated:NO];
        });
}

@end
