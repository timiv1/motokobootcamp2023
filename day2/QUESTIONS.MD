1. Who controls the ledger canister? 

**Answear:**
```
NNS
```
2. What is the subnet of the canister with the id: **mwrha-maaaa-aaaab-qabqq-cai**? How many nodes are running this subnet?  

**Answear:**
```
pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe
16 nodes
```
3. I have a neuron with 1O ICPs locked with a dissolve delay of 4 years - my neuron has been locked for 2 years. What is my expected voting power?

**Answear:**
```
10*1.499*1.125 = 16,86
```
4. What is wrong with the following code?
```
actor {
  let n : Nat = 50;
  let t : Text = "Hello";

  public func convert_to_text(m : Nat) : async Text {
    Nat.toText(m);
  };
 
}
```

**Answear:**
```
The import of Nat module is missing
```
5. What is wrong with the following code?
```
actor {
  var languages : [var Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language : Text) : async [var Text] {
    return (languages);
  };
 
}
```

**Answear:**
```
Mutable functions cant be shared outside of canister.
```
6. What is wrong with the following code?
```
actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func add_language(new_language: Text) : async [Text] {
    languages := Array.append<Text>(languages, [new_language]);
    return (languages);
  };
 
}
```

**Answear:**
```
We need to import Array module, its better to us Buffer instead of append.
```