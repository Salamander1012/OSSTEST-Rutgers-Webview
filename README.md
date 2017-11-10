
# Interview Test

This project is meant to test your abilities as a potential iOS developer at Rutgers OSS.

A simple app has been made that includes a ViewController (which can be renamed or
removed), WebViewController, DetailViewController, a MockAPI struct that has a static
instance of itself (singleton) to fetch data from an imaginary API, and an initialized storyboard for your use.
**You can freely modify any of the files so long as
the basic functionality of the "api request" remains intact.**

Clone this repo and change the developer team to yourself so that you can build the project.

`git clone git@github.com:colinfwalsh/interviewTest.git`

Once you confirm everything is working, read through the specifications and submit your project
before the set deadline (should be in your email).  Please email me at colinfwalsh@gmail.com
if you have any questions.

Specificiations:
- Implement a tableView to display all the titles in the given object array.  There should be
    a cell for each item.
    
- When you tap a tableView cell, if the object in the array at the specified index has a URL,
    a webview should pop up that takes you to the URL listed (If the url doesn't work,
    that's fine so long as the view is a webview).  The objects made this easy for you since they
    have a "view" tag that specifies if the view is www or something else.

- If "view" is anything else, go to a view that displays the handle, text in the icon field, and
    anything else you wish.

- Make sure you properly implement a navigationController

- Add a title to the navigationController

Limitations:
- You may use any 3rd party libraries you see fit, but make sure they have relevance to
        the task at hand.
        
- You may google how to implement UIKit instances, or how to do specific things, but make
        sure the code you write is yours and yours alone.  We will check to see if you copy and
        pasted from other sources.
        
- DO NOT work with others on this project.  You need to figure out this problem yourself.
    

[Example of the app functionality](https://www.dropbox.com/s/cjj6wtx4eahhs6i/interViewTest.gif)

Note: This is the bare minimum - make your app more interesting than this.
