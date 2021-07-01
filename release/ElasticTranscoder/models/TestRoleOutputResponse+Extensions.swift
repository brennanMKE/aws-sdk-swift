// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension TestRoleOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: TestRoleOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.messages = output.messages
            self.success = output.success
        } else {
            self.messages = nil
            self.success = nil
        }
    }
}