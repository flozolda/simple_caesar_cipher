require "awesome_print"

alphabet = {
    1 => "a",
    2 => "b",
    3 => "c",
    4 => "d",
    5 => "e",
    6 => "f",
    7 => "g",
    8 => "h",
    9 => "i",
    10 => "j",
    11 => "k",
    12 => "l",
    13 => "m",
    14 => "n",
    15 => "o",
    16 => "p",
    17 => "q",
    18 => "r",
    19 => "s",
    20 => "t",
    21 => "u",
    22 => "v",
    23 => "w",
    24 => "x",
    25 => "y",
    26 => "z",
}

ciphered = "guvf vf na rknzcyr bs a pnrfne pvcure. jryy qbar sbe qrpbqvat vg!"

alphabet.each do |k,_v|
    new_try = ""
    ciphered.dup.split("").each do |letter|
        if alphabet.has_value?(letter)
            if alphabet.key(letter) - k < 1
                new_try += alphabet[alphabet.key(letter) - k + 26]
            else
                new_try += alphabet[alphabet.key(letter) - k]
            end
        else
            new_try += letter
        end
    end
    ap "#{k} #{new_try}"
end

