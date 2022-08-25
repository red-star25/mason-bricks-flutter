# Reusable Bricks using 🔨 [Mason CLI Package](https://pub.dev/packages/mason_cli)

## Installation

1. Using `pub` :

- `dart pub global activate mason_cli`

2. Using `brew` :

```
brew tap felangel/mason
brew install mason
```

- Run `mason` command inside terminal to check if it is successfully installed or not

---

## Clone

- Clone [this](https://bitbucket.org/dhruv-nakum/troo_mason/src/master/) repository.

---

## Run

- Run `mason get` command to get all the bricks.
- After that run below command to add the bricks globally in order to use it in any project

```
mason add name_of_brick --path ./path/to/my_brick
```

Ex :

```
mason add troo_bloc_feature --path ./bricks/troo_bloc_feature
```

- After that check if it successfully added or not by running below command.

```
mason ls -g
```

---

## Using mason inside project

- In order to use mason inside project run :

```
mason make name_of_brick
```

---

## Refere [this](https://github.com/felangel/mason/tree/master/packages/mason_cli#creating-new-bricks) to create your own brick.
