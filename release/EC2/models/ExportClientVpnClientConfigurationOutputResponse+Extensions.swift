// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ExportClientVpnClientConfigurationOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ExportClientVpnClientConfigurationOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.clientConfiguration = output.clientConfiguration
        } else {
            self.clientConfiguration = nil
        }
    }
}