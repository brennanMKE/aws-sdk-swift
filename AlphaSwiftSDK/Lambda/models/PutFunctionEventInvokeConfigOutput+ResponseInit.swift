// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension PutFunctionEventInvokeConfigOutput: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {

        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: PutFunctionEventInvokeConfigOutputBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.destinationConfig = output.destinationConfig
            self.functionArn = output.functionArn
            self.lastModified = output.lastModified
            self.maximumEventAgeInSeconds = output.maximumEventAgeInSeconds
            self.maximumRetryAttempts = output.maximumRetryAttempts
        } else {
            self.destinationConfig = nil
            self.functionArn = nil
            self.lastModified = nil
            self.maximumEventAgeInSeconds = nil
            self.maximumRetryAttempts = nil
        }
    }
}
