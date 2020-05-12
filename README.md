# _Name of Application_

#### | Feb 5th. 2020_

#### By _** Josh Hellman**_
[link to demo site coming](#)

## Description

This is a scripting app that will allow a user to input a 2 words or phrases and it will check if they are english words and if they are Anagrams or Antigrams (two words or phrases that have no matching characters )


## Setup/Installation Requirements

_Make sure you have [Ruby](https://www.ruby-lang.org/en/documentation/installation) installed on your computer._

_Make sure you have [git version control](https://git-scm.com/downloads) installed on your computer._


1. find the green 'Clone or Download' button and copy the link
2. open terminal and type...

**Windows**
```sh 
cd desktop
```

 Mac & linux 
 ```sh
 cd ~/Desktop
 ```

 3. in terminal type '_git clone {link to repository}_ '

```sh
git clone Link-Here
```

4. navigate to the new folder that was created on your desk
```sh
cd folder name
```

5. run npm install
```sh
npm install
```
6. run development server
```sh
npm run start
```

7. edit files in '/src' to make changes to the project.

8. remove .git delete this projects commit history
```sh
rm -rf .git
```
9. start your new git repository 
```sh
git init
```



## Specs
### Behavior Driven Development Spec List

Behavoir | Input | Output
:---------|:------:|:------:
|1 - The program will take in a word or phrase and check that it's written in english | 'later' | english : true |
|2 - The program will take in a second word or phrase and check that it's written in english| 'alert' | english : true' |
|3 - The program will compare the two phrases/word to see if they are anagrams | word1: 'later' word2: 'alert' | these are anagrams |
|4 - if the word/phrase isn't an anagram the program will check if they are antigrams  | word1: 'hello' word2: 'bye' | these are antigrams |

## Support 

_The software is provided as is. It might work as expected - or not. Use at your own risk._


## Built With

* Ruby 
* Spellchecker (Ruby Gem)


### License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

Copyright (c) 2020 **_Josh Hellman_**