//
//  WKWebViewConfiguration+CAPWebViewConfiguration.m
//  Capacitor
//
//  Created by Jake MacDonald on 2019-10-09.
//

#import "WKWebViewConfiguration+CAPWebViewConfiguration.h"

#if WK_API_ENABLED

#import "APIPageConfiguration.h"
#import "WKPreferences.h"
#import "WKProcessPool.h"
#import "WKUserContentController.h"
#import "WKWebViewContentProviderRegistry.h"
#import "WeakObjCPtr.h"
#import "_WKVisitedLinkProvider.h"
#import "_WKWebsiteDataStoreInternal.h"
#import <wtf/RetainPtr.h>

@implementation WKWebViewConfiguration (CAPWebViewConfiguration)

- (void)setURLSchemeHandler:(id <WKURLSchemeHandler>)urlSchemeHandler forURLScheme:(NSString *)urlScheme
{
    auto canonicalScheme = WebCore::URLParser::maybeCanonicalizeScheme(urlScheme);
    if (!canonicalScheme)
        [NSException raise:NSInvalidArgumentException format:@"'%@' is not a valid URL scheme", urlScheme];

    if (_pageConfiguration->urlSchemeHandlerForURLScheme(*canonicalScheme))
        [NSException raise:NSInvalidArgumentException format:@"URL scheme '%@' already has a registered URL scheme handler", urlScheme];

    _pageConfiguration->setURLSchemeHandlerForURLScheme(WebKit::WebURLSchemeHandlerCocoa::create(urlSchemeHandler), *canonicalScheme);
}

- (void)utilTest
{
    NSLog(@"Test Test UTil Test testuetauthea");
}

@end

#endif
