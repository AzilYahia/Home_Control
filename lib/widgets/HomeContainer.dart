import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';


class HomeContainer extends StatefulWidget {
  int index;
  IconData? icon;
  String text ;
  String? additionalText = "";
  HomeContainer(
      {Key? key,
      required this.index,
      required this.icon,
      required this.text,
      this.additionalText
      })
      : super(key: key);

  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  bool containerState = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: containerState
              ? kLightestBlue
              : lightColorScheme.secondaryContainer,
          borderRadius: BorderRadius.circular(43)),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 25, bottom: 0, left: 15, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Icon(
                      widget.icon ?? Icons.hourglass_empty ,
                      size: 30,
                      color: containerState
                          ? kBlue
                          : lightColorScheme.tertiary,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        widget.text ?? "Empty Item.",
                        overflow: TextOverflow.fade,
                        maxLines: 2,
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            color: containerState
                                ? kBlue
                                : lightColorScheme.tertiary),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Center(
              child: Text(
                widget.additionalText ?? "",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: GoogleFonts.poppins(
                    fontSize: 17,
                    color: containerState
                        ? kBlue
                        : lightColorScheme.tertiary),
              ),
            ),
            IconButton(onPressed: () {
              setState(() {
                containerState = !containerState;
              });
            }, icon: Icon(
              containerState
                  ? Icons.toggle_on_outlined
                  : Icons.toggle_off_outlined,
              size: 50,
              color: containerState
                  ? kBlue
                  : lightColorScheme.tertiary,
            ),)

          ],
        ),
      ),
    );
  }
}
