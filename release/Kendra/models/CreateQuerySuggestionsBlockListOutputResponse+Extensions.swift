// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CreateQuerySuggestionsBlockListOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: CreateQuerySuggestionsBlockListOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.id = output.id
        } else {
            self.id = nil
        }
    }
}