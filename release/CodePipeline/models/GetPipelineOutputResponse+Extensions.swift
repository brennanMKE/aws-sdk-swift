// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetPipelineOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetPipelineOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.metadata = output.metadata
            self.pipeline = output.pipeline
        } else {
            self.metadata = nil
            self.pipeline = nil
        }
    }
}