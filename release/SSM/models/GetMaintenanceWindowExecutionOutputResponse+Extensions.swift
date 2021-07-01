// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetMaintenanceWindowExecutionOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetMaintenanceWindowExecutionOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.endTime = output.endTime
            self.startTime = output.startTime
            self.status = output.status
            self.statusDetails = output.statusDetails
            self.taskIds = output.taskIds
            self.windowExecutionId = output.windowExecutionId
        } else {
            self.endTime = nil
            self.startTime = nil
            self.status = nil
            self.statusDetails = nil
            self.taskIds = nil
            self.windowExecutionId = nil
        }
    }
}