// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetConnectionStatusOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetConnectionStatusOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.status = output.status
            self.target = output.target
        } else {
            self.status = nil
            self.target = nil
        }
    }
}