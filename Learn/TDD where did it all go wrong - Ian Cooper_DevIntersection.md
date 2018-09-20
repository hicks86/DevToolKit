# TDD, Where Did It All Go Wrong

Full lecture can be found here: [Devternity - YouTube](https://www.youtube.com/watch?v=EZ05e7EMOLM&feature=youtu.be)

## Books mentioned
- TDD by Example Kent Beck
- Refactoring to Patterns by Joshua Kerievsky 
- Refactoring by Martin Fowler

## What is the problem
Practising TDD can have following affects:
- slower to develop
- more test than code
- tests (heavily mocked) were breaking when we refactor code
- more work and maintenance


## Duct tape programmer (DTP) vs TDD programmer
- In the eyes of manager etc the Duct tape programmer (DTP) is winning and producing quicker results
- DTP has shipped code and its running
- TDD programmer is still writing tests

## TDD as intended by Kent Beck
**Avoid testing implementations details, test behaviours!!!!**
- Current situation: the trigger to write new test is "adding a new method to a class"
- HOWEVER what it should be: the trigger is  the implementation of a REQUIREMENT. E.g.:
  - "I want to credit money to this customers account"
  - "I want to upload the file to X"
- NOT Implementation Detail e.g:
  - MethodX will take in some number and return a result

**Test the Public API (NOT HTTP API :D)**

- Use a "Given_When_Then" naming model
- GivenMyAccountHas100_WhenIAdd100_ThenItWillHave200

SUT is not a class
SUT is the exports from a module - its facade.
Unit is the module. Class can be a module, many classes can also be a module


----WHAT YOU SHOULD DO-------
*Do not write test for implementation details - these change
*Write tests only againsts the stable contract of the API (a class could be the facade or command of the module)
*The key is the REFACTORING STEP


Sometimes you can write implementation details test to probe and help understand..........this is ok.........but
then delete them!!!!!

DAN NORTH - TDD -> BDD
Theres a behaviour in the system, I want to use code to proove that behaviour works (notice remove of the word TEST)

Unit of isolation is the TEST not the CLASS

Module is .NET Assembly

Not using DB for example is because you cannot isolate between tests. e.g. add a row on one test, other tests are affected.
In memory db is solution
Also db is slow - not quick feedback
- Aslong no shared issue or slow consraint then its fine to use a db/filesystem in a unit test

Use mocks sparingly

1. RED write a little test that doesn't work, and perhaps doesnt even compile first
2. GREEN make the test work quikcly commiting whatever sins necessary in the process (example C&P from SO....Duct Tape Programmer wins because we are scared to do this)
3. REFACTOR make good code. Eliminate ALL of the duplication created in merely getting the test to work

-------GREEN STEP--------
Quickly getting the bar to go GREEN dominates everything else!!
Shows how you WILL implement the requirements! Write bad code!!
Speed trumps design.

Cant do two things at same time: cannot understand solution to problem AND engineer code right
If you do youll either OVER ENGINNEER, OR GET ANALYSIS PARALYSIS

*****TDD P VS DTP = following ^ approach YOU are now travelling at same speed as DTP, except you have an automated test, DTP probably has to manually test it!!!

-----REFACTOR STEP-------
This step is when you produces clean code
When you remove duplication
When you sanitize the code smells
When you apply patterns

*****Do not write new unit tests in this step
This is the  process  of safe moves to change the design of the code, they do not change behaviour. This is covered by the test.
Code coverage tools help here
Write less tests.
If you are extracting code into a class DONT WRITE TESTS for that class (see first point). Classes should be internal etc.
Tests shouldnt be couple to these ^.
If theres a class that "feels" it should be public, another feature for the api/solution, this is where you introduce a Mock.


-------RULES
Dont test internal (InternalsVisible == BAD)
Dont make everything public in order to test it

Refactoring is not changing a public method on a public class.........that is a change. You do not know the side effects. e.g. Rename,
Refactoring is changing how you to choose to implement it

Ideal step to apply a pattern is the REFACTORING step!!!


-------MOCKS
- useful when resource is expensive or shared fixture problem
- dont use to confirm implementation details
- use to probe a solution
- IOC is overused
- If you writing IOC registration in Test code....something has gone wrong


-------Summary
- reason to test is a new behaviour, not a method on a class
- write dirty code to get green, then refactor
- no new tests for refactored internals/privates (classes, methods)
- Both develop and accept against tests written on a port
- Add integration tests for coverage of ports to adapters
- Add system tests for end-to-end confidence
- Dont mock internals privates or adapters



