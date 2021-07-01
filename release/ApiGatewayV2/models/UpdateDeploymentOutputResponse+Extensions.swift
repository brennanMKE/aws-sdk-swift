// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension UpdateDeploymentOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: UpdateDeploymentOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.autoDeployed = output.autoDeployed
            self.createdDate = output.createdDate
            self.deploymentId = output.deploymentId
            self.deploymentStatus = output.deploymentStatus
            self.deploymentStatusMessage = output.deploymentStatusMessage
            self.description = output.description
        } else {
            self.autoDeployed = false
            self.createdDate = nil
            self.deploymentId = nil
            self.deploymentStatus = nil
            self.deploymentStatusMessage = nil
            self.description = nil
        }
    }
}