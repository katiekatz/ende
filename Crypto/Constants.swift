//
//  Constants.swift
//  Crypto
//
//  Created by Kaitlyn Katz on 3/29/15.
//  Copyright (c) 2015 KTKO Apps. All rights reserved.
//

import Foundation

let viginere: [[Character]] = [
    ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"],
    ["B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A"],
    ["C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B"],
    ["D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C"],
    ["E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D"],
    ["F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E"],
    ["G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F"],
    ["H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G"],
    ["I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H"],
    ["J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H", "I"],
    ["K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J"],
    ["L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K"],
    ["M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L"],
    ["N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M"],
    ["O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N"],
    ["P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O"],
    ["Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P"],
    ["R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q"],
    ["S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R"],
    ["T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S"],
    ["U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T"],
    ["V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U"],
    ["W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V"],
    ["X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W"],
    ["Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X"],
    ["Z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y"]
]

func convertASCII(char : Character) -> Int {
    switch(char){
    case("a"): fallthrough
    case("A"): return 0;
    case("b"): fallthrough
    case("B"): return 1;
    case("c"): fallthrough
    case("C"): return 2;
    case("d"): fallthrough
    case("D"): return 3;
    case("e"): fallthrough
    case("E"): return 4;
    case("f"): fallthrough
    case("F"): return 5;
    case("g"): fallthrough
    case("G"): return 6;
    case("h"): fallthrough
    case("H"): return 7;
    case("i"): fallthrough
    case("I"): return 8;
    case("j"): fallthrough
    case("J"): return 9;
    case("k"): fallthrough
    case("K"): return 10;
    case("l"): fallthrough
    case("L"): return 11;
    case("m"): fallthrough
    case("M"): return 12;
    case("n"): fallthrough
    case("N"): return 13;
    case("o"): fallthrough
    case("O"): return 14;
    case("p"): fallthrough
    case("P"): return 15;
    case("q"): fallthrough
    case("Q"): return 16;
    case("r"): fallthrough
    case("R"): return 17;
    case("s"): fallthrough
    case("S"): return 18;
    case("t"): fallthrough
    case("T"): return 19;
    case("u"): fallthrough
    case("U"): return 20;
    case("v"): fallthrough
    case("V"): return 21;
    case("w"): fallthrough
    case("W"): return 22;
    case("x"): fallthrough
    case("X"): return 23;
    case("y"): fallthrough
    case("Y"): return 24;
    case("z"): fallthrough
    case("Z"): return 25;
    default: return -1;
    
    }
}

func convertLetter(num: Int) -> Character {
    switch(num){
    case(0): return "A";
    case(1): return "B";
    case(2): return "C";
    case(3): return "D";
    case(4): return "E";
    case(5): return "F";
    case(6): return "G";
    case(7): return "H";
    case(8): return "I";
    case(9): return "J";
    case(10): return "K";
    case(11): return "L";
    case(12): return "M";
    case(13): return "N";
    case(14): return "O";
    case(15): return "P";
    case(16): return "Q";
    case(17): return "R";
    case(18): return "S";
    case(19): return "T";
    case(20): return "U";
    case(21): return "V";
    case(22): return "W";
    case(23): return "X";
    case(24): return "Y";
    case(25): return "Z";
    default: return "💩";
    }
}

func isInt(char: Character) -> Bool {
    if(char == "1" || char == "2" || char == "3" || char == "4" || char == "5" || char == "6" || char == "7" || char == "8" || char == "9" || char == "0"){
        return true
    }
    return false
}

func convertInt(char: Character) -> Int {
    switch(char){
    case("0"): return 0;
    case("1"): return 1;
    case("2"): return 2;
    case("3"): return 3;
    case("4"): return 4;
    case("5"): return 5;
    case("6"): return 6;
    case("7"): return 7;
    case("8"): return 8;
    case("9"): return 9;
    default: return 7000;
    }
}

func convertIntChar(num: Int) -> Character {
    switch(num){
    case(0): return "0";
    case(1): return "1";
    case(2): return "2";
    case(3): return "3";
    case(4): return "4";
    case(5): return "5";
    case(6): return "6";
    case(7): return "7";
    case(8): return "8";
    case(9): return "9";
    default: return "z";
    }
}