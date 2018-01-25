public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}



public boolean palindrome(String word)
{
  //your code here
  String makeLowerCase = word.toLowerCase();
  String onlyLetters = new String();
  String reverse = new String();


//only letters
  for(int i = 0; i<makeLowerCase.length(); i++)
  {
    if(Character.isLetter(makeLowerCase.charAt(i))==true)
    {
      onlyLetters = onlyLetters + makeLowerCase.substring(i,i+1);
    }
  }


//reverse
  for(int i = onlyLetters.length(); i>0; i--)
  {
    reverse = reverse + onlyLetters.substring(i-1,i);
  }


  if(reverse.equals(onlyLetters))
  {
    return true;
  }

  return false;
}



// public String reverse(String str)
// {
//     String sNew = new String();
//     //your code here
//     for(int i = str.length(); i>0; i--)
//     {
//       sNew = sNew + str.substring(i-1,i);
//     }


//     return sNew;
// }
