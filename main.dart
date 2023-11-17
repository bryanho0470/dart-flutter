typedef MapDictionary = Map<String, String>;
typedef ListWords = List<String>;

class Dictionary {
  MapDictionary myDictionary = {};

  Dictionary() {
    myDictionary['KIMCH'] = "Spicy vegi";
    myDictionary['ORANGE'] = "Orange ball";
  }

  void get(String word) {
    print("your search word mean '${myDictionary[word]}'");
  }

  void count() {
    print("There are ${myDictionary.length} words");
  }

  void add(String word, String description) {
    myDictionary[word] = description;
    print("your ${word} added!!");
  }

  void updateWord(String word, String description) {
    myDictionary[word] = description;
    print("your ${word} updated!!");
  }

  void upsert(String word, String description) {
    if (myDictionary.containsKey(word)) {
      updateWord(word, description);
      print("your $word existed. updated!!");
    } else {
      add(word, description);
      print("your $word dose't exist. added!!");
    }
  }

  void exsits(String word) {
    if (myDictionary.containsKey(word)) {
      print("$word exists!!");
    } else {
      print("$word dosen't exist!!");
    }
  }

  void bulkAdd(MapDictionary newWordsSet) {
    myDictionary.addAll(newWordsSet);
    print("Adding done!!");
  }

  void delete(String word) {
    myDictionary.remove(word);
    print("your ${word} removed!!");
  }

  void bulkDelete(ListWords words) {
    for (var word in words) {
      myDictionary.remove(word);
    }
    print('remove done!!');
  }
}

void main() {
  var dictionary = Dictionary();
  print(dictionary.myDictionary);
  dictionary.count();
  dictionary.get('KIMCH');
  dictionary.add('DUBU', 'white spongy');
  dictionary.get('DUBU');
  dictionary.count();
  print(dictionary.myDictionary);
  dictionary.delete("DUBU");
  print(dictionary.myDictionary);
  dictionary.updateWord("KIMCH", "CHINESS FOOD");
  print(dictionary.myDictionary);
  dictionary.upsert("KIMCH", "KOREAN FOOD");
  print(dictionary.myDictionary);
  dictionary.upsert("CHIJIMI", "Vegi pancake");
  print(dictionary.myDictionary);
  dictionary.exsits("KIMCH");
  dictionary.exsits("DUBU");
  dictionary.bulkAdd({
    "BAB": "Steamed RICE",
    "GUKBAB": "Witch's stew",
  });
  print(dictionary.myDictionary);
  dictionary.bulkDelete(['BAB', 'GUKBAB']);
  print(dictionary.myDictionary);
}
