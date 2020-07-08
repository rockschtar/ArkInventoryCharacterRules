# ArkInventory Character Rules

Adds [rules](https://github.com/arkayenro/arkinventory/wiki/RuleFunction) for ```class```, ```playername``` and ```spec``` (```role```) to [ArkInventory](https://www.curseforge.com/wow/addons/ark-inventory).

## Usage Examples

### Class rule
```lua
class ('Warlock','Warrior')
```
or
```lua
class ('Demon Hunter')
```

### Player name rule
```lua
playername('Mycharactername')
```
or

```lua
playername('Maincharactername','Altcharactername')
```

### Specialization/Role rule

Valid values are:
 - Specialization name, e.g. "Balance", "Windwalker", "Arms" or a [SpecializationID](https://wowwiki.fandom.com/wiki/SpecializationID)
 - Role "Healer", "Damager" oder "Tank"

**Exammple with specialization name**
```lua
spec('Windwalker')
```
or
```lua
spec('Windwalker', 'Balance')
```

**Exammple with SpecializationID**
```lua
spec(577)
```
or
```lua
spec(577, 103)
```
**Exammple with Role**
```lua
spec('Damager')
```
or
```lua
spec('Healer', 'Tank')
```

You can also use ```role``` as an alias for ```spec```

```lua
role('Damager')
```
or
```lua
role('Healer', 'Tank')
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
[MIT](https://choosealicense.com/licenses/mit/)

