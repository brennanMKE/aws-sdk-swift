// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListAccountSettingsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListAccountSettingsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.nextToken = output.nextToken
            self.settings = output.settings
        } else {
            self.nextToken = nil
            self.settings = nil
        }
    }
}