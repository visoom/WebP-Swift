# WebP-Swift

Simple iOS Swift WebP decoder to UIImage

# Usage

#### Converting from WebP

```swift
//Example
let url = URL(string: "https://www.gstatic.com/webp/gallery3/3_webp_ll.webp")!

//Simple Usage without options
let imageWithURL = UIImage(webpWithURL: url)

//Simple Usage Example with options
let options: [String : Int32] = ["no_fancy_upsampling":1,"bypass_filtering":1,"use_threads":1]
let imageWithURLandOptions = UIImage(webpWithURL: url, andOptions: options)
```

#### Converting from different sources

```swift
//From URL
let image = UIImage(webpWithURL: URL)
let image = UIImage(webpWithURL: URL, andOptions: [String:Int32])

//From path
let image = UIImage(webpWithPath: String)
let image = UIImage(webpWithPath: String, andOptions: [String:Int32])

//From data
let image = UIImage(webpWithData: NSData)
let image = UIImage(webpWithData: NSData, andOptions: [String:Int32])
```

Credits
========
* WebP Library by [Google](https://developers.google.com/speed/webp/download "libwebp")
* "PNG transparency demonstration" photo licensed under the [Creative Commons Attribution-Share Alike 3.0 Unported](https://en.wikipedia.org/wiki/Creative_Commons "Creative Commons Attribution-Share Alike 3.0 Unported") license by POV-Ray source code.
