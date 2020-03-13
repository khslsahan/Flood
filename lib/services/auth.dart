import 'package:firebase_auth/firebase_auth.dart';
import 'package:god_plans/models/user.dart';

class AuthServices{

  final  FirebaseAuth _auth = FirebaseAuth.instance;

  // create user use object based on Firebase user use
  int x =1;
    User _userFromFireBaseUser(FirebaseUser user){
    //  if(x==1) {
     //   x++;
        return user != null ? User(uid: user.uid) : null;
     // }
    //  else{
     //   return user == null ? User(uid: user.uid) : null;
      //}
    }

    // auth change user stream
    Stream<User> get user{
      return _auth.onAuthStateChanged
          .map((FirebaseUser user) => _userFromFireBaseUser(user));
      //same mening
      //.map(_userFromFireBaseUser);
    }


  //firebase anonymous


  Future signInAnon() async {
    try{
         AuthResult result =  await _auth.signInAnonymously();
         FirebaseUser user = result.user;
         return  _userFromFireBaseUser(user);
    }catch(e){
      print(e.toString());
      return null;
    }

  }


  // sing in email pwd
  Future signInWithEmailAndPassword(String email , String password) async {
    try{
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      return  _userFromFireBaseUser(user);
    }catch(e){
      print(e.toString());
      return null;
    }

  }



  // sign up email pwd

      Future registerWithEmailAndPassword(String email , String password) async {
          try{
            AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
            FirebaseUser user = result.user;
            return  _userFromFireBaseUser(user);
          }catch(e){
            print(e.toString());
            return null;
          }

      }





  //log out

  Future signOut() async {
       try{
         return await _auth.signOut();
       }catch(e){
         print(e.toString());
         return null;
       }
  }



}