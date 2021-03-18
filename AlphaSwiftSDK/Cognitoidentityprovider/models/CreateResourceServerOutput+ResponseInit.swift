// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension CreateResourceServerOutput: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {

        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: CreateResourceServerOutputBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.resourceServer = output.resourceServer
        } else {
            self.resourceServer = nil
        }
    }
}