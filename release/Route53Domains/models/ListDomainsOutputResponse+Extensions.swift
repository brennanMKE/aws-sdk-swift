// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListDomainsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListDomainsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.domains = output.domains
            self.nextPageMarker = output.nextPageMarker
        } else {
            self.domains = nil
            self.nextPageMarker = nil
        }
    }
}