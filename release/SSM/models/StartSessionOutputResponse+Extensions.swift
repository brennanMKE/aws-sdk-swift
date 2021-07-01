// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension StartSessionOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: StartSessionOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.sessionId = output.sessionId
            self.streamUrl = output.streamUrl
            self.tokenValue = output.tokenValue
        } else {
            self.sessionId = nil
            self.streamUrl = nil
            self.tokenValue = nil
        }
    }
}