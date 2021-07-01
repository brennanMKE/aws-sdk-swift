// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SubmitContainerStateChangeOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: SubmitContainerStateChangeOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.acknowledgment = output.acknowledgment
        } else {
            self.acknowledgment = nil
        }
    }
}