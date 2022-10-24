List programdata = [
  {
    'title': "C program to print hello world",
    'code': """
#include <stdio.h>

int main()
{
    printf("\n\n\t\tCSIT First Sem app\n\n\n");
    int num;
    printf("\nHello world!\nWelcome to our app: Best place to learn\n");
    printf("\n\n\t\t\tCoding is Fun !\n\n\n");
    return 0;
}
      
    """
  },
  {
    'title': "Program to take input of various datatypes in C",
    'code': """
  #include<stdio.h>

int main()
{
    printf("\n\n\t\tNeptechpal - Best place to learn\n\n\n");

    int num1, num2;  
    float fraction;     
    char character;

    printf("Enter two numbers number\n");
    
    // Taking integer as input from user
    scanf("%d%i", &num1, &num2);
    printf("\n\nThe two numbers You have entered are %d and %i\n\n", num1, num2);

    // Taking float or fraction as input from the user
    printf("\n\nEnter a Decimal number\n");
    scanf("%f", &fraction); 
    printf("\n\nThe float or fraction that you have entered is %f", fraction);

    // Taking Character as input from the user
    printf("\n\nEnter a Character\n");
    scanf("%c",&character);
    printf("\n\nThe character that you have entered is %c", character);

    printf("\n\n\t\t\tCoding is Fun !\n\n\n");
    
    return 0;
}
    """
  },
  {
    'title': " C program to find ASCII value of Character",
    'code': """
  #include<stdio.h>

int main()
{
    printf("\n\n\t\tNeptechpal - Best place to learn\n\n\n");

    char c;
    printf("Enter a character : ");
    scanf("%c" , &c);
    printf("\n\nASCII value of %c = %d",c,c);

    printf("\n\n\t\t\tCoding is Fun !\n\n\n");
    return 0;
}
    """
  },
  {
    'title': " C program to use gets () function",
    'code': """
  #include<stdio.h>

int main()
{
    printf("\n\n\t\tNeptechpal - Best place to learn\n\n\n");

    char str[50];   // char array of size 50
    printf("Enter your complete name:\n\n\n");

    gets(str);
    printf("\n\nWelcome to Neptechpal  %s\n\n\n", str);
    printf("\n\n\t\t\tCoding is Fun !\n\n\n");
    return 0;
}
    """
  },
  {
    'title': "Basic if else condition program",
    'code': """
  #include<stdio.h>

int main()
{
    printf("\n\n\t\tNeptechpal - Best place to learn\n\n\n");

    int number;
    printf("Please enter a number:\n");
    scanf("%d",&number);
    /*
        For single statements we can skip the curly brackets
    */
    if(number < 100)
        printf("Number is less than 100!\n");
    else if(number == 100)
        printf("Number is 100!\n");
    else
        printf("Number is greater than 100!\n");

    printf("\n\n\t\t\tCoding is Fun !\n\n\n");
    
    return 0;
}
    """
  },
  {
    'title': "Switch Case with break",
    'code': """
  #include<stdio.h>

int main()
{
    printf("\n\n\t\tNeptechpal - Best place to learn\n\n\n");

    // Local Variable Definition
    char grade;
    printf("Enter your grade:\n");
    scanf("%c", &grade);

    switch(grade)
    {
        case 'A':
            printf("Excellent\n");
            break;
        case 'B':
            printf("Keep it up!\n\n");
            break;
        case 'C':
            printf("Well done\nbreak keyword takes execution to exit the switch case\n\n");
            break;
        case 'D':
            printf("You passed\n");
            break;
        case 'F':
            printf("Better luck next time\n");
            break;
        default:
            printf("Invalid grade\n");
    }
    printf("Your grade is %c\n",grade);
    printf("\n\n\t\t\tCoding is Fun !\n\n\n");
    return 0;
}
    """
  },
  {
    'title':
        " Program to check if input character is a vowel using Switch Case",
    'code': """
    #include<stdio.h>

int main()
{
    printf("\n\n\t\tNeptechpal - Best place to learn\n\n\n");

    char ch;
    printf("Input a Character :  ");
    scanf("%c", &ch);

    switch(ch)
    {
        case 'a':
        case 'A':
        case 'e':
        case 'E':
        case 'i':
        case 'I':
        case 'o':
        case 'O':
        case 'u':
        case 'U':
            printf("\n\n%c is a vowel.\n\n", ch);
            break;
        default:
            printf("%c is not a vowel.\n\n", ch);
    }
    printf("\n\n\t\t\tCoding is Fun !\n\n\n");
    return 0;
}
    

    
    
    """
  },
  {
    'title': "Program to reverse the case of input character ",
    'code': """

    #include<stdio.h>
#include<ctype.h> // to use system defined function islower & toupper

int main()
{
    printf("\n\n\t\tNeptechpal - Best place to learn\n\n\n");

    char alphabet;
    printf("Enter an alphabet : ");
    putchar('\n');  // to move to next Line

    alphabet=getchar();

    printf("\n\nReverse case of %c is :  ",alphabet);

    if(islower(alphabet))
        putchar(toupper(alphabet));

    else 
        // must be an uppercase character
        printf("%c",tolower(alphabet)) ;

    printf("\n\n\t\t\tCoding is Fun !\n\n\n");
    return 0;
}
    
    """
  },
  {
    'title': " Swapping two Numbers using a Temporary Variable",
    'code': """
    #include<stdio.h>
#include<conio.h>

void main()
{
    int x = 10, y = 15, temp;
    temp = x;
    x = y;
    y = temp;
    printf("x = %d and y = %d", x, y);
    getch();
}

    
    
    """
  },

  {
    'title':
        " Program to print the Largest and Smallest using Global Declaration",
    'code': """
    #include<stdio.h>

int a,b;
int main()
{
    printf("\n\n\t\tNeptechpal - Best place to learn\n\n\n");
    printf("\n\nEnter the two values to find the greatest and smallest number: \n");
    scanf("%d%d", &a, &b);

    if(a == b)
        printf("Both are equal\n");
        
    else if(a < b)
    {
        printf("\n\nThe largest number is %03d\n", b);
        printf("\nThe smallest number is %03d\n", a);
        printf("\nThe largest number is %03d\n", b);
    }
    else    //Only possibility remaining
    {
        printf("The largest number is %03d\n", a);
        printf("The smallest number is %03d\n", b);
    }
    printf("\n\n\t\t\tCoding is Fun !\n\n\n");
    return 0;
}

    
    
    """
  },
  {
    'title': " Basic for Loop Program",
    'code': """
    #include<stdio.h>

int main()
{
    printf("\n\n\t\tNeptechpal - Best place to learn\n\n\n");

    /* 
        Always declare the variables before using them 
    */
    int i = 0;  // declaration and initialization at the same time


    for(i = 0; i < 10; i++)
    {
        printf("i = %d\n", i);

        /*
            consequently, when i equals 10, the loop breaks.
            i is updated before the condition is checked-
            hence the value of i after exiting the loop is 10 
        */
     }

    printf("\n\The value of i after exiting the loop is %d\n\n", i);
    
    printf("\nRemember that the loop condition checks the conditional statement before it loops again.\n\n");
    
    printf("Consequently, when i equals 10, the loop breaks.\n\n");
    
    printf("i is updated before the condition is checked- hence the value of i after exiting the loop is 10 .\n\n");
    
    printf("\n\n\t\t\tCoding is Fun !\n\n\n");
    return 0;
}

    
    
    """
  },
  {
    'title': " Simple while Loop Program",
    'code': """
    #include<stdio.h>

int main()
{
    printf("\n\n\t\tNeptechpal - Best place to learn\n\n\n");

    /* 
        always declare the variables before using them 
    */
    int i = 0;  // declaration and initialization at the same time

    printf("\nPrinting numbers using while loop from 0 to 9\n\n");

    /* 
        while i is less than 10 
    */
    while(i<10)
    {
        printf("%d\n",i);

        /* 
            Update i so the condition can be met eventually 
            to terminate the loop 
        */
        i++;    // same as i=i+1;
      }
    printf("\n\n\t\t\tCoding is Fun !\n\n\n");
    return 0;
}

    
    
    """
  },
  {
    'title': " Basic do while Loop Program",
    'code': """
    #include<stdio.h>

int main()
{
    printf("\n\n\t\tNeptechpal - Best place to learn\n\n\n");

    /* 
        always declare the variables before using them 
    */
    int i = 10;     // declaration and initialization at the same time

    do // do contains the actual code and the updation
    {
        printf("i = %d\n",i);
        i = i-1;    // updation
    }
    // while loop doesn't contain any code but just the condition
    while(i > 0);
    
    printf("\n\The value of i after exiting the loop is %d\n\n", i);
    printf("\n\n\t\t\tCoding is Fun !\n\n\n");
    return 0;
}

    
    
    """
  },
  {
    'title': " Basic program to show use of nested for Loops",
    'code': """
    #include<stdio.h>

int main()
{
    printf("\n\n\t\tNeptechpal - Best place to learn\n\n\n");
    printf("\n\nNested loops are usually used to print a pattern in c. \n\n");
    printf("\n\nThey are also used to print out the matrix using a 2 dimensional array. \n\n");

    int i,j,k;
    printf("\n\nOutput of the nested loop is :\n\n");
    for(i = 0; i < 5; i++)
    {
        printf("\t\t\t\t");
        for(j = 0; j < 5; j++)
        printf("* ");

        printf("\n");
    }
    printf("\n\n\t\t\tCoding is Fun !\n\n\n");
    return 0;
}

    
    
    """
  },
  {
    'title': "Program to print Factorial of a Number ",
    'code': """
#include<stdio.h>
#include<conio.h>
void main()
{
   int fact, i, n;
   fact = 1;
   printf("Enter the number\t");
   scanf("%d" , &n);
   for(i = 1; i <= n; i++)
   {
       fact = fact*i;
   }
   printf("Factorial of %d is %d", n , fact);
   getch();
}
    
    
    """
  },
  {
    'title': "Program to print the Fibonacci Series ",
    'code': """

    #include<stdio.h>
#include<conio.h>

void fibonacci(int num);
void main()
{
    int num = 0;
    clrscr();
    printf("Enter number of terms\t");
    scanf("%d", &num);
    fibonacci(num);
    getch();
}

void fibonacci(int num)
{
   int a, b, c, i = 3;
   a = 0;
   b = 1;
   if(num == 1)
   printf("%d",a);

   if(num >= 2)
   printf("%d\t%d",a,b);

   while(i <= num)
   {
      c = a+b;
      printf("\t%d", c);
      a = b;
      b = c;
      i++;
   }
}

    
    
    """
  },
  {
    'title': " Program to check whether a Number is a Palindrome",
    'code': """
    #include<stdio.h>
#include<conio.h>

void main()
{
    int a, b, c, s = 0;
    clrscr();
    printf("Enter a number:\t");
    scanf("%d", &a);
    c = a;

   // the number is reversed inside the while loop.
   while(a > 0)
   {
      b = a%10;
      s = (s*10)+b;
      a = a/10;
   }

   // here the reversed number is compared with the given number.
   if(s == c)
   {
      printf("The number %d is a palindrome", c);
   }
   else
   {
      printf("The number %d is not a palindrome", c);
   }
  getch();
}

    
    
    """
  },
  // {
  //   'title':" ",
  //   'code':"""

  //   """
  // },
  // {
  //   'title':" ",
  //   'code':"""

  //   """
  // },
  // {
  //   'title':" ",
  //   'code':"""

  //   """
  // },
  // {
  //   'title':" ",
  //   'code':"""

  //   """
  // },
  // {
  //   'title':" ",
  //   'code':"""

  //   """
  // },
  // {
  //   'title':" ",
  //   'code':"""

  //   """
  // },
  // {
  //   'title':" ",
  //   'code':"""

  //   """
  // },
  // {
  //   'title':" ",
  //   'code':"""

  //   """
  // },
  // {
  //   'title':" ",
  //   'code':"""

  //   """
  // },
  // {
  //   'title':" ",
  //   'code':"""

  //   """
  // },
  // {
  //   'title':" ",
  //   'code':"""

  //   """
  // },
  // {
  //   'title':" ",
  //   'code':"""

  //   """
  // },
  // {
  //   'title':" ",
  //   'code':"""

  //   """
  // },
  // {
  //   'title':" ",
  //   'code':"""

  //   """
  // },
  // {
  //   'title':" ",
  //   'code':"""

  //   """
  // },
  // {
  //   'title':" ",
  //   'code':"""

  //   """
  // },
  // {
  //   'title':" ",
  //   'code':"""

  //   """
  // },
  // {
  //   'title':" ",
  //   'code':"""

  //   """
  // },
  // {
  //   'title':" ",
  //   'code':"""

  //   """
  // },
  // {
  //   'title':" ",
  //   'code':"""

  //   """
  // },
  // {
  //   'title':" ",
  //   'code':"""

  //   """
  // },
  // {
  //   'title':" ",
  //   'code':"""

  //   """
  // },
  // {
  //   'title':" ",
  //   'code':"""

  //   """
  // },
  // {
  //   'title':" ",
  //   'code':"""

  //   """
  // },
  // {
  //   'title':" ",
  //   'code':"""

  //   """
  // },
  // {
  //   'title':" ",
  //   'code':"""

  //   """
  // },
  // {
  //   'title':" ",
  //   'code':"""

  //   """
  // },
  // {
  //   'title':" ",
  //   'code':"""

  //   """
  // },
];
