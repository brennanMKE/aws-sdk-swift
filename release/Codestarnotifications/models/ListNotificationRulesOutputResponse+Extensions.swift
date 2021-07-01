// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListNotificationRulesOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListNotificationRulesOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.nextToken = output.nextToken
            self.notificationRules = output.notificationRules
        } else {
            self.nextToken = nil
            self.notificationRules = nil
        }
    }
}