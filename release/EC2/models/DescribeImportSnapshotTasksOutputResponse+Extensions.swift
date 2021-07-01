// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeImportSnapshotTasksOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeImportSnapshotTasksOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.importSnapshotTasks = output.importSnapshotTasks
            self.nextToken = output.nextToken
        } else {
            self.importSnapshotTasks = nil
            self.nextToken = nil
        }
    }
}