import 'package:flutter/material.dart';

class ImageAnimation extends StatefulWidget {
    final String img;
     const ImageAnimation( this.img );
    @override
    _ImageAnimationState createState() => _ImageAnimationState();
  }
  
  class _ImageAnimationState extends State<ImageAnimation> with SingleTickerProviderStateMixin {
     late final AnimationController _animationController = AnimationController(vsync: this, 
     duration: const Duration(seconds: 3)
     )..repeat(reverse: true ); 
    late final Animation<Offset> _animation = Tween(
      begin: Offset.zero, 
      end: const Offset(0,0.4) 
      ).animate(CurvedAnimation(parent: _animationController, curve: Curves.bounceIn));


  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }
    
    @override
    Widget build(BuildContext context) {
      return SlideTransition(
         position: _animation ,
         child: Image.asset(widget.img),
      );
    }
  }
