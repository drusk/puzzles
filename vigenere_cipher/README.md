from http://problemotd.com/problem/vigenere-cipher/

The cipher requires a key and a message. It works like this:

```
Key:
    REDDIT
Message:
    TODAYISMYBIRTHDAY

REDDITREDDITREDDI
TODAYISMYBIRTHDAY
--------------------------
KSGDGBJQBEQKKLGDG
```

Using a 0 based alphabet (A=0), R is the 17th letter of the alphabet and T is the 
19th letter of the alphabet. (17 + 19) mod 26 = 11 which is where K resides in 
the alphabet. Repeat for each key/message letter combination until done.

Implemented encrypting and decrypting in Ruby in cipher.rb
