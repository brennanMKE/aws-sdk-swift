// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CreatePlayerSessionOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: CreatePlayerSessionOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.playerSession = output.playerSession
        } else {
            self.playerSession = nil
        }
    }
}