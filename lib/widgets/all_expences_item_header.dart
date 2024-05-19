import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpencesItemHeader extends StatelessWidget {
  const AllExpencesItemHeader({
    super.key,
    required this.image,
    required this.isSelected,
  });
  final String image;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                // padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isSelected
                        ? const Color(0xffffffff).withOpacity(0.1)
                        : const Color(0xffFAFAFA)),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                        isSelected ? Colors.white : const Color(0xff4EB7F2),
                        BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
        Icon(
          size: 20,
          Icons.arrow_forward_ios,
          color: isSelected ? Colors.white : const Color(0xff064061),
        )
      ],
    );
  }
}
