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
class CfgLootTables {
	class CivillianLowerClass {
		count = 6;
		half = 0.651685;
		halfIndex = 3;
		sum = 1;
		items[] = 
		{
			{0.124187, "Exile_Item_PowerDrink"},// 12.4187%
			{0.337079, "Exile_Item_PlasticBottleFreshWater"},// 21.2892%
			{0.455056, "Exile_Item_CookingPot"},// 11.7978%
			{0.651685, "Exile_Item_CanOpener"},// 19.6629%
			{0.808989, "Exile_Item_Beer"},// 15.7303%
			{1, "Exile_Item_EnergyDrink"}// 19.1011% 
		};
	};
	class Food {
		count = 2;
		half = 1;
		halfIndex = 1;
		sum = 1;
		items[] = 
		{
			{0.375, "Exile_Item_CookingPot"},// 37.5%
			{1, "Exile_Item_CanOpener"}// 62.5% 
		};
	};
	class Drinks {
		count = 2;
		half = 1;
		halfIndex = 1;
		sum = 1;
		items[] = 
		{
			{0.368421, "Exile_Item_PowerDrink"},// 36.8421%
			{1, "Exile_Item_PlasticBottleFreshWater"}// 63.1579% 
		};
	};
};
```