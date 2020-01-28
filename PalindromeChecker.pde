public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String palin = word;
  palin = noSpaces(word);
  palin = noCapitals(palin);
  palin = onlyLetters(palin);
  if(palin.equals(reverse(palin))){
    return true;
  }else if(palin.equals(reverse(palin))){
    return true;
  }else{
    return false;
  }

}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length()-1;i>=0;i--){ 
      sNew = sNew + str.substring(i,i+1);
    }
    return sNew;
}
public String onlyLetters(String sString){
  String letter = "";
  for(int i = 0; i < sString.length();i++){
    if(Character.isLetter(sString.charAt(i))){
      letter = letter + sString.charAt(i);
    }
  }
  return letter;
}

public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
public String noSpaces(String sWord){
  String combination = "";
  for(int i =0 ; i < sWord.length();i++){
    if(sWord.substring(i,i+1).equals(" ")){
      combination = combination;
    }else{
      combination = combination + sWord.substring(i,i+1);
    }
  }
  return combination;
}

