/// @description check_no_common_letters(str1, str2)
/// @param str1 The first string to check.
/// @param str2 The string containing letters to be excluded.

function check_no_common_letters(str1, str2) {
    for (var i = 0; i < string_length(str1); i++) {
        var character = string_char_at(str1, i + 1); // string_char_at is 1-indexed
        if (string_pos(character, str2) > 0) {
            // If the character is found in str2, return false
            return false;
        }
    }
    // If no characters from str1 are found in str2, return true
    return true;
}
