# Ruby Koans Checker

This project eases the way you run different types of code checkers on ruby code.

### How To Run

After you [installed docker](http://lmgtfy.com/?q=how+to+install+docker), you may run following commands:
```
docker pull allomov/ruby-koans-checker
docker run -v /path/to/your/finished/koans/folder:/ruby_koans/koans -t allomov/ruby-koans-checker
```

**WARNING**: don't forget to replace `/path/to/your/finished/koans/folder` with path to koans folder on your computer

### How To Build an Image

```
docker build -t allomov/ruby-koans-checker:latest .
docker push allomov/ruby-koans-checker:latest
```