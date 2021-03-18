// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension GetFunctionConcurrencyOutput: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {

        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetFunctionConcurrencyOutputBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.reservedConcurrentExecutions = output.reservedConcurrentExecutions
        } else {
            self.reservedConcurrentExecutions = nil
        }
    }
}
