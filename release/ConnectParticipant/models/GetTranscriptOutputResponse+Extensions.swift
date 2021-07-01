// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetTranscriptOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetTranscriptOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.initialContactId = output.initialContactId
            self.nextToken = output.nextToken
            self.transcript = output.transcript
        } else {
            self.initialContactId = nil
            self.nextToken = nil
            self.transcript = nil
        }
    }
}