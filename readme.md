Features
========

* Drop-in image view replacement that loads from remote URLs asynchronously
* Support for image views created in interface builder
* Support for MIME type validation
* Optional delegate protocol for relaying image, errors, etc
* Shows activity indicatior during download
* Fully supports caching via NSURLConnection
* Well-documented code makes for easy extension
* Free!


Usage
=====

The code is well-documented so you should be able to tell what's going on rather quickly. Here's how to implement the control:

1. Add the files under the component's `source` directory to your project.
2. Import the components header into your header or implementation.
3. Create an instance of JBAsyncImageView using the initializer.
4. That's it!

```
NSURL *urlToLoad = [NSURL URLWithString:@"http://f.cl.ly/items/3T0V0w0G3D0Q411k1p1n/congrats.png"];
JBAsyncImageView *asyncImageView = [[JBAsyncImageView alloc] initWithURL:urlToLoad];
[self.view addSubview:asyncImageView];
```

For those using interface builder, the technique is a bit simpler:

1. Create the image view in IB.
2. Set the class to JBAsyncImageView
3. In your view controller:

```
asyncImageView.imageURL = [NSURL URLWithString:@"http://f.cl.ly/items/3T0V0w0G3D0Q411k1p1n/congrats.png"];
```
    
Protocol Implementation
=======================

The `JBAsyncImageViewDelegate` protocol should be implemented to handle errors generated from the control. The following protocol definitions are available:

Called prior to beginning download of the image (optional)<br>
`-(void)imageView:(JBAsyncImageView *)sender willLoadImageFromURL:(NSURL *)urlToLoad;`

Called when the download fails for various reasons (optional)<br>
`-(void)imageView:(JBAsyncImageView *)sender failedLoadingImageFromURL:(NSURL *)url withError:(NSError *)error;`

Called once the download completes successfully (optional)<br>
`-(void)imageView:(JBAsyncImageView *)sender loadedImage:(UIImage *)imageLoaded fromURL:(NSURL *)url;`
    

Example
=======

A working example is provided in the project's source.


License
=======

MIT/X11 Open Source License


Contributing
============

1. Fork it!
2. Make your changes in a new branch
3. Submit a pull request