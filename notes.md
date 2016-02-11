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