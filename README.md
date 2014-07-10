SWNinePatchImageFactory
=======================
Let you use 9-Patch PNG images easily on iOS.

The techinque is only to transform the 9-patch PNG images to iOS compatible, resizable UIImage objects.
See the UIImage's method resizableImageWithCapInsets:(UIEdgeInsets)insets for more info.
So it only support to stretch one segment of patch markers in both horizontal and vertical sides.

## INSTALL
Copy the files under SWNinePatchImageFactorySample/SWNinePatchImageFactory/

## USAGE
Use the SWNinePatchImageFactory class to create resizable UIImage from 9-patch PNG images.

    @interface SWNinePatchImageFactory : NSObject

    + (UIImage*)createResizableNinePatchImageNamed:(NSString*)name;
    + (UIImage*)createResizableNinePatchImage:(UIImage*)image;
    
    @end

Or directly use the SWNinePatchImageView class as the custom class in your Interface Builder,
and also put the image's filename in its image field.

You can check out the both ways in the sample project.

## LICENSE
Copyright 2014 shiami.
Licensed under the Apache License, Version 2.0.
See the LICENCE file for more info.
