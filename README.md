# Week 2

## A bit of Git
### Git Aliases
These are cutom short cuts for Git commands:
```
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.ls "log --pretty=format:'%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]' --decorate"
```

## Recap of coursework from week 1
* Project Person
* Project Account
* Project Bank

## Class attributes 
* attr_accessor
* attr_reader
* attr_writer

## Exception handling

### Example of an exception
```ruby
a = 5 + "5"
```

The general flow:

```ruby 
begin
    # execute general code here
rescue
    # this gets executed if an exception is thrown in the block above
end
```

Using an else in conjunction with rescue:

```ruby 
begin
    # execute general code here
rescue
    # this gets executed if an exception is thrown in the block above
else
    # this gets executed if no exception was thrown between begin and rescue
end
```

Ensure - to make sure code always executes:

begin
  puts "Hello, world!"
rescue
  puts "rescue"
else
  puts "else"
ensure
  puts "ensure"
end

This will print ```Hello, world! else ensure```

Reference: http://stackoverflow.com/a/6280005/259477

An interesting read - http://stackoverflow.com/a/2192010/259477


### Excercise
1. Make the Account class throw an exception if we try to withdraw more money than is in the balance
Where should you handle the exception?

## Arrays and Hashes

### Arrays
* Arrays are lists
* Iterate an array with while loops
* Iterate an array with blocks

### Hashes
# Creating a hash
# Access values with explicit keys
# Hash with blocks
# Symbols 
# Using a hash as a method parameter

### Excercises
1. Create a hard coded list of numbers. Loop through them, displaying each one to the console

2. Create a hard coded list of numbers. Display only the odd numbers to the console

3. Create a hard coded list of numbers. Display the count of even and odd numbers

4. Create a list of 5 random numbers, from 1 - 10 (inclusive of 1, exclusive of 10). Ask the user to try and guess a number that is in the list.

## Files
### Writing to a file

Using the File class:

```ruby
file_name = "example.txt"
file = File.open(file_name, "w")
file.puts "This is text"
file.close
```

### Excercises

Use exception handling to make sure that code above always closes the file

### Writing to a file - cont.

Using block notation:

```ruby
file_name = "example.txt"
File.open(file_name, "w"){ |file| file.puts "Contents of the file"}
```
The file is automatically closed when the block ends


### Reading a file

There are a few options to read a file:

```ruby 
file = File.open("example.txt", "r")
contents = file.read
puts contents   
file.close
```

and

```ruby
f = File.open("my/file/path", "r") 
f.each_line do |line| 
	puts line 
end 
f.close
```

Using a block:

```ruby
contents = File.open("sample.txt", "r"){ |file| file.read }
puts contents
```

The file is automatically closed when the block ends

### readlines and read line

A very common approach to reading files:

```ruby
File.open("example.txt").readlines.each do |line|
   puts line
end
```

This is referred when dealing with large files:

```ruby
file = File.open("example.txt", 'r')
while !file.eof?
   line = file.readline
   puts line
end
file.close
```
Note: don't forget to use exception handling in this example

Readline loads the entire file at once into memory. While this is fine for most applications, this is not good practice if the file is very large, especially if it is running on a server that is serving multiple users.

### Excercises
1. The anagram challange - http://codekata.com/kata/kata06-anagrams/



