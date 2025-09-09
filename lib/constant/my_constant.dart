import 'package:cartoon_app/constant/my_image.dart';
import 'package:cartoon_app/models/cartoon.dart';
import 'package:cartoon_app/models/cartoon_user.dart';

abstract class MyConstant {
  static const cartoonUser = [
    CartoonUser(title: 'Love', number: 323),
    CartoonUser(title: 'Msg', number: 23),
    CartoonUser(title: 'Poke', number: 124),
    CartoonUser(title: 'Saved', number: 78),
    CartoonUser(title: 'Web Visit', number: 14),
    CartoonUser(title: 'Profile Visit', number: 86),
    CartoonUser(title: 'Followers', number: 1200),
  ];

  static const cartoons = [
    Cartoon(
      title: '47 Ronin',
      nickname: 'A character from Japanese well-known Ancient History.',
      img: 'assets/cartoon/cartoon_img/ronin.png',
    ),
    Cartoon(
      title: 'The Joker',
      nickname: 'Fictional fantasy of a common man.',
      img: MyImage.jokerImg,
    ),
    Cartoon(
      title: 'Pam Beesley',
      nickname: 'A live character from The Office Series.',
      img: MyImage.pamImg,
    ),
    Cartoon(
      title: 'Ragetti',
      nickname: 'A Popular character from the Pirates of the Caribbean.',
      img: MyImage.zombieImg,
    ),
    Cartoon(
      title: 'Tango',
      nickname: 'Japanese warrrior form ancient history.',
      img: MyImage.tangoImg,
    ),
    Cartoon(
      title: 'Dinosaur',
      nickname: 'Fictional character from The Jungle.',
      img: MyImage.dinosaurImg,
    ),
    Cartoon(
      title: 'Jane',
      nickname: 'Jane is an actress .Known for EVIL DEAD.',
      img: MyImage.janeImg,
    ),
    Cartoon(
      title: 'Jack',
      nickname: 'Jane ia a known lousy character',
      img: MyImage.jackImg,
    ),
  ];
}
