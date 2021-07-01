// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetBackendOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetBackendOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.amplifyMetaConfig = output.amplifyMetaConfig
            self.appId = output.appId
            self.appName = output.appName
            self.backendEnvironmentList = output.backendEnvironmentList
            self.backendEnvironmentName = output.backendEnvironmentName
            self.error = output.error
        } else {
            self.amplifyMetaConfig = nil
            self.appId = nil
            self.appName = nil
            self.backendEnvironmentList = nil
            self.backendEnvironmentName = nil
            self.error = nil
        }
    }
}