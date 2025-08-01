task1
import threading
def tubson(n):
    if n<2:
        return False
    for i in range(2,int(n**0.5)+1):
     if n%i==0:
        return False
    return True

def theard1(resalt):
    for i in range(1,251):
        if tubson(i):
            resalt.append(i)

def theard2(resalt):
    for i in range(251,501):
        if tubson(i):
            resalt.append(i)

def theard3(resalt):
    for i in range(501,751):
        if tubson(i):
            resalt.append(i)

def theard4(resalt):
    for i in range(751,1001):
        if tubson(i):
            resalt.append(i)

def royxat():
    theart=[]
    resalt=[]
    t1=threading.Thread(target=theard1,args=(resalt,))
    t2=threading.Thread(target=theard2,args=(resalt,))
    t3=threading.Thread(target=theard3,args=(resalt,))
    t4=threading.Thread(target=theard4,args=(resalt,))

    theart.extend([t1,t2,t3,t4])
    for t in theart:
        t.start()
    for t in theart:
        t.join()
    
    return sorted(resalt)

num=royxat()
print(num)


task 2
import threading
from collections import Counter
import os

def count_words(lines, result, index):
    word_count = Counter()
    for line in lines:
        words = line.strip().split()
        word_count.update(words)
    result[index] = word_count

def process_file(filename, num_threads=4):
    with open(filename, 'r', encoding='utf-8') as f:
        lines = f.readlines()

    chunk_size = len(lines) // num_threads
    threads = []
    results = [None] * num_threads

    for i in range(num_threads):
        start = i * chunk_size
        end = None if i == num_threads - 1 else (i + 1) * chunk_size
        thread = threading.Thread(target=count_words, args=(lines[start:end], results, i))
        threads.append(thread)
        thread.start()

    for thread in threads:
        thread.join()

    total_count = Counter()
    for result in results:
        total_count.update(result)

    for word, count in total_count.most_common():
        print(f"{word}: {count}")

# Fayl nomini belgilang
filename = 'your_large_file.txt'
process_file(filename)
