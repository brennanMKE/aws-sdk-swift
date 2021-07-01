// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetDeviceProfileOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetDeviceProfileOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.arn = output.arn
            self.id = output.id
            self.loRaWAN = output.loRaWAN
            self.name = output.name
        } else {
            self.arn = nil
            self.id = nil
            self.loRaWAN = nil
            self.name = nil
        }
    }
}