class CosineInterpolator extends Interpolator2x2
{   
   CosineInterpolator(int horizontalSamples, int verticalSamples, int horizontalMultiplier, int verticalMultiplier)
   {
      super(horizontalSamples, verticalSamples, horizontalMultiplier, verticalMultiplier, "cosine interpolation");
   }
  
   double interp_func(double a, double b, float f)
   {
      double f2 = (1.0-cos(f*PI))/2.0;
      return a*(1.0-f2) + b*f2;
   }
}