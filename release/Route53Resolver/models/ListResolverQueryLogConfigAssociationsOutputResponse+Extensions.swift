// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListResolverQueryLogConfigAssociationsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListResolverQueryLogConfigAssociationsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.nextToken = output.nextToken
            self.resolverQueryLogConfigAssociations = output.resolverQueryLogConfigAssociations
            self.totalCount = output.totalCount
            self.totalFilteredCount = output.totalFilteredCount
        } else {
            self.nextToken = nil
            self.resolverQueryLogConfigAssociations = nil
            self.totalCount = 0
            self.totalFilteredCount = 0
        }
    }
}