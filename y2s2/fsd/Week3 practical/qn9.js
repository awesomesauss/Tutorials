function count(word,pos){
    const sentence = "Peter Piper picked a peck of pickled peppers. A peck of pickled peppers Peter Piper picked. If Peter Piper picked a peck of pickled peppers, where’s the peck of pickled peppers Peter Piper picked?"
    let count = 0;
    let position = sentence.indexOf(word,pos);

    while (position != -1){
        count ++
        position = sentence.indexOf(word,position+1)
    } return count
} 
console.log(count("Piper",0))