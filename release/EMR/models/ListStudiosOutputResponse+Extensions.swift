// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListStudiosOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListStudiosOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.marker = output.marker
            self.studios = output.studios
        } else {
            self.marker = nil
            self.studios = nil
        }
    }
}