# testing_bloc


The Only Top Rated Uganda Website Designing Company with SEO and Digital Marketing Services that Drives Results for your Business to Grow


Trophy Developers, we are the best [SoftWare/ Mobile Application Development Company in Uganda, East Africa](https://www.trophydevelopers.com/mobile-application-development-uganda) and
 [Website Designing Company](https://www.trophydevelopers.com/contact-uganda-website-designers)
for large companies, small businesses, Non-profit organizations with the latest relevant proactive digital marketing tools and skills to help your business to grow.
![Productive Native Mobile Applications Development in Record Time for business growth](https://storage.googleapis.com/trophydevelopers/2021/11/aa8d2478-mobile-app_development-flutter-team.png)
Productive Native Mobile Applications Development in Record Time for business growth
Developing Beautiful Productive Native Applications in Record Time That Targets Your Customer's Mobile, Web, and Desktop Devices for Your Business to Grow.
Do you realize that the growth of mobile Internet usage has now gone on to Outpace traditional desktops as the most used digital device platform ?


[Trophy Developers](https://www.trophydevelopers.com/mobile-application-development-uganda) is going

talk to you about the block pattern [Trophy Developers](https://www.trophydevelopers.com/mobile-application-development-uganda)

really excited to talk to you about

flutter We've haven't been so excited

about technology and We don't know how

long We mean [Trophy Developers](https://www.trophydevelopers.com/mobile-application-development-uganda) really like flutter it's

very you know interesting in terms of

you know obviously you have hot reload

but the thing We really like about it is

it's really good for reactive

programming so reactive programming is

you know how you can use events and

streams and sinks and how many people

have done reactive programming raise

your hand okay good yeah so um yeah so

we're going to talk about that and the

good thing about it compared to like um

reactive programming and like iOS has

anybody done rx Swift you have two

people wow that's awesome okay so these

people are rare so We think that it's

very hard to do reactive programming and

something like Swift it doesn't really

support it out of the box so it's it's

much better to do it on flutter so we're

going we're going see about that so

we're going to talk about block but it's

not your only option for state

management there's scope to model which

is good for maybe smaller applications

and then there's block set state is

really good sometimes - you can use it

for maybe - for some changing some forms

Redux is very popular on you know the

reactive people use that and then

there's ng rx for angular that's kind of

another similar implementation there is

one for flutter and there's another one

rx VMs or rx command and get it it's

like it didn't see an injection and

service locator that's another totally

different thing not many people know

about that one but we don't have time to

really compare all those things so this

is what the block pattern looks like

some people call it a state management

system

but Katumba Tonny and We think he's the

primary maintainer of the flutter scoped

model as well as Redux he calls it a

reactive presenter and We think that's a

better way to look at this if you if

that makes sense to you and this the

screen does kind of show how it's a

reactive presenter so you have the UI

screen there so the user interacts with

that and then then they can send

commands to the block and then the block

interacts with a repository say a

database or some API or something like

that and then these things come back to

the block and then blocks and streams to

the UI so the UI doesn't have to

maintain any state or anything like that

so this kind of does show how it's like

a reactive presenter framework so some

of the key benefits of blocker is that

it lets you change your business logic

without minimal impact on the

application because block stands for

business logic components and it came

from a poll Saurez talk in January 2018

you can change the UI without affecting

the business logic and it's much easier

to test the business logic and for the

like rare people that are actually doing

angulardart

has any does anybody here done

angulardart

wow that's awesome that's amazing so if

you do angulardart and flutter dart you

can do code reuse that is awesome

do you work for google ok We should have

we should have put a caveat on that do

you know anybody not a Google doing

angular Dart ok have you ever heard of

anybody not at Google doing angular Dart

you know somebody oh you try ok well

that counts all right that's cool so

here's a quick overview about reactive

programming We kind of find talking about

reactive programming in the abstract

sense very challenging when We first

approached this We tried to look at these

kind of diagrams and We just wanted to

blow my brains out actually so but word

says but this is called a marble diagram

and these different colors represent

some kind of event you know something's

happening the X ray

presents an air condition in the little

thumb thing here is like the the thing

is done and so this is time so you can

think of like a stream anything it could

be like ah you know mouse clicks it

could be data something happening on

your API just all kind of things so a

lot of different things can be

represented by a stream and you can you

can see these things and then on the way

we where we usually architect these

things is you have a sink going into the

stream and then and then you have coming

out you can have some event that you can

monitor so rather than talking about

this fix extensively we're going

actually do some live coding which is a

little bit dangerous so we're going see

how that works and to get started what

we're going to do is we're going to work

on the stream and we're going try and do

a second episode where we talk about a

sink so so we had a little simple app

here this is using some hard-coded data

so let's look at this all persons page

here so you can see three people there

and they have some points We don't know

what these points are maybe you do maybe

it's how good-looking they are or the

number of points they have on some

gaming's thing We don't know and then

they have some colored avatar so um so

anyway here's what this all person's

page looks like it has a scaffold has a

ListView builder and then you can see

that it builds a single list item and

you can tap on it and then you can see

you know potentially yeah tap Monica so

you can see that things show up there

and then and then you can like increment

or decrement and of course that doesn't

work as it's not really hooked up yet so

so this is kind of the simple thing so

we want to kind of hook this thing up

with a block and so that's what we're

going to do and to get started let's

just put some basic stuff here so we

have some imports and we have a block

and we're going to have a dispose

because we want to make sure that we

don't have

leeks so to get started we're going have

a all persons subject and that's a

behavior subject which is a list of

persons so behavior subject is um keeps

a memory of what's kind of happened in

the past so it lets you see the last

value that's been on there but that's

not going to be accessible to the to the

view so we need to have an observable

which is also a list of persons we'll

call it uh all persons and we're going

to look at the stream okay so we need to

dispose the old person subject or close

it when we dispose cool and so that's

kind of getting us started but we need

to get some data in there so let's fetch

some data and so the underscore means

it's private and not accessible outside

so how many people have done cloud

firestore here okay good yeah so this

will be a little bit new for some people

so firestore instance collection persons

so let's look at this data just a little

bit here so this is a simple little

collection here you have some modest

klaris called fire store data and you

can see there there's some names here

the data is not perfect because

sometimes it's just name sometimes it

has votes and sometimes it doesn't you

know this is real data so that's how it

comes and we have we're going look at

some snapshots so this will give us an

update anything on that collection is

changed we're going to get updated on a

snapshot we're going listen to that

snapshot and it's a query snapshot

okay so the query snapshot is like a

wrapper of all the document snapshots so

we want to do something with that so

we're going have a list of persons

so we're going to iterate through all of

the documents on the query snapshot and

so this is a nice little utility we can

use here so we have our person data here

and we're going look at this just

briefly and so this this thing has a

name and an ID and a points and some

avatar color but this document reference

is something we have from the cloud

firestore system it tells us like where

it is and then but we have two nice

little convenient constructors here's

one is from map and ones from the

document snapshots so if we get adopted

document snapshot from cloud firestore

we can just immediately Estancia Tinh so

we don't so that's kind of really nice

and we're going look at these things a

little bit later some transactions we're

going do when we get a little bit

further along and then this is our

hard-coded list of people but we're

going be past that here shortly okay so

that gives us that and what we want to

do is we want to add that to the list

yep and make this thing not so ugly

that's better

obviously we want to sort the list

because the list is we cannot we have

implemented comparator on person and

then we're going add this to our subject

all right so that's it so that gives us

a fetch we put persons in this all

persons subject and that's a block so

let's see if we can hook this thing up

on the page so right now we have a fixed

body but let's actually put the block on

here

and let's see if we can import that

thing good all right so rather than a

fixed body let's um let's look at trying

to do a streaming version of this thing

okay so what we're going use here is a

really neat function and not flutter

called the stream builder and what this

does is it takes a stream of data and

helps you construct something so we have

a stream and it's what we just had the

all person stream so you know this

stream is just some you know some data

is coming so you know we don't know when

that's going to show up and then we're

going have a builder method which takes

a context and an asynchronous snapshot

of a list a list of persons

there we go okay nope

okay good

all right so but the problem so that's

asynchronous snaps not shot anytime it

gets updated this thing will be called

and you'll get a new asynchronous

snapshot so but we don't know if there's

data on that on that stream yet so we

can check to see if it has data and if

there's no data we're going just return

a linear return a linear progress linear

progress indicator that's one of those

little things that goes up back and

forth at the top of the screen kind of

yeah so we're going show that and if it

does we're going have a list of persons

and then we'll just return the ListView

like that okay okay so we're not using

that thing so let's hook that thing up

here all right

oh wow there's actually some data there

okay so that is pretty remarkable that

this thing actually somewhat worked so

let's see if this is fake or real so

let's just put somebody on here we want

it to put somebody on there that is

towards the top of the list so we can

see them so we'll just say hey like that

unbelievable so it actually worked so

this is actually listening to these

events and it's getting these things

updated in real time so um so that's

that's pretty good so this kind of gives

you an idea of how you can use the block

but so but that's not we're only using

it in one place so it doesn't really

make a lot of sense let's just add just

one small little feature to make it a

little bit more interesting because

we're only using the the streaming data

in one place so let's um let's count

lets show in the title how many people

are there

and so we have a stream again of all

persons and we have a builder context

okay so um if there is no data let's

just return what we already have which

is a text widget and we'll just say all

persons but if we do have data let's

just return a a text widget and say how

many persons we have so we can just say

like that okay so we'll just do that

string interpolation and we just need to

substitute this thing here and with hot

reload this thing should work

we hope great 45 okay so um so now we're

seeing a little bit just in this kind of

simple example We mean we're only using

into two places but you can see how the

block pattern can help you a little bit

because we're using the stream in two

different places now if this is a real

app and it's the streams just used all

over the place then you know how are you

going be able to make sure you're

getting all these updates and so so this

kind of simple application can kind of

show kind of you know how that can be

beneficial to you okay

so let's kind of go back to the slides

now that we've seen that how that works

a little bit and talked a little bit

about subjects so there are different

kinds of subjects in our X dart so the

one we used is a behavior subject that

shows you the last value that came on

the stream published subject does not it

only tells you the fresh values and

replay subject tells you like everything

has happened in the past so let's say

you have a stock trading system you know

might say well you know We only care

about the current stock price you know

some people some traders might care

about that but other traders may say

well you know We want to know what's

happened in the recent past because We

want to see what the changes are you

know because there might be some

momentum trading you know might be some

trend so they might want to replay

subjects so those are you know why you

might want these different subjects does

anybody know what subject is missing

here so this comes from the rx platform

and it's

in different languages including dart so

this platform only employs these three

subjects there's also an async subject

but dart doesn't implement it so so

that's just some kind of detail for you

okay so the rules for block are that we

should use sinks for inputs so if you

want to do some change you expose the

sink and we're going look at that

streams for output we just saw that

dependencies should be injectable and

platform-agnostic in case you're the

Google guy that actually does

angulardart

and no platform branching and then

there's some guidelines so if you look

at this simple app we if you had a very

complex app you can start to have

different classes and have a widget

represented in each separate class if

you have very complex things so you

might want to have a block not just for

a page but for a very small widget if

it's very complex and then you're

supposed to send inputs as is so like if

you want to do some change you send it

like that now sending outputs as is if

you saw how we did the the title we

actually did that the title in the UI

side of the house where we said okay

it's going be 40 persons versus you know

all persons if you want to conform to

this block guideline you could

potentially say We want to send that

string and actually send it from the

block itself than have the UI have to

figure that out so sometimes these

things are you know you can go either

way and then branching should be based

on some boolean outputs okay so we

there's a do we have time to do the sync

coding thing that this one is a little

bit easier um yeah okay cool all right

We know those live coding can be a little

bit boring okay

so what we're going do is we're going

help ourselves a little bit here

and so what we want to do is we want to

be able to make some change to this

thing we want to try to hook up some of

those affordances so we have a person

command let's let's actually hook that

thing up first and we have something

from the dart async library called a

stream controller and so this person

command this is very simple you can

increment some person points or

decrement or change the points or toggle

the color so that's some of the things

you can do there and then we have a

person command controller that we need

to close to make sure we don't have

memory leaks and then what we want to do

is we want to like handle these events

all right

we want to make sure we get that command

so yeah this should be enough to have a

sink there

so let's hook this up somewhere there's

somewhere in here where we actually tap

on yeah here we tap on something so

let's try to hook that thing up there

and we have the command sink add the

command and let's import that thing and

then this thing takes a person okay so

let's see if this actually works

okay it is not working because the block

says it should say something like got

person command so let's see if it's just

hot reload doesn't always work so let's

see if that's what our issue is all

right so let's see we got here okay good

got person command okay so after doing

the full reload it's working so let's

try to handle this thing

okay so we we need to actually have

another behavior subject to set the

current person so the way this works is

you set the current person and then you

can change their points so let's have

another subject and like the before we

want to keep track of what was in there

the last time we changed it so it needs

to be a behavior subject we might want

to know um who the current person is so

let's stream that thing out and

obviously we need to dispose that thing

so we don't have memory leaks and then

okay so that is okay so then let's add

that into this sink

r2 the subject person okay cool

alright now this might work if we hook

it up over here oh yeah okay so that's

that well so let's see we won't be able

to actually see if it works unless we go

down here and it says no person selected

but it would be nice to know who is

actually selected so that we can do

another stream builder and watch that

newly that that new observable that we

just hooked up that current person

and we have a builder with a context so

this time there's only the person in a

Singh snapshot rather than the list

so if we'll just return what we have but

We mean if there's no data yet selected

we'll just kind of do what we did before

and return the no person selected but if

there is let's see who it is um change

oh yeah and we need to specify the data

there okay okay let's see no person

selected okay good so it's working so we

can see now that Alexander is selected

Allen is selected so we are cooking with

gas so we're actually have the sink kind

of working and we're just going hook up

these last little commands and then

we're going be pretty much good to go

so what we need to do here is we don't

need to hook up all these commands but

okay so we need to first before we

increment the person we need to make

sure there is actually a person selected

so we're going check the current person

subject so on this side of the house we

can just use this ace the synchronous

value to see if there's a value in there

so we don't have to use the stream and

if there if that thing is null we're not

going to be able to be successful we're

just going return get out of this and

not have any trouble so but if it isn't

know we can increment the change points

by one

or we might want to toggle the person

color and we need if yeah okay so the

change points and toggle color uses it

starts a transaction on the cloud fire

store database so we get the fresh data

and then update it and let's just hook

up these two little lot increment things

here so we block we add the command sync

and we add a increment points by one and

then we can decrement

all right and then we can toggle the

avatar color here

all right so let's see how we're doing

here problems okay fix body we don't

care about that anymore all right no

issues all right let's see how we're

doing here so we've got Allen let's see

if we can add some points to Allen

praise God

we cannot decrement and we can let's see

if we can oh we can change his color too

unbelievable

miracles never cease so so We know this

is kind of a little bit contrived

example but we've done some kind of

complex things so we have this floating

action button which is really not a

floating action button it's a floating

action contraption because it's like a

container in a row in a button and a

text at the bottom of this thing which

is kind of crazy but that's the beauty

of flutter is a floating action button

just a widget and it can be whatever

widget you want so you know the block

doesn't know how you're going change

some of these things like decrementing

the points or these kind of things but

so you can hook these things up pretty

easily using this and so that is that is

pretty good okay let's kind of get back

to the slides then

okay so so this was kind of a quick

little example but there's a couple of

problems and that is that the the block

access that we did we just put it on the

class itself and the proper way to do

this is you need to have a more

sophisticated provider and we don't

really have time to look at that but

this repository is in github and there

is another example on here called the

lazy friends and it does use a provider

so you can kind of look at that if

you're interested so what the provider

does is We'll show that in the next slide

so this this example we did the data

access in the block we probably should

have a data access layer rather than

just do it directly in the block there

is some excessive boilerplate we do not

handle errors in the stream so one thing

you should be aware of is that if you

get some error in the stream it may not

continue to give me any more events and

that might be confusing to you if you

get an error you don't handle it and

then you're wondering what the hell just

happened to me disposed is not called

even though we went to all this trouble

the way We have it architected right now

you will never get that thing disposed

called which is not great

another thing is a sink close is exposed

up We don't know yeah yeah let me know We

won't show you that so basically you

just have to trust me because We exposed

the sink you can call so close on the

sink if you're a rogue programmer and

then that sink is closed and no one will

ever get another command to work again

so some people don't like to use sinks

they like to use a function to prevent

this kind of behavior

and there's no debounce for point

changes if We you know jam on this thing

really quickly you can see some kind of

you can see some kind of problem here

let's watch the console here let's just

you know hit this thing there you go you

saw some cloud fire store exception

because we're trying to do too many too

many transactions we should probably

like do some debounce timer and queue

these things up and maybe not do one at

a time but maybe you know if you did

three and 250 milliseconds list

increment by three is rather than one so

there's a lot of nice things that we can

do here and we can do these all in block

- it's just it takes a little bit more

time so that's something ok so where you

put your block there's some options one

is the global singleton some people

don't like Singleton's so they just put

it at the top of the Ridgid tree i guess

that's better We don't know if it's

better or not but it's more work but

then there's if you want to use the same

block in multiple parts of your

application for different things then

you can put it in some part of the

widget tree and then access it through

all the child widgets on that widget

tree but if you're going to do that

you're going need some kind of a little

bit more sophisticated provider because

you William you want to instantiate your

block and then you want to be able to

get access to that block and well if you

have a singleton that's pretty easy the

simple provider is what We've been using

in the past but it just have a lot of

boilerplate because it's tied for a

particular block there's a Bolin's

provider by this uh belgian guy named ET

ER Bolin's do we have any Belgians here

no okay are you building really is he

Flemish or not Flemish huh okay all

right but he's Belgian and he has a nice

provider that gives you disposed for

free he calls it for you automatically

and it has better performance and then

if you use the Angelou block pattern and

he hasn't made three public updates on

his pattern in the past ten days then

you get a block provider on that thing

for free also so these are some nice

providers if you're actually going use

the block pattern you do more than a

couple you don't want to use the simple

provider you need to use a little bit

more sophisticated provider okay so

we're getting towards the end here We

have some recommendations We don't really

know what the recommendation should be

but [Trophy Developers](https://www.trophydevelopers.com/mobile-application-development-uganda) going take some stab at it and

maybe somebody can come up with the

correct recommendations but we can all

agree on number one we should use

flooded because it is amazing and we can

be reactive you don't have to overuse

blocks sometimes it's better to just use

set state we should think about layering

Egan has a nice discussion about that we

should probably do some caching to make

sure that we can have some higher

performance

and we need to be careful of errors in

these streams we use the command pattern

in the sink example and that's kind of

nice to do but you can also do some

other options and the example that's in

the get rhihub repo we have a some lazy

loading loading example and this can be

have some consequences if you do

excessive lazy loading because you have

stream after stream after stream and it

can be a little bit daunting We thought

it was great but yeah so now [Trophy Developers](https://www.trophydevelopers.com/mobile-application-development-uganda) going

not have everything stream make sure

that you're actually calling disposed if

you want to make sure you don't have

memory leaks because you might find that

you do all this work to put disposal on

your block and then you actually never

get it called which We found out a couple

months later put your block in the right

part of the widget tree and then be

careful oh where you create your block

if you put your block in some method

that gets built over and over when the

widget tree changes you're going be

sheared look at the Angela for block

package it looks really interesting if

you really get into block beyond the

basics and one thing that if you're

using a lot of reactive data We like to

have an empty widgets that size the same

size as the widget that's going come in

with the data so the GUI doesn't jump

around too much those first you know a

couple hundred milliseconds from the

data is coming in so it looks a lot more

stable and doesn't give the user some

like a crazy idea so um muwah that's it

yeah so that's pretty pretty much it for

the block pattern

[Trophy Developers](https://www.trophydevelopers.com/mobile-application-development-uganda) sure there's tons of questions so

first of all thank you very much to

those photographers nothing

so [Trophy Developers](https://www.trophydevelopers.com/mobile-application-development-uganda) actually have a real-life

situation where We have we or so we have

and we need to transfer state not so

much even just state but also like next

action all right so what we do is we did

sockets so technically here it's all

right for example if we're all playing a

game right now you know we can the

old-style games to use you know GDP and

everyone so if We wanted to everyone to

go to the next level We could just set it

here once and there's in the block

stream with everybody yeah so you have a

block right it says like say what is it

like points changed or what was it what

was your exam it could be there just to

next action okay to next action okay

next action executed right so so then

all of these widgets just subscribe to

this block wherever it is another in

that case you might want to have it

pretty high on your widget tree and use

a good provider and then then it's just

a stream so We don't know what's in this

thing like maybe it's uh it tells you

what the next action is and then you can

report this next action you know at this

part of the screen or in this screen or

god knows where it is it could be

anywhere and then you don't have to

worry about oh well did We forget to you

know tell this part of the application

like if you do oh oh it's like oh well

you know got to make sure you updated to

here and you updated e here and it

updated here right and [Trophy Developers](https://www.trophydevelopers.com/mobile-application-development-uganda) just waiting

for you so you're talking about across

different devices across devices oh We

see um well so block is really We mean

it's not a network thing right so you

would probably have to be closed from

the furnace worker yeah yeah yeah this

pulls from well this this implementation

has like fire store which is also kind

of event based and yeah yeah if you're

on the fire store We mean like well if We

had to

doing this you know these points thing

they would go see this updates at the

same time yeah so yeah We mean we're

struggling a little bit with WebSockets

right working but We mean everyone can

update you at the same time right right

right yeah the cloud firestore is really

nice it doesn't have some advanced

tooling there's some other databases

have but its release We like so um so we

have this lazy friends block it

implements block base and block base

comes from the Bolin's block provider

and if you look at the Bolin's block

provider

he has disposed on here and Bolin's

brock provider says it's about so let me

see if this actually does some dispose We

think we can we can see it here so if we

go over here and we go to lazy friends

and we get a lot of lazy friends so this

is actually pulling stuff lazily if you

see how it so it does like that so we

don't have time to talk about this

because we have to get in sense

something called scan stream transform

which is very interesting but but now if

We go back to friends We get lazy friends

block dispose but We don't if you just

have to trust me

disposals not going to ever get cold on

the other one because We didn't implement

it correctly so that's does that answer

your question

that that's a little bit hard to

describe so the way Bolin's has kind of

done this is he's got a stateful widget

and he's got several widgets all wrapped

up in this thing so he's got an a

stateful widget because you cannot call

this boat like what's the trick about

there's something about it's it's tricky

to call like dispose on an inherited

widget maybe you can't do it so then

he's got a stateful widget here and then

he extends this a Bolin's block provider

and then he calls he calls the dispose

down here on this thing right here

override on this guy so yeah We recommend

so if you look at um look at that

recommendation it has the link that you

can really go through this this Bolin's

block provider in detail and kind of

understand it and if you want to get in

We recommend you do that so We understand

is that dark doesn't provide a method

just vendor our classes right dispose

comes as part of widget right widget has

it spoken We think they're just regular

to our classes doing

you've heard about any progress on

making that change to dark so that they

could have another edge there's there's

requests for it but no We really don't

know We mean some people say it could be

We don't know for sure because the way We

implemented block in this pattern We put

it on that widget itself that page

widget it might actually been disposed

just maybe not just it might have

actually got disposed just by pure luck

but [Trophy Developers](https://www.trophydevelopers.com/mobile-application-development-uganda) not really sure because We don't

know how these are X subjects are really

implemented so [Trophy Developers](https://www.trophydevelopers.com/mobile-application-development-uganda) not real clear about

it but We know on the Bolin's block

provider We can see it call so We kissing

me a lot more confidence to do what the

what to do with that as a language but

the the stream so you call dispersed

stream

these sauces and reduce what happened to

your eye what's my response unless

you're using all of your class which is

right because We think the one here is

called indisposed on the stream provider

the block rather than doctorates

probably disclose on a widget that

society but We could be one yeah he's

leveraging the fact that We suppose he

was caught by widget to a Costas

Kondylis yeah be nice if dart had that

little just have that

then a destructor you guys have internet

resources yeah all right all right all

right get up so [Trophy Developers](https://www.trophydevelopers.com/mobile-application-development-uganda) going start again

repeat up so it's you to the library

gets it or you can also forget the We

capital ones will not be here

we're here from the Capital One team and

right there from the outside We've seen

about that also presentation slash

articles so definitely come then and

we've got a marching it up and you'll

need a planned up so it's going to be

really great


