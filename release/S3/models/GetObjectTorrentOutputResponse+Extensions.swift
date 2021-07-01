// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetObjectTorrentOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if let requestChargedHeaderValue = httpResponse.headers.value(for: "x-amz-request-charged") {
            self.requestCharged = RequestCharged(rawValue: requestChargedHeaderValue)
        } else {
            self.requestCharged = nil
        }
        if case .data(let data) = httpResponse.body,
           let unwrappedData = data {
            self.body = unwrappedData
        } else {
            self.body = nil
        }
    }
}