// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetDeviceMethodsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetDeviceMethodsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.deviceMethods = output.deviceMethods
        } else {
            self.deviceMethods = nil
        }
    }
}