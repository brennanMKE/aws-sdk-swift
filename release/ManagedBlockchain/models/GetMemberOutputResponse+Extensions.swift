// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetMemberOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetMemberOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.member = output.member
        } else {
            self.member = nil
        }
    }
}