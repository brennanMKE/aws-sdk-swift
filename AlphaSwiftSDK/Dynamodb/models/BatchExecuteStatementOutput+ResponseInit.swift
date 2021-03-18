// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension BatchExecuteStatementOutput: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {

        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: BatchExecuteStatementOutputBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.responses = output.responses
        } else {
            self.responses = nil
        }
    }
}
