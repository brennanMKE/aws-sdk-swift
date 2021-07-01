// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension IsVpcPeeredOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: IsVpcPeeredOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.isPeered = output.isPeered
        } else {
            self.isPeered = nil
        }
    }
}