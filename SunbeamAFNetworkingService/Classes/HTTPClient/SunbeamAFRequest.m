//
//  SunbeamAFRequest.m
//  Pods
//
//  Created by sunbeam on 16/6/29.
//
//

#import "SunbeamAFRequest.h"

@interface SunbeamAFRequest()

- (instancetype) initSAFRequest:(SAF_REQUEST_METHOD) requestMethod request:(NSMutableURLRequest *) request urlString:(NSString *) urlString useSSLCertificates:(BOOL) useSSLCertificates headerParameters:(NSMutableDictionary *) headerParameters urlParameters:(NSMutableDictionary *) urlParameters bodyParameters:(NSMutableDictionary *) bodyParameters uploadFiles:(NSMutableDictionary *) uploadFiles downloadUrl:(NSString *) downloadUrl;

@end

@implementation SunbeamAFRequest

- (instancetype)initSAFRequest:(SAF_REQUEST_METHOD) requestMethod request:(NSMutableURLRequest *) request urlString:(NSString *) urlString useSSLCertificates:(BOOL) useSSLCertificates headerParameters:(NSMutableDictionary *) headerParameters urlParameters:(NSMutableDictionary *) urlParameters bodyParameters:(NSMutableDictionary *) bodyParameters uploadFiles:(NSMutableDictionary *) uploadFiles downloadUrl:(NSString *) downloadUrl
{
    if (self = [super init]) {
        self.requestMethod = requestMethod;
        self.request = request;
        self.urlString = urlString;
        self.useSSLCertificates = useSSLCertificates;
        self.headerParameters = headerParameters;
        self.urlParameters = urlParameters;
        self.bodyParameters = bodyParameters;
        self.uploadFiles = uploadFiles;
        self.downloadUrl = downloadUrl;
    }
    
    return self;
}

+ (SunbeamAFRequest *)getSAFRequest:(SAF_REQUEST_METHOD) requestMethod request:(NSMutableURLRequest *) request urlString:(NSString *) urlString useSSLCertificates:(BOOL) useSSLCertificates headerParameters:(NSMutableDictionary *) headerParameters urlParameters:(NSMutableDictionary *) urlParameters bodyParameters:(NSMutableDictionary *) bodyParameters uploadFiles:(NSMutableDictionary *) uploadFiles downloadUrl:(NSString *) downloadUrl
{
    SunbeamAFRequest* safRequest = [[SunbeamAFRequest alloc] initSAFRequest:requestMethod request:request urlString:urlString useSSLCertificates:useSSLCertificates headerParameters:headerParameters urlParameters:urlParameters bodyParameters:bodyParameters uploadFiles:uploadFiles downloadUrl:downloadUrl];
    
    return safRequest;
}

@end
