// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListResourceTagsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListResourceTagsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.nextMarker = output.nextMarker
            self.tags = output.tags
            self.truncated = output.truncated
        } else {
            self.nextMarker = nil
            self.tags = nil
            self.truncated = false
        }
    }
}