//
//  WKWebViewConfiguration+CAPWebViewConfiguration.h
//  Capacitor
//
//  Created by Jake MacDonald on 2019-10-09.
//

#import <WebKit/WebKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WKWebViewConfiguration (CAPWebViewConfiguration)

- (void)setURLSchemeHandler:(id <WKURLSchemeHandler>)urlSchemeHandler forURLScheme:(NSString *)urlScheme;

- (void)utilTest;

@end

NS_ASSUME_NONNULL_END
