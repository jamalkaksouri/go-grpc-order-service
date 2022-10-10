![52b2763487b447e8aa1a5ff403712e19](https://user-images.githubusercontent.com/12379287/192507013-c795063d-cc13-480d-bbb5-50cfbc41625d.png)

## Installation

```bash
$ make proto
```

## Create a new database named `order_svc`

## Running the app

```bash
$ make server
```

## Running both services using Makefile
First run [API gateway](https://github.com/jamalkaksouri/go-grpc-api-gateway)
Then run [Auth service](https://github.com/jamalkaksouri/go-grpc-auth-svc)
Then run [Product service](https://github.com/jamalkaksouri/go-grpc-product-service)
Then run [Order service](https://github.com/jamalkaksouri/go-grpc-order-service)

## Curl commands
Register User
```bash
curl --request POST --url http://localhost:3000/auth/register --header 'Content-Type:application/json' --data '{"email": "jamal.kaksouri@gmail.com","password": "admin"}'
```
Login User
```bash
curl --request POST --url http://localhost:3000/auth/login --header 'Content-Type:application/json' --data '{"email": "jamal.kaksouri@gmail.com","password": "admin"}'
```
Create Product
```bash
curl --request POST --url http://localhost:3000/product --header 'Authorization: Bearer YOUR_TOKEN' --header 'Content-Type: application/json' --data '{ "name": "Product A", "stock": 5, "price": 15}'
```
Find One Product
```bash
curl --request POST --url http://localhost:3000/product/1 --header 'Authorization: Bearer YOUR_TOKEN'
```
Create Order
```bash
curl --request POST --url http://localhost:3000/order --header 'Authorization: Bearer YOUR_TOKEN' --header 'Content-Type:application/json' --data '{"productId": "1","quantity": "1"}'
```

## How to install make command in windows

```make``` is a GNU command so the only way you can get it on Windows is installing a Windows version like the one provided by [GNUWin32](http://gnuwin32.sourceforge.net/install.html). Anyway, there are several options for getting that:

The most simple choice is using [Chocolatey](https://chocolatey.org/install). First you need to install this package manager. Once installed you simlpy need to install ```make``` (you may need to run it in an elevated/admin command prompt) :

```bash
choco install make
```
Other recommended option is [installing a Windows Subsystem for Linux (WSL/WSL2)](https://docs.microsoft.com/en-us/windows/wsl/install-win10), so you'll have a Linux distribution of your choice embedded in Windows 10 where you'll be able to install make, gccand all the tools you need to build C programs.

For older Windows versions (MS Windows 2000 / XP / 2003 / Vista / 2008 / 7 with msvcrt.dll) you can use [GNUWin32](http://gnuwin32.sourceforge.net/install.html).

An outdated alternative was [MinGw](https://www.ics.uci.edu/~pattis/common/handouts/mingweclipse/mingw.html), but the project seems to be abandoned so it's better to go for one of the previous choices.
