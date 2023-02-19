/// Poly means many and morph means forms. Polymorphism is the ability of an
/// object to take on many forms. As humans, we have the ability to take on many
///  forms. We can be a student, a teacher, a parent, a friend, and so on.
/// Similarly, in object-oriented programming, polymorphism is the ability of
///  an object to take on many forms.
///
/// Note: In the real world, polymorphism is updating or modifying the feature,
/// function, or implementation that already exists in the parent class.
///
///
///

class Animal {
  void eat() {
    print("Animal is eating");
  }
}

class Dog extends Animal {
  @override
  void eat() {
    print("Dog is eating");
  }
}
/// Note: If you don’t write @override, the program still runs. But, 
/// it is a good practice to write @override.