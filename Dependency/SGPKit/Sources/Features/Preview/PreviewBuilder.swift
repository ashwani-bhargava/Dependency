
import Foundation
public class PreviewBuilder: Builder<PreviewDependency> {
    public override func build<BuildType: Scene>(sceneFactory: SceneFactory<BuildType>, navigator: Navigator<BuildType>) -> BuildType {
        let router = PreviewRouter(sceneFactory: sceneFactory, navigator: navigator, checkOutBuilder: dependency.checkOutBuilder)
        let presenter = PreviewPresenter(router: router)
        let scene = sceneFactory.preview(presenter)
        router.source = scene
        return scene
    }
}
