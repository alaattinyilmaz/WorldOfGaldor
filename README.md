# World of Galdor

# DATABASE SYSTEM OF A ROLEPLAYING GAME: “WORLD OF GALDOR”

```
Naci Ege SARAÇ
Orhun BARIŞ
Ahmet Ege GÜLDALI
Emir Alaattin YILMAZ
```
## DESCRIPTION

We designed a database of a roleplaying computer game. ER Diagram contains Player
to Player relationships and Player to Environment relationships. There are 7 entities. Each
entity has several attributes.

**ENTITIES**

1. **Person** : This entity represents players, also it has these attributes; Player ID ( _pID_ )
    which is a primary key and Player name ( _pName_ )
2. **Soldier** : Represents the Person’s specialty which is an “ISA” relation, a person can
    either be a soldier or a worker (see entity #3). Soldier entity has the attribute of _‘unit’_
    referring to the class a soldier belongs to – archer, swordsman, king’s guard or healer.
3. **Worker** : Similarly, Worker represents an “ISA” relation with Person. As mentioned
    above, a Person can either be Worker or Soldier. Furthermore, it has _‘specification’_
    attribute referring to the occupation that a worker can have.
4. **House** : This entity represents a group that consists of more than one Person. A person
    can belong to only one house.
5. **Boss** : Bosses represents creatures that a Person can kill to get awards. Each Boss
    belongs to a specific Land.
6. **Land** : Each Land entity represents specific regions. A House entity occupies a land
    and becomes the land ruler. A land entity can only be owned by one House. Lands
    include Boss creatures which there is a unique Boss in each Land. Moreover, Lands
    have natural resources denoted by _‘notableResorces’_ that may be processed by
    workers.
7. **Item** : Items are only available to Persons either by killing a Boss creature or trading
    with another Person.


## RELATIONSHIPS

1. **is_member_of** (between Person and House): A Person belongs to a House – for
    example Person “Arya Stark” belongs to “House Stark”. It has the attribute _‘since’_ that
    stands for the registration date of a Person to that House.
2. **is_at_war_against** (between House and House): A House can declare war to another
    House. It has the attributes; _‘since’_ which stands for the date which began the relation,
    _‘until’_ again represents a date which relation had been ended.
3. **owns** (Between House and Land): A House will own and control a specific Land.
    Such as House Laz owns land Rize.
4. **is_located_at** (between Boss and Land): A Boss creature will be “located at” a unique
    Land. For instance; Lake Van Monster is located at land Van.
5. **farms** (between Worker and Land): Workers farms in Lands in order to earn their
    lives.
6. **fights** (between Soldier and Boss): A Soldier can fight with a Boss creature to earn
    honor and glory or drop various Items.
7. **drops** (between Item and Boss): A Boss creature may drop a unique item which can
    wielded by Person who kill the Boss or later can be traded. To illustrate, The Great
    Dragon may drop the item “Raindrop Pendant”. ‘Drops’ relation has the attribute
    _‘rareness’_ which stands for a categorization of items’ drop rate and frequency. An
    item-drop relation can be rare, uncommon or common.
8. **trades_with** (between Person and Person): Basically, a Person can trade with another
    Person in order to get various items. The attribute _‘date’_ stands for the date of the
    trade, and _‘price’_ stands for the payment in gold coins that the buyer made to the
    seller.

## ER DIAGRAM


