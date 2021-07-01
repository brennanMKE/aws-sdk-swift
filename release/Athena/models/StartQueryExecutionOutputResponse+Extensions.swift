// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension StartQueryExecutionOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: StartQueryExecutionOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.queryExecutionId = output.queryExecutionId
        } else {
            self.queryExecutionId = nil
        }
    }
}