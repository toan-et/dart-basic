﻿# dart-basic

# Lesson 6 - Avengers: Endgame
* Structure of L6 lesson, L6.dart and result screen : http://prntscr.com/nk6pv7
* Create files in L6 folder and do following requirements
* Deadline: Tuesday 7th May 2019

**Main Requirements** : 
 ```dart
Thanos tn = Thanos(
    name:'Thanos / Củ khoai tím',
    sexual:'Male',
    gadget:Gadget('Găng tay vô cực 6 đá')
);
```
Console screen :
 ```dart
// Name: Thanos / Củ khoai tím
// Sexual: Male
// Bảo bối: Găng tay vô cực 6 đá
```
 ```dart
Thanos tnChild = Thanos(
    name:'Thanos Con',
    sexual:'Bê đê',
);
```
Console screen :
 ```dart
// Name: Thanos Con
// Sexual: Bê đê
// Bảo bối: Chưa đủ đẳng cấp để sử dụng bảo bối
 ``` 
**Detail Requirements** : 
-  Define **Avenger abtract class** [5 marks]
    + Have three private properties : 
        ```dart 
        String name 
        String sexual 
        Gadget gadget
        ```
    + Have contructor method with three named optional parameters, each parameter has default value [4 marks]
    + doSkill() is a abtract method (extended class will override it) [0.5 mark]
    + showInfo() [0.5 mark]
-  Define **Gadget class** [1 mark]
    + Have a private property "name"
    + Have a contructor method with one position optional parameter
    + Have a public method getName()
-  Define one in list figure: https://en.wikipedia.org/wiki/List_of_Marvel_Cinematic_Universe_films (*each member have to define separate figure*)
    + Class definition, force extend from Avenger *abtract* class [0.5 mark]
    + Contructor method, force call the supper contructor method of Avenger class [2 marks]
    + doSkill method, force override from Avenger class [0.5 mark]
    + Print a funny/pretty unicode text related the avenger in doSkill() [1 mark]
      - Example Thanos's flick Off =)) @@
```dart
                        ▗▄▗▖▄▄                              
                       ▐▚ ▘▝▝▄▚                             
                       ▌▙    ▞▗                             
                       ▚▚▄▗▗▄▀▗                             
                       ▌      ▗                             
                       ▞      ▝                             
                       ▚ ▘▘▚  ▝                             
                       ▌      ▐                             
                       ▞      ▗                             
                       ▚      ▝                             
                      ▗▌      ▐▘▘▗                          
                    ▗▞▘▌      ▐   ▝▚▄▗▗                     
                ▗▖▀██▀▀▛ ▐▞▝ ▚▐▄▄▄▄▄▟▀▀▀▚                   
                ▞ ▝    ▌   ▀▘▘▐    ▄▖▙ ▄▚                   
               ▗▌      ▙▝     ▐  ▘   ▐▘▐▄█▄                 
               ▟▖      ▌      ▐      ▐   ▝█▖                
              ▟▜▖      ▌      ▐      ▐▘    ▚                
             ▗▌▐▖      ▛      ▐      ▟▘    ▐▖               
             ▟ ▐▖     ▐▌      ▐▖     █▖     ▌               
             ▛ ▐▘     ▝▘      ▝▛     ▜      ▚               
             ▜ ▐▌                           ▟               
             ▐▖█▌                           ▐               
              ▌▘▜                           ▐               
              ▀▖                  ▗     ▗  ▞▘               
               ▝ ▌▖▐   ▄▄▄ ▚   ▄▄▗ ▖▄▄▄▄▙▝▘                 
                  ▝ ▘▘▘  ▝▚▘▌▘▀  ▀▀         

```

# Lesson 5
* Result on screen as : http://prntscr.com/ng2tt4
* Use code in L5 folder and follow requirement

**Requirements** : 
-  Define **Show()** has one optional positional parameter not optional named parameter [1 mark]
-  Define **Move()**, force re-use setXY() [1 mark]
-  Calculate distance between two points [3 marks]
-  Define **Plus()** with usage as [1 mark]
 ```dart
 Point p3 = Point.plus(p1, p2);
 ```
 -  Define **(+)** operator with usage as [3 marks]
 ```dart
 Point p3 = p1 + p2;
 ``` 
- Pretty code [1 marks]
  - Use arrow function
  - ...
