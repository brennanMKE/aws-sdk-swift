// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DeleteBotLocaleOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DeleteBotLocaleOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.botId = output.botId
            self.botLocaleStatus = output.botLocaleStatus
            self.botVersion = output.botVersion
            self.localeId = output.localeId
        } else {
            self.botId = nil
            self.botLocaleStatus = nil
            self.botVersion = nil
            self.localeId = nil
        }
    }
}