# Dependency Injection

## Fast Facts. Dependency Injection...
- Allows us to decouple our code from it's dependencies
- Makes our code testable as we can pass in a mock of an object as needed
- Makes our code reusable as we don't have to change the dependencies when reusing the class

### Decoupling 
- When a dependency is created in the class, the class is considered to be tightly coupled with the dependency because the class cannot function without the dependency.
- We are trying to keep our code reusable and modular - we want to be able to change one without affecting or having to change the other.

### Testability
- It is virtually impossible to test a class independently when that class requires some dependency that may or may not work in a unit test (eg a network manager).
- If we pull out the creation of that dependency and pass it in (eg in an initializer) we allow for unit tests to mock the dependency and test the class independently.
- When mocking a dependency it may require creating a new object solely created for the purpose of testing. The object just has to adhere to whatever protocol is required and it can implement the functions as needed and return whatever results the test requires. 

## Dependency Injection Types. Injecting dependencies...
- in the Initializer
- via Properties
- via Methods

### Initiazlier Injection
- The dependencies are passed at object initialization.

### Property Injection 
- The dependencies are set on the object after initialization.

### Method Injection
- The dependencies are set via a method call on the object whenever we want/need to

## References

https://softwareengineering.stackexchange.com/questions/244476/what-is-decoupling-and-what-development-areas-can-it-apply-to

https://medium.com/swlh/dependency-injection-in-swift-964e1caaa8c1

https://learnappmaking.com/dependency-injection-swift/
