// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension UpdateFunctionOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if let eTagHeaderValue = httpResponse.headers.value(for: "ETtag") {
            self.eTag = eTagHeaderValue
        } else {
            self.eTag = nil
        }
        if case .data(let data) = httpResponse.body,
           let unwrappedData = data {
            if let responseDecoder = decoder {
                let output: FunctionSummary = try responseDecoder.decode(responseBody: unwrappedData)
                self.functionSummary = output
            } else {
                self.functionSummary = nil
            }
        } else {
            self.functionSummary = nil
        }
    }
}