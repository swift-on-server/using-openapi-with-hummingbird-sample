import MyOpenAPI

struct HelloAPI: APIProtocol {
    func greet(_ input: Operations.greet.Input) async throws -> Operations.greet.Output {
        // 1.
        return .ok(.init(body:
            // 2.
            .json(.init(
                // 3
                message: "Hello, world!"
            ))
        ))
    }
}