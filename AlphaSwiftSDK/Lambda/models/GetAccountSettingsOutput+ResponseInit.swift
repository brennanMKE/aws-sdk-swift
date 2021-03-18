// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension GetAccountSettingsOutput: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {

        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetAccountSettingsOutputBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.accountLimit = output.accountLimit
            self.accountUsage = output.accountUsage
        } else {
            self.accountLimit = nil
            self.accountUsage = nil
        }
    }
}
