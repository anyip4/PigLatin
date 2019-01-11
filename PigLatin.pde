public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	for(int i = 0; i < sWord.length(); i++){
    	if(sWord.substring(i,i+1).equals("a")||sWord.substring(i,i+1).equals("e")||sWord.substring(i,i+1).equals("i")||sWord.substring(i,i+1).equals("o")||sWord.substring(i,i+1).equals("u")){
      	return i;
    	}
  	}
	return -1;
}

public int findQU(String sWord){
    int i = 0;
    if(sWord.substring(0,1).equals("q") && sWord.substring(1,2).equals("u")){
      	return i;
  	}else{
  		return -1;
  	}

}

public int firstLetterVowel(String sWord){
    if(sWord.substring(0,1).equals("a")||sWord.substring(0,1).equals("e")||sWord.substring(0,1).equals("i")||sWord.substring(0,1).equals("o")||sWord.substring(0,1).equals("u")){
      	return 2;
    }
	return -1;
}
public String pigLatin(String sWord)
{
	if(findFirstVowel(sWord) == -1){
		return sWord + "ay";
	}else if(findQU(sWord) == 0){
		return sWord.substring(2) + "quay";
	}else if(firstLetterVowel(sWord) == 2){
		return sWord + "way";
	}else{
		return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0,findFirstVowel(sWord)) + "ay";
	}
}
