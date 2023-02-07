# Merging [[javascript]] objects

## 1. Spread -- Not in-place

```js
// c has properties of both `a` and `b`, `b` overrides
const c = {..a, ..b};
```

## 2. `Object.assign` - in-place

```js
Object.assign(b, c);
console.log(b); // b has properties of c (c overrides)
```

Reference (and more): https://www.javascripttutorial.net/object/javascript-merge-objects/
