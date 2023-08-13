import 'package:getter_setter/getter_setter.dart' as getter_setter;

void main(List<String> arguments) {

  Student s1=Student();
  s1.id=10; //calling default setter
  s1.name="Sabbir";//calling default setter
  print(s1.id);//calling default getter
  print(s1.name);//calling default getter


  //for custom getter and setter
  Teacher t1=Teacher();
  t1.percentage=400.0;
  print(t1.percentage);


  //for private
  GetRoll g1=GetRoll();
  //g1._roll=30;
  print(g1._roll);


  //Validate
  Validate v1=Validate();
  v1.SetRoll=32;
  print(v1.GetRoll);

}


//default getter and  setter

class Student
{
  int id=0; //instance variable
  String name= " "; //instance variable



}



//Custom getter and setter

class Teacher
{
  double percent=0.0;

  set percentage(double marks)
  {
    percent=(marks/500) *100;

  }
 double get percentage
  {


    return percent;
  }




}



//used to access private variable
class GetRoll
{
  int _roll=10;

  set setRoll(int number)
  {
    _roll=number;


  }

  int get getRoll=> _roll;


}

//used to validate variable
class Validate
{
  int? roll1;
  set SetRoll(int number)
  {

    if(number<0)
    {

       roll1=0;
    }

    else
    {


      roll1=number;
    }


  }

  int? get GetRoll=> roll1;





}