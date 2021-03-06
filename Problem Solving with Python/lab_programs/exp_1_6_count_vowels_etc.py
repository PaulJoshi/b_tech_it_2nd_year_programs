# Count the number of vowels, consonants, words and question marks in a given string

vowels = 0 
consonants = 0 
question_marks = 0

str = input("\nEnter a string: ").lower()

for i in str:
    if i in ('a',"e","i","o","u"):
        vowels += 1
    elif i.isalpha():
        consonants += 1
    elif i == '?':
        question_marks += 1

print(f'''
Number of vowels:           {vowels}
Number of consonants:       {consonants}
Number of words:            {len(str.split())}
Number of question marks:   {question_marks}\n''')