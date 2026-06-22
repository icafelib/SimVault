allprojects {
    val newSubprojectBuildDir: Directory =
        rootProject.layout.buildDirectory
            .dir("../../build")
            .get()
            .dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}

val newBuildDir: Directory =
    rootProject.layout.buildDirectory
        .dir("../../build")
        .get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    project.evaluationDependsOn(":app")
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
