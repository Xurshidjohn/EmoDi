module data;

import std.stdio;

string[string] emojis = [
    "heart": "❤️",
    "like": "👍",
    "disslike": "👎",
    "broken-heart":"💔"
];

string getEmojiByName(string emoji_name) {
    if(emoji_name in  emojis) {
        return emojis[emoji_name];
    } else {
        return "";
    }
}