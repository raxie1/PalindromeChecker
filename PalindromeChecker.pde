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
  if(reverse(noCapitals(onlyLetters(word))).equals(noCapitals(onlyLetters(word))))
  return true;
  return false;
}
public String reverse(String str)
{
    String reverse = "";
  for(int i = str.length()-1; i >=0; i--)
  reverse += str.substring(i, i+1);
  return reverse;
}
public String onlyLetters(String word2){
  String ans = "";
   for(int i =0;i<word2.length();i++)
  if(Character.isLetter(word2.charAt(i)))
  ans += word2.charAt(i);
  return ans;
}
public String noCapitals(String sWord){
  String ans = "";
  ans += sWord.substring(0).toLowerCase();
  return ans;
}
