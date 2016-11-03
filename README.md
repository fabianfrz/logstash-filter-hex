# Logstash Hex Filter

This filter helps you to hex encode/decode your fields.

## Decode fields

```
hex {
    fields => ["key_1", "key_2"]
}
```

## Encode field

```
hex {
    fields => ["key_1", "key_2"]
    action => "encode"
}
```

## Filter options

* **action**

  If the content should be encoded (`encode`) or decoded (`decode`) The default value is `decode`.

* **fields**

  The fields to encode or decode. Defaults to `message`.
  
* **type**

  If you want to encode or decode the field as a `string` or an `integer`.

## Note

This filter has been written by Fabian Franz and has been provided to you by austrian milCERT.

