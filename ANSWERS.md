# Answers

### 1) Coding qustion.
See the code.

### 2) (2 pts) Describe (in your opinion) the best computer language for developing the following programs. 
### Please state some sort of reason why you chose that language.

#### a) App for the latest Apple iPod, iPad and iPhone
[Objective-C](http://en.wikipedia.org/wiki/Objective-C) is the best computer programming language for developing on iOS devices.
This is because of the tools that Apple has created, such as Xcode and Intruments, as well as the consistent improvements year by year.
It is a proper subset of [C](http://en.wikipedia.org/wiki/C_(programming_language) and can also run with C++ code and librarys, 
such as with [Objective-C++](http://stackoverflow.com/a/3684159).

#### b) Ubuntu Linux Gnome desktop GUI application
Ubuntu supports a wide range of programming languages for development. 
You should choose [Whatever language it takes to get the job done the most efficiently.](http://askubuntu.com/a/321404)
The [Linux Kernel is mostly written in C](http://en.wikipedia.org/wiki/Linux_kernel), 
the [popular multi-platform GUI toolkit, GTK+, is written in C](http://www.gtk.org), and supports C, C++, and many others.

#### c) Android tablet Bluetooth keyboard device driver
Android development is done using [Java and Android's SDK](http://developer.android.com/sdk/index.html)
and there is a [Bluetooth API in Android's SDK](http://developer.android.com/guide/topics/connectivity/bluetooth.html).

#### d) Windows 8 desktop GUI application


### 3) (2 pts) Describe any two language defects that a hacker can use to create an exploit. 
> ### For example, SQL ”;”, binary HTML/XML injection, late-bound substitution, C string buffer overflow, binary fuzzing, .. etc. Code is NOT necessary and definitely NOT recommended.

#### SQL Injection

Quote placement in a line posted to a web server can let you run arbitrary commands. Original Line:
```sql
"statement := "SELECT * FROM data WHERE id = " + a_variable + ";" 
```
Posted line:
```sql
1;DROP TABLE users 
```
Makes two commands in one line like this:
```sql
SELECT * FROM data WHERE id = 1;DROP TABLE users; 
```
Bye Bye to table users. 
Best bet is to escape or use C-style on input parameters

#### C string buffer overflow

C/C++ has no bounds checking (unlike Java/C#):
- Data written to a buffer with no bounds checking over-writes next few addresses
- Can cause jump to user code on function return for stack
- Can over-write sections of main code 

```c
/* overflow.c - demonstrates a buffer overflow */
#include <stdio.h>
#include <string.h>
int main(int argc, char *argv[])
{
  char buffer[10];
  if (argc < 2)
  {
    fprintf(stderr, "USAGE: %s string\n", argv[0]);
    return 1;
  }
  strcpy(buffer, argv[1]);
  return 0;
}
```

#### Binary Fuzzing
Intentionally providing bad data to find bugs
- Can be random data insertion
- Identify NEW Intrusion vectors
- No chance if nobody has published it yet


