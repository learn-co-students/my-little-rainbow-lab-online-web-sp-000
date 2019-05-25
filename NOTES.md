# *CSS* LAB ONE

**Review HTML Basics**
Hyper Text Markup Language, or HTML, is a way to structure a document with different parts.

Each section of content is marked by elements (using tags). Each element has its own special meaning that the browser uses to render the HTML document. Use this cheat sheet on HTML elements for guidance.

**Elements**
All begin with < and end with >, e.g., <div> (this last part is a tag).
Most have an opening tag such as <div> and a closing tag </div>.
The / indicates to the browser that that tag is a closing tag.
The element is everything between the tags and the tags themselves.
Some tags are self closing like the line break element <br>.
Elements can have IDs and classes to aid the browser in finding specific tags.
Must begin with a letter A-Z or a-z.
Can be followed by: letters (A-Za-z), digits (0-9), hyphens (-), and underscores.


*IDs* can only be used once per page.
E.g.: <div id="this-special-div"></div>.

*Classes* can be used as many times as you want.
E.g.: <div class="a-less-special-div"></div>.

Elements nested inside other elements are called children.

Children inherit attributes from their parents.

Don't nest everything.

Elements next to one another are siblings.

Siblings do not inherit from one another, but are important for selecting in CSS.

Here is an example of element relations:
```html

    <div>  <!-- the parent element -->
        <p></p>  <!-- the first sibling element/the first child-->
        <p></p>  <!-- the second sibling element/the second child -->
    </div>

```

**Review CSS Basics**
Cascading Style Sheets, or CSS, is a language created to style HTML documents by telling the browser how specific elements should look. CSS does this by selecting elements based on their tag, ids, classes, or all of the above. The reason for CSS is the separation of concerns. We want HTML to focus on the structure and meaning of our content. We let CSS worry about how to make that information appear clear and engaging.

*CSS selectors*
They select elements to assign them styles.
* (wildcard) selects every element.

An element, such as div, will select all elements of that type.

They select an id like #some-id

Classes are selected like this .some-class

To select all children elements of a parent
do something like this div p

To select multiple different elements
separate them by commas like this div, p, a

Here's an example of CSS styling:
```css

    * {
        color: red;  /* color in CSS refers to font color */
    }  /* all elements will have red font */

```

**Make a Rainbow**
In the directory you'll see three files:
1. index.html
2. main.css
3. README.md

Start the web server using the httpserver command.
* $ httpserver

Using another tab in your browser,
navigate to the "launched" web server and add /index.html.

#The URL should be something like:
10.0.0.1:41234/index.html

If everything is working correctly, you should see a white page.

#Making the Divs Visible
If you look at the file in your text editor or use the inspector,
you'll see that the basic HTML structure is present in index.html.

#Why can't we see anything?
divs are structural elements.

They're used to invisibly group other visible elements together.
But the stylesheet that would tell your divs to do something a little different hasn't been linked yet!

#Fix this by:
adding the stylesheet to the head:
```html

    <head>
        ...
        <link rel="stylesheet" type="text/css" href="main.css">
        ...
    </head>

```
<link href=""> is a self-closing tag that will create a relative path with the href attribute.

A *relative path* means the browser knows that the main.css file is in the same place as index.html.

The <head> is a hidden part of the page that tells the browser
* where to find any other files it needs to display the page correctly,
* the title for the tab,
* and any other possible important information.

If you refresh the index.html page in your browser you should see a perfectly
Goth solid-black rainbow.

You got the basic outline because in the main.css all the div elements were selected and given a border whose color is #000, "black."

#While you could set color: *red*;
you will have more colors available if you define colors without words.

Instead of red, green, or the exotic tomato,
professionals prefer a set of numbers with a base pair of 16 rather than a base pair of 10 like you use everyday.

These numbers are called "hexadecimals" and you can use them to make a wide range of colors.

Decimal Numbers:      0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16
Hexadecimal Numbers:  0, 1, 2, 3, 4, 5, 6, 7, 8, 9,  a,  b,  c,  d,  e,  f, 10

Hex colors work by creating Red, Green, Blue (RGB) values. Traditional RGB colors are on a scale of 0 to 255 for each of the three colors in the spectrum. Hex colors are considered true colors since they can represent ~16 million colors—but your eye can only see 10 million of those. So #000000 translates to black since 0 reds, 0 green, 0 blues represents the absence of all colors, and #ffffff makes white since 255 reds, 255 greens, and 255 blues is the maximum of each of the colors.

Hex colors can be shortened to just three numbers when each RGB value is the same for each digit. So #11dd99 can be written as #1d9.

Coloring the Rainbow
To get ROYGBIV onto our rainbow we'll need seven hex colors. Red: #f00; Orange: #ffa500; Yellow: #ff0; Green: #00bc3f; Blue: #06f; Indigo: #8a2be2; Violet: #d300c9

```css

    #red { /* this selects any elements with the red id */
        border-top-color: #f00;
    }

```
To make sure the rainbow isn't so monochromatic you now need to repeat the above steps with the final six colors, and when you do you should have a complete, colorful rainbow.
