// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension UpdateMethodOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: UpdateMethodOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.apiKeyRequired = output.apiKeyRequired
            self.authorizationScopes = output.authorizationScopes
            self.authorizationType = output.authorizationType
            self.authorizerId = output.authorizerId
            self.httpMethod = output.httpMethod
            self.methodIntegration = output.methodIntegration
            self.methodResponses = output.methodResponses
            self.operationName = output.operationName
            self.requestModels = output.requestModels
            self.requestParameters = output.requestParameters
            self.requestValidatorId = output.requestValidatorId
        } else {
            self.apiKeyRequired = nil
            self.authorizationScopes = nil
            self.authorizationType = nil
            self.authorizerId = nil
            self.httpMethod = nil
            self.methodIntegration = nil
            self.methodResponses = nil
            self.operationName = nil
            self.requestModels = nil
            self.requestParameters = nil
            self.requestValidatorId = nil
        }
    }
}