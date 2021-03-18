// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension ListProvisionedConcurrencyConfigsOutput: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {

        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListProvisionedConcurrencyConfigsOutputBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.nextMarker = output.nextMarker
            self.provisionedConcurrencyConfigs = output.provisionedConcurrencyConfigs
        } else {
            self.nextMarker = nil
            self.provisionedConcurrencyConfigs = nil
        }
    }
}
