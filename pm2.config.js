module.exports = {
    apps: [
        {
            name: 'eureka',
            args: [
                "-jar",
                "build/libs/jalgoarena-eureka-2.0.0-SNAPSHOT.jar"
            ],
            script: 'java',
            env: {
                PORT: 5000
            }
        }
    ]
};
