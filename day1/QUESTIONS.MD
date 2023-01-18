# <a id="questions"> 🙋 Questions </a>
1. How much is the current memory capacity of a canister? 
**ANSWEAR:**
```
Canisters can hold 48GB of stable memory. For MAX_WASM_MEMORY_IN_BYTES = 4GB
```
2. What is the issue with the following code sample?
```
actor {
  let counter : Nat = 0;
  public func increment_counter() : async () {
    counter := counter + 1;
  };
}
```
**ANSWEAR:**
```
counter is a imutable value (let).
```
3. What is the issue with the following code sample?
```
actor {
  var message : Text = 0;

  public query func change_message(new_message : Text) : async () {
    message := new_message;
    return;
  };
  
  public query func see_message() : async Text {
    return(message);
  };
}
```
**ANSWEAR:**
```
var message is of type 'text' so it can't be assigned a valu of 0 which is a number. If you want an empty string use "".
```

4.  False or True: we can remove the keyword **async** for return argument of a query function since queries are faster to answer.

**ANSWEAR:**:
```
FALSE
```
