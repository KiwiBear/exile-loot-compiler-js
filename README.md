# exile-loot-compiler-js
A node script to compile exile loot tables, this version allows you com nest "groups/tables" as much as you like allowing for more control over loot tables.
All .h files -> CfgLootTables.hpp

To use it, install [NodeJS](https://nodejs.org/en/).
Then run install.bat and then compile.bat to generate a CfgLootTables.hpp

```
> CivillianLowerClass
// loot.h
30, Drinks
28, Food
14, Exile_Item_Beer
17, Exile_Item_EnergyDrink

> Food
3, Exile_Item_CookingPot
5, Exile_Item_CanOpener

> Drinks
7, Exile_Item_PowerDrink
12, Exile_Item_PlasticBottleFreshWater

```
Compiles into
```
/*
Loot Groups
CivillianLowerClass
Food
Drinks
*/
class CfgLootTables {
	class CivillianLowerClass {
		count = 6;
		half = 5904.79;
		halfIndex = 3;
		sum = 10000;
		items[] = 
		{
			{1179.78, "Exile_Item_CookingPot"},// 11.7978%
			{2421.64, "Exile_Item_PowerDrink"},// 12.4187%
			{3994.68, "Exile_Item_Beer"},// 15.7303%
			{5904.79, "Exile_Item_EnergyDrink"},// 19.1011%
			{7871.08, "Exile_Item_CanOpener"},// 19.6629%
			{10000, "Exile_Item_PlasticBottleFreshWater"}// 21.2892% 
		};
	};
	class Food {
		count = 2;
		half = 10000;
		halfIndex = 1;
		sum = 10000;
		items[] = 
		{
			{3750, "Exile_Item_CookingPot"},// 37.5%
			{10000, "Exile_Item_CanOpener"}// 62.5% 
		};
	};
	class Drinks {
		count = 2;
		half = 10000;
		halfIndex = 1;
		sum = 10000;
		items[] = 
		{
			{3684.21, "Exile_Item_PowerDrink"},// 36.8421%
			{10000, "Exile_Item_PlasticBottleFreshWater"}// 63.1579% 
		};
	};
};
```