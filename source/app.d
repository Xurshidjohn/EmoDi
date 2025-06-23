import std.stdio;
import data;

string[] emoji_names = [];

void checker(string matn) {
    int i = 0;
    string key = "".dup;
    int temp = 0;
    string yangi_matn = "";
    foreach(ch;matn) {
        if(ch == '<') {
            temp =1;
        }
        if (ch == '>') {
            temp = 0;
            if(getEmojiByName(key)) {
                yangi_matn ~= getEmojiByName(key);
            }
            key = "";
        }
        if (temp == 1 && ch != '<') {
            key ~= ch;
        } else {
            if(ch != '<' && ch != '>') {
                yangi_matn~=ch;
            }    
        }
        i++;
    }
    writeln(yangi_matn);
}

void main() {
    writeln("Enter Text: ");
    string text = readln();
    checker(text);
}