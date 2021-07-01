// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeJobOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeJobOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.createDate = output.createDate
            self.createdBy = output.createdBy
            self.datasetName = output.datasetName
            self.encryptionKeyArn = output.encryptionKeyArn
            self.encryptionMode = output.encryptionMode
            self.jobSample = output.jobSample
            self.lastModifiedBy = output.lastModifiedBy
            self.lastModifiedDate = output.lastModifiedDate
            self.logSubscription = output.logSubscription
            self.maxCapacity = output.maxCapacity
            self.maxRetries = output.maxRetries
            self.name = output.name
            self.outputs = output.outputs
            self.projectName = output.projectName
            self.recipeReference = output.recipeReference
            self.resourceArn = output.resourceArn
            self.roleArn = output.roleArn
            self.tags = output.tags
            self.timeout = output.timeout
            self.type = output.type
        } else {
            self.createDate = nil
            self.createdBy = nil
            self.datasetName = nil
            self.encryptionKeyArn = nil
            self.encryptionMode = nil
            self.jobSample = nil
            self.lastModifiedBy = nil
            self.lastModifiedDate = nil
            self.logSubscription = nil
            self.maxCapacity = 0
            self.maxRetries = 0
            self.name = nil
            self.outputs = nil
            self.projectName = nil
            self.recipeReference = nil
            self.resourceArn = nil
            self.roleArn = nil
            self.tags = nil
            self.timeout = 0
            self.type = nil
        }
    }
}