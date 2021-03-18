// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension GetProvisionedConcurrencyConfigOutput: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {

        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetProvisionedConcurrencyConfigOutputBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.allocatedProvisionedConcurrentExecutions = output.allocatedProvisionedConcurrentExecutions
            self.availableProvisionedConcurrentExecutions = output.availableProvisionedConcurrentExecutions
            self.lastModified = output.lastModified
            self.requestedProvisionedConcurrentExecutions = output.requestedProvisionedConcurrentExecutions
            self.status = output.status
            self.statusReason = output.statusReason
        } else {
            self.allocatedProvisionedConcurrentExecutions = nil
            self.availableProvisionedConcurrentExecutions = nil
            self.lastModified = nil
            self.requestedProvisionedConcurrentExecutions = nil
            self.status = nil
            self.statusReason = nil
        }
    }
}
