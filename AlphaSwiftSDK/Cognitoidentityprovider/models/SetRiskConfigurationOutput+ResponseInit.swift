// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension SetRiskConfigurationOutput: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {

        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: SetRiskConfigurationOutputBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.riskConfiguration = output.riskConfiguration
        } else {
            self.riskConfiguration = nil
        }
    }
}
