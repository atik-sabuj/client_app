import 'package:client_app/models/product_features.dart';
import 'package:flutter/material.dart';


showFeaturesList() {
  return SizedBox(
    height: 220,
    child: ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(8),
      itemCount: featuresList.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Card(

              child: Container(
                height: 180,
                width: 220,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              featuresList[index].image.toString(),
                              height: 80.0,
                              // width: 180.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                        width: 220,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(featuresList[index].name.toString()),
                            const SizedBox(width: 8,),
                            Text(featuresList[index].age.toString()),

                          ],
                        ),
                      ),
                      Text(featuresList[index].price.toString()),
                      Text(featuresList[index].location.toString()),
                      //featuresList[index].isFavorite==true ? Icon(Icons.ac_unit_sharp) : SizedBox(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      }, separatorBuilder: (BuildContext context, int index) {
      return const Divider(
        height: 8,
        color: Colors.grey,
      );
    },
    ),
  );
}