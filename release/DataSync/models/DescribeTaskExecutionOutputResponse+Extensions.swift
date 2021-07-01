// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeTaskExecutionOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeTaskExecutionOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.bytesTransferred = output.bytesTransferred
            self.bytesWritten = output.bytesWritten
            self.estimatedBytesToTransfer = output.estimatedBytesToTransfer
            self.estimatedFilesToTransfer = output.estimatedFilesToTransfer
            self.excludes = output.excludes
            self.filesTransferred = output.filesTransferred
            self.includes = output.includes
            self.options = output.options
            self.result = output.result
            self.startTime = output.startTime
            self.status = output.status
            self.taskExecutionArn = output.taskExecutionArn
        } else {
            self.bytesTransferred = 0
            self.bytesWritten = 0
            self.estimatedBytesToTransfer = 0
            self.estimatedFilesToTransfer = 0
            self.excludes = nil
            self.filesTransferred = 0
            self.includes = nil
            self.options = nil
            self.result = nil
            self.startTime = nil
            self.status = nil
            self.taskExecutionArn = nil
        }
    }
}