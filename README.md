![prisma](https://user-images.githubusercontent.com/56648332/208785484-100bef66-6e5b-4730-acc6-bb02f9dbdec6.png)

# Prisma
Prisma separates datapacks into modules like a prism diffracts light


# Prisma modules

## Modules Structure

- `cmd` functions you can execute from your code
- `config` some customizable files
- `events` functions you can modify and that will be executed
- `private` main functions - do not touch
    - `loader`
        - `update`

`tick` function is loaded from the init function in the loader. Tick functions will use schedules.



## Existing modules
- Player manager

## Futures Modules
- forceload chunks
- (eventually) fake spectator
