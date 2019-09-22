# PennAppsiOSChallenge

Each function of the app was designed with specific needs in mind.

# File Layout

I created this app using 5 different Swift files. ViewController.swift contains the main class HomeViewController that controls the home page of the app. ViewController + UI.swift contains an extension of HomeViewController that contains long functions like loading images and text from the JSON into the UI elements. DiningStructures.swift contains the Decodable data structures used to contain the JSON data. JSONDecode contains a function to read in the JSON input and read it into a DiningDocument structure for use elsewhere in the program. WebViewController.swift contains functions that allow for interaction with the web view. This structure allows for the different features of the app to be developed in different files so that problems can be more easily isolated and the code is easier to work with and understand.

# Storyboard Design

I decided to use a storyboard to design my app because that is what I am most familiar with. In my storyboard, I used a TableViewController as the main screen on my app because I liked how it allowed for automatic scrolling and layed out the different dining options nicely and similarly to how they are layed out in the Zeplin design. Each cell in the TableViewController has either a section label for the "Dining Halls" and "Retail Dining" sections or a specific dining option. Each dining option has its own permanant cell because the dining options offered on campus don't often change. Most of the design elements simply followed the Zeplin format, as that was suggested in the assignment.
