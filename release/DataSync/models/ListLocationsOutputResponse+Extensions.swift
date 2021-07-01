// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListLocationsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListLocationsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.locations = output.locations
            self.nextToken = output.nextToken
        } else {
            self.locations = nil
            self.nextToken = nil
        }
    }
}