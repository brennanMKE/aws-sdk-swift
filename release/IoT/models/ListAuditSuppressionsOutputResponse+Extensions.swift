// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListAuditSuppressionsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListAuditSuppressionsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.nextToken = output.nextToken
            self.suppressions = output.suppressions
        } else {
            self.nextToken = nil
            self.suppressions = nil
        }
    }
}