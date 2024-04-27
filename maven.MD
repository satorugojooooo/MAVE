### Maven
Maven is one of most popular build and project management tool for Java and Java Based Languages
The Other build tools for java include Ant, Gradle.
Any Language has lot of built in functionalities which are provided by language or community, These are referred as dependencies.

We need to perform dependency management.
Maven used the approach of Convention over configuration.
Maven reads a file which is pom.xml where the following are defined
 * project metadata
 * dependencies

## ![maven 5 minutes] (https://maven.apache.org/guides/getting-started/maven-in-five-minutes.html)

# Maven projects have goals
```
compile => Compile java sources and generate class files in target folder

test => Execute tests and generate test report

package => Create a packaging format (jar, war) after generating classes and test execution

install => The package created in the target folder will be copied into .m2 folder for other projects in your system to reuse the code

deploy => The package created will be copied into configured remote repository for other users to reuse.

clean => remove target folder.
```
With this we can configure
  * archive the artifact
  * Generate Test Result Report.

# Dependencies:
```
	Java (Maven) => https://mvnrepository.com/
	.net (Nuget)
	Python (pip)
	javascript (npm)
```
# Package Repository:
```
	local
	central
```
# Unit Tests:
```
        Automated Tests using Test Automation Frameworks
	Selenium
	Postman
	RPA
	Jmeter
```
To change maven’s behavior i.e. where to download dependencies from and where to deploy dependencies to, http proxy etc create a file called as settings.xml in .m2 folder https://maven.apache.org/settings.html

