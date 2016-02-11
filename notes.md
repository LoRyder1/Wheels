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