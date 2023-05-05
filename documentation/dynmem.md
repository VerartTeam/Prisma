# DynMem

Acronym : `dmem`, `dynmem`

---

## Get started


### What is it?
DynMem is a dynamic memory allocator system storing lists into minecraft scoreboards. 


### Introduction to the memory storage

With DynMem, you can access a simulated RAM in a scoreboard. That means that you have access first to a memory of 8192 ints (32 bits on your system). There is three ways to interact with this memory :
- using the List Handler and Access Interface
- using the Direct Access Interface
- using the Memory Allocator Interface

#### List Handler and Access Interface (LHAI)

The list access interface (**LHAI**) permits you a lot of things, this is the most "user-friendly" interface of the three. In addition of the list managment, the LHAI is capable of doing everything the MAI and the DAI are doing by using them directly in its functions.

The LHAI is able to create lists, delete lists, add elements to lists, remove elements from lists, get the size of lists, get the value of an element of a list, get the memory location of an element or a list and more.

Note that the LHAI is using the MAI and the DAI to do some parts of its job, so it is slower than using directly the MAI and the DAI when possible. If you want to do a lot of operations in a list, it is better to get the position in the memory of a list with the LHAI and then use the DAI to access the elements of the list. Direct usage of the MAI is really rare, and the LHAI still is a good choice for most of the cases.


#### Direct Access Interface (DAI)

The direct access interface (**DAI**), contrary to the LHAI, permits you to access directly to a slot of the memory. This interface is useful when you know which specific slot you want to access. 

⚠️ Be really careful when using this interface, **it can corrupt the memory** because **the memory can be relocated** when:
- the user attempts to allocate memory but the allocator detects that there is enough memory available but not in a single block and so it will relocate the different elements to make free space a single block.
- the user forces the relocation of the memory

Thats why the DAI is commonly used in combination with the LHAI on a single tick.


#### Memory Allocator Interface (MAI)

The memory allocator interface (**MAI**) permits you to allocate memory for your lists. This is his only purpose. The MAI is able to allocate memory for lists of a specific number of elements, can be up to 8192 elements but can also be 1. If you know that you will use only one value, the usage of a classic score holder is preferable can be useful to have dynamic list sizes. We will see later how to use it.


## Introduction to Lists

To explain how is working the LHAI and access the different elements, it is interesting to see how are working lists in classic programming languages. If you are familiar with them, you should already know the syntax of lists.

Commonly (here it is in python), lists are defined as follow:
```python
my_list = [1, 2, 3, 4, 5]
```
The list has a name, and values. Now if we want to access these values, we can do it like this:
```python
my_list[0] # returns 1
my_list[1] # returns 2
my_list[2] # returns 3
my_list[3] # returns 4
my_list[4] # returns 5
```
To access a value, we use the name of the list, and the index of the value we want to access.

Python is a really powerful language, and has a lot of shortcuts. To save calculations, DynMem isn't giving you these shortcuts, and is closer to C.

In C, to create a list, you need to allocate memory for it. To do so, you need to know the size of the list. So, to create a list in C, you need to do this:
```c
int my_list[5] = {1, 2, 3, 4, 5};
```
Now, to access the values, we need to do this:
```c
my_list[0] // returns 1
my_list[1] // returns 2
my_list[2] // returns 3
my_list[3] // returns 4
my_list[4] // returns 5
```
As you can see, it is the same syntax as python, but we need to allocate memory for the list before using it. It means, that you can't append values to the list if it is already full. Hopefully, DynMem is giving you tools to extend the size of a list.

A second thing interesting in C is that a list is a pointer to the first element of the list. A pointer is a variable that stores the address of another variable. A pointer needs to be declared with a type, and can be used to access the value of the variable it points to.

DynMem is using the same system. In other words, the lists you will declare will be pointers to a specific slot of the memory. Then, to access to an element of the lists if you have `my_list[i]`, you will in fact access to the value of the slot `my_list + i`. 

It is important because you can get the location of the first element of a list and use the direct access interface to access to the values of the list in the quickest way possible.

An other important change is that DynMem isn't using varibales names, but ids. It means that you can't access to a list by its name, but by its id. The id is a number, and is unique.

#### To resume:
- to access a list, you need:
    - the id of the list
    - the index of the value you want to access
- you will need to declare the number of elements of the list before using it. You can don't use all the elements, but you can't use more than the number of elements you declared.
- you can get the location of a list by its id and then use the direct access interface.

## List Handler and Access Interface (LHAI)




---
## Untranslated functions
Here are an adaptation of the functions if it was in a classic programming language. It is not a real code, but it is easier to understand the functions like this.

### List Handler and Access Interface (LHAI)
| Command | returns | action | version |
|--|--|--|--|
| `malloc(size)` | id of the new list |  |  |
| `realloc(id, [optional: destination])` | success (0 or 1) |  |  |
| `free(id)` | success (0 or 1) |  |  |
| `set(id, index, value)` | / |  |  |
| `get(id, index)` | memory location, and value |  |  |
| `` |  |  |  |
| `` |  |  |  |
| `` |  |  |  |

Note that it is the localisation of the memory slots which takes the most time. It is why `get()` is returning the localisation of the memory slot AND the value of the element.

Also using the DAI is faster than the LHAI because it will skip the localisation of the memory slot based on the id.


## Commands

| Command | action | version |
|--|--|--|
| `` |  |  |
| `` |  |  |
| `` |  |  |
| `` |  |  |


## Events

| Event | trigger | version |
|--|--|--|
| `` |  |  |
| `` |  |  |
| `` |  |  |
| `` |  |  |


## Configs

| Config | usage | version |
|--|--|--|
| `` |  |  |
| `` |  |  |
| `` |  |  |
| `` |  |  |

---