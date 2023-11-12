# useless-rant
**This repository contains both my personal blog and the script used to build it, togheter with the components of the site.**

**The script takes a simple file written in my own markup language and transcribes it into html.Then it organises it within a system of entries ordered by date and can be easily accesed in order from the "INDEX" page of the site.It also puts everything in an RSS feed, so the contents of the blog can be easily accesed without a browser.**

# DUMBDOWN

**Dumbdown is the bootleg markup language that is interpreted into html , used to write the article pages.**

### ELEMENTS :
- >The first line is always interpreted as the title of the article.It will be put in the **INDEX** togheter with the date to form the entry for the article, the entry being the link to the page of the article itself.
- >The second line is always interpreted as the date of the article.
- >Every new line of the original file without any prefix will be turned into a paragraph.
- >To have lines of code within a table,they must start with the prefix ```code``` on the line above and must end with ```!code```, otherwise normal paragraphs will be put in the code formatting.Unless you begin a sentence with the word "code" in lowercase,you shouldn't have any problem with it.
- >Images can be easily inserted via links.To do this you must put ```!image``` at the begining of the line and follow it with a link to the image.The space between the link and the prefix must not be more than a space.
- >Any text placed within ```$COLOR``` and ```COLOR$``` will be colored red.
- >After the page has been rendered, at the bottom there will be the time at which the page was generated.The time written in the footer is independent of the date of the article.It is based on the computer's clock.
- >Only the paragraphs (the clean lines in the Dumbdown file) will be put in the RSS feed of the article.Images and code will be ommited. The colored text will appear as normal.

### Examples of Dumbdown 
- How to create a code snipped in Dumbdown:
```
code
#include<stdio.h>
void main(){
printf("%s","This is code!");
return 0;
}
!code
```
- How to insert an image in Dumbdown:
```
!image (link to image)
```
- How to color a part of a paragraph in Dumbdown:

```
This part is not colored $COLOR but this one is COLOR$ but not this one.

```



