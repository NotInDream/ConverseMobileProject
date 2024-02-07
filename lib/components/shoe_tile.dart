import 'package:flutter/material.dart';

import '../models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({
    super.key,
    required this.shoe,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        //shoe pic
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(shoe.imagePath),
        ),

        //desc
        Text(
          shoe.desc,
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        //price+details
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // shoe nama
                  Text(
                    shoe.nama,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 1),

                  // shoe price
                  Text(
                    shoe.harga,
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              // plus button
              GestureDetector(
                onTap: onTap,
                child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12))),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
