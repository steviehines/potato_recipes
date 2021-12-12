import 'package:flutter/material.dart';
import 'package:potato_foods/components/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class TLCard extends StatelessWidget {
  const TLCard({
    Key? key,
    required this.screenSize,
    this.name,
    this.description,
    required this.borderRadi,
    this.image,
  }) : super(key: key);

  final String? name, description, image;
  final double borderRadi;
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: ConstAnts.nearlyWhite.withOpacity(0.6),
            offset: const Offset(4, 4),
            blurRadius: 7,
          ),
        ],
      ),
      child: ClipRRect(
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(borderRadi),
        child: Stack(
          fit: StackFit.expand,
          children: [
            _buildEventImage(context),
            _buildGradient(),
            _buildBottom(borderRadi),
            _buildEventDescription(),
          ],
        ),
      ),
    );
  }

  Widget _buildEventImage(BuildContext context) {
    return Image.asset(
      image!,
      fit: BoxFit.cover,
    );
    // FancyShimmerImage(
    //   imageUrl: image!,
    //   shimmerHighlightColor: nearlyWhite.withOpacity(.5),
    //   shimmerBaseColor: Colors.white,
    //   shimmerBackColor: Colors.white,
    //   shimmerDuration: Duration(milliseconds: 2100),
    //   errorWidget: Container(
    //     color: Colors.white,
    //     child: Center(
    //       child: Image.asset(
    //         'assets/images/dev2.png',
    //         fit: BoxFit.cover,
    //         width: 33,
    //         height: 33,
    //       ),
    //     ),
    //   ),
    // );
  }

  Widget _buildGradient() {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.transparent,
              ConstAnts.darkText.withOpacity(0.5),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.6, 0.95],
          ),
        ),
      ),
    );
  }

  Widget _buildEventDescription() {
    return Positioned(
      left: 15,
      bottom: 21,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name!,
            style: GoogleFonts.varelaRound(
              textStyle: const TextStyle(
                fontSize: 23,
                color: ConstAnts.nearlyWhite,
                fontWeight: FontWeight.bold,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 0.9,
                    color: ConstAnts.darkText,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 21,
          ),
          Text(
            description!,
            style: GoogleFonts.varelaRound(
              textStyle: const TextStyle(
                fontSize: 16,
                color: ConstAnts.nearlyWhite,
                fontWeight: FontWeight.bold,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 0.9,
                    color: ConstAnts.darkText,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottom(double borderRadius) {
    return Positioned(
      left: 1,
      right: 1,
      bottom: 1,
      child: Card(
        color: ConstAnts.darkText.withOpacity(.2),
        elevation: 5,
        shadowColor: ConstAnts.darkText,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius),
          ),
        ),
        child: const SizedBox(
          height: 99,
        ),
      ),
    );
  }
}
