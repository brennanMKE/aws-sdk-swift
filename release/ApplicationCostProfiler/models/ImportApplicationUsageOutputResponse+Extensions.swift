// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ImportApplicationUsageOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ImportApplicationUsageOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.importId = output.importId
        } else {
            self.importId = nil
        }
    }
}