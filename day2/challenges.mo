import Iter = "mo:base/Iter";
import Array = "mo:base/Array";
import Hash = "mo:base/Hash";
import HashMap = "mo:base/HashMap";
import Nat = "mo:base/Nat";
import Text "mo:base/Text";

actor Day2 {

    // 1. Write a function average_array that takes an array of integers and returns the average value of the elements in the array.
    public query func average_array(arr : [Int]) : async Int {
        var sum : Int = 0;
        for (n in arr.vals()) {
            sum += n;
        };
        return sum / arr.size();
    };

    // 2. Character count: Write a function that takes in a string and a character, and returns the number of occurrences of that character in the string.
    public query func count_occ(txt : Text, c : Char) : async Nat {

        var count : Nat = 0;
        for (char in txt.chars()) {
            if (char == c) {
                count += 1;
            };
        };
        return count;
    };

    //    3. Write a function factorial that takes a natural number n and returns the factorial of n.
    func factorial(n : Nat) : async Nat {
        if (n == 0) {
            return 1;
        } else {
            return n * (await factorial(n - 1));
        };
    };

    // 4. Write a function number_of_words that takes a sentence and returns the number of words in the sentence.
    public query func number_of_words(sentence : Text) : async Nat {
        var counter : Nat = 0;
        let c : Char = ' ';
        if (sentence.size() == 0) return 0;
        for (character in sentence.chars()) {
            if (character == c) {
                counter += 1;
            };
        };
        return counter + 1;
    };

    // 5. Write a function find_duplicates that takes an array of natural numbers and returns a new array containing all duplicate numbers. The order of the elements in the returned array should be the same as the order of the first occurrence in the input array.
    

    // 6. Write a function convert_to_binary that takes a natural number n and returns a string representing the binary representation of n.

};
