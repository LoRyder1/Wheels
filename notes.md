**Object-Oriented Design**
Most visible elements of design are principles and patterns. Design relies on ability to translate theory into practice. Practice lives in real world and faces competing choices, and choosing the lesser evil. 

**Designing Classes with a Single Responsiblity**

Easy to Change
- changes have no unexpected side effects
- small changes in requirements require correspondingly small changes in code
- existing code is easy to reuse
- the easiest way to make a change is to add code that in itself is easy to change

Code Should Have These qualities: 
- Transparent
- Reasonable
- Usable
- Exemplary

TRUE - code that not only meets today's needs but can also be changed to meet the needs of the future

DRY - "Don't Repeat Yourself"
- create classes that have a single responsibility, every tiny bit of behaviour lives in one and only one place.

- always wrap instance variables in accessor methods. attr_reader is an easy way to create the encapsulating methods

Refactoring to have SR(single responsiblity)
- expose previously hidden qualities
- avoid the need for comments
- encourage reuse
- are easy to move to another class


THe path to changeable and maintable object-oriented software begins with classes that have a single responsibility. Classes that do one thing isolate that thing from the rest of your applicaiton. This isolation allows changes without consequence and reuse without duplication. 

**Managing Dependencies

Building well designed objects have a single responsibility, their very nature requires that they collaborate to accomplish complex tasks. This collaboration is powerful and perilous. To collaborate, an object must know something about others. *Knowing* creates a dependency

- message chaining is a dependency i.e. knowing the name of a message you plan to send ot someone other than self. 
- test on code can also be a dependency. Natural tendency of "new to testing" programmers is to write tests that are too tightly coupled to code. 
  - This **tight coupling** leads to frustration; the tests break every time the code is refactored, even when fundamental behaviour doesn't change. 

Write Looslely Coupled Code
- Moving the creation of a new instance of another class outside of the current class decouples the two classes. Decoupling can be achieved by rearranging existing code.
- This technique is known as **dependency injection**. DI is software design pattern that implements inversion of control for resolving dependencies. A **dependency** is an object that can be used as a service. An injection is the passing of a dependency to a dependent object (a client) that would use it. The service is part of the client's state. Passing the service to the client, rather than allowing a client to build or find the service, is the fundamental requirement of the pattern. 
- inversion of control - increase modularity and make it extensible.
- dependency inversion principle 
  - high level modules should not depend on low-level modules. Both should depend on abstractions.
  - Abstractions should not depend on details. Details should depend on abstractions. 
- through DI a class can be smarter because it knows less. 

Isolate instance creation, Isolate vulnerable externable messages, 

Remove Arguemnt-Order Dependencies

Remove defaults form initialize and isolate them inside of a separate wrapping method. 

Choosing Dependency Direction

- depend on things that change less often then you do. 
  - some classes are more likely than others to have changes in requirements.
  - concrete classes are more likely to change than abstract classes.
  - changing a class that has many dependents will result in widespread consequences. 


*What's the difference between statically typed language and dynamically typed languages*
- a language is statically typed if the type of a variable is known at compile time. In practice this means the programmer must specify what type each variable is: Java, C, C++. 
  - advantage - all kinds of checking can be done by compiler, and so bugs are caught early. 
- a language is dynamically typed if the type is interpreted at runtime. This means you can write a little quicker because you don't have to specify type everytime. : Perl, Ruby, Python. 

Scripting languages are often referred to as very high-level programming languages, as they operate at a high level of abstraction, or as control languages. - usually dynamic

An interpreted language is a programming language for which most of its implementations execute instructions directly, without previously compiling a program into machine-language instructions. 

A compiled language is a programming language whose implementations are typically compilers (translators that generate machine code from source code), and not interpreters (step-by-step executors of source code, where no pre-runtime translation takes place).
  - low-level programming languages are typically compiled - there is more of a one-to-one correspondence between programmed code adn the hardware operations performed by machine code 
  Ex: Java, C, C++, C#



** Dependency Management 2 **

- dependent on argument order and defaults 
- Gear class is less likely to change = less dependencies
- Wheel depends on Gear class
- single responsibilities principle
- have to be able to calculate gear_inches of a different object
- try to reduce the number of dependencies, while exposing big dependencies publicly
- reveal dependencies instead of conceal them.

TESTING
- helper methods help another method complete its task
 
- the main benefit of using **mock** objects is increased testability throughout a system
- a secondary benefit is an improved ability to do continuous design. 

**Unit tests should be atomic** - TDD style unit tests should be smal tests that cover a specific, **granular** area of the code. A lot of the times the code interacts with other classes, but you only want to worry about the proper functioning of the class under test. You have the ability to perserve the atomicity of the unit test by replacing the external resources and coding dependencies by using a mock object to establish an **expected behavior.**
  - As an engineer hardest task is to model boundary conditions. 
    - a boundary being a point in a system with known behavior. By doing this you can ignore anything outside the boundary.
    - establishing boundary conditions minimizes the number of variables within an engineering calculation.
  - primary claims for **TDD efficiency** is the reduced time spent degugging code. 
  - This is only true if and only if you write fine-grained tests. 
  - Excessive mocking can result in too tightly coupled code making it really hard to refactor code without breaking tests. 

- Order Independent and Isolated
- Intention Revealing
- Easy to Setup
- Runs Fast
