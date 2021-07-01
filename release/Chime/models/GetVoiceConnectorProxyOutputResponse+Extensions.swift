// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetVoiceConnectorProxyOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetVoiceConnectorProxyOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.proxy = output.proxy
        } else {
            self.proxy = nil
        }
    }
}