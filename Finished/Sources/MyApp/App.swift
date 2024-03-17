import ArgumentParser
import Hummingbird
import OpenAPIHummingbird
import OpenAPIRuntime

@main struct HummingbirdArguments: AsyncParsableCommand {
    @Option(name: .shortAndLong)
    var hostname: String = "127.0.0.1"

    @Option(name: .shortAndLong)
    var port: Int = 8080

    func run() async throws {
        // 1
        let router = Router()
        router.middlewares.add(LogRequestsMiddleware(.info))

        // 2
        let api = HelloAPI()

        // 3
        try api.registerHandlers(on: router)
        
        // 4
        let app = Application(
            router: router,
            configuration: .init(address: .hostname(hostname, port: port))
        )

        // 5
        try await app.runService()
    }
}
