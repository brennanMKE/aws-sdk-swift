// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ProvisionPermissionSetOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ProvisionPermissionSetOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.permissionSetProvisioningStatus = output.permissionSetProvisioningStatus
        } else {
            self.permissionSetProvisioningStatus = nil
        }
    }
}