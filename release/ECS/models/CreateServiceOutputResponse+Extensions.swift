// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CreateServiceOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: CreateServiceOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.service = output.service
        } else {
            self.service = nil
        }
    }
}