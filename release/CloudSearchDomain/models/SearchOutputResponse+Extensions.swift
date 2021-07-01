// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SearchOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: SearchOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.facets = output.facets
            self.hits = output.hits
            self.stats = output.stats
            self.status = output.status
        } else {
            self.facets = nil
            self.hits = nil
            self.stats = nil
            self.status = nil
        }
    }
}