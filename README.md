SWNinePatchImageFactory
=======================

Let you use 9-Patch PNG images easily on iOS.

The techinque is only to transform the 9-patch PNG images to iOS compatible, resizable UIImage objects.
See the UIImage's method resizableImageWithCapInsets:(UIEdgeInsets)insets for more info.
So it only support to stretch one segment of patch markers in both horizontal and vertical sides.


USAGE
=======================

Use the SWNinePatchImageFactory class to create resizable UIImage from 9-patch PNG images.

    @interface SWNinePatchImageFactory : NSObject

    + (UIImage*)createResizableNinePatchImageNamed:(NSString*)name;
    + (UIImage*)createResizableNinePatchImage:(UIImage*)image;
    
    @end

Or directly use the SWNinePatchImageView class as the custom class in your Interface Builder,
and also put the image's filename in its image field.

LICENSE
=======================

Copyright 2014 shiami

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
