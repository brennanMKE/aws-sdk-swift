// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeRobotOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeRobotOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.architecture = output.architecture
            self.arn = output.arn
            self.createdAt = output.createdAt
            self.fleetArn = output.fleetArn
            self.greengrassGroupId = output.greengrassGroupId
            self.lastDeploymentJob = output.lastDeploymentJob
            self.lastDeploymentTime = output.lastDeploymentTime
            self.name = output.name
            self.status = output.status
            self.tags = output.tags
        } else {
            self.architecture = nil
            self.arn = nil
            self.createdAt = nil
            self.fleetArn = nil
            self.greengrassGroupId = nil
            self.lastDeploymentJob = nil
            self.lastDeploymentTime = nil
            self.name = nil
            self.status = nil
            self.tags = nil
        }
    }
}