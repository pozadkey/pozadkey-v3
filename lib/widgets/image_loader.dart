import 'package:pozadkey_v3/shared/index.dart';

class ImageLoader extends StatelessWidget {
  final String imagePath;
  final String title;

  const ImageLoader({
    super.key,
    required this.imagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    if (imagePath.isEmpty) {
      return _buildFallbackImage(context);
    }
    return _buildImageWithLoader(context);
  }

  Widget _buildFallbackImage(BuildContext context) {
    return Container(
      decoration: _containerDecoration(),
      height: 250,
      child: Center(
        child: _buildText(context),
      ),
    );
  }

  Widget _buildImageWithLoader(BuildContext context) {
    return FutureBuilder(
      future: _preloadImage(context, imagePath),
      builder: (context, snapshot) {
        return Container(
          decoration: _containerDecoration(
            image: snapshot.connectionState == ConnectionState.done
                ? DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  )
                : null,
          ),
          height: 250,
          width: double.infinity,
          alignment: Alignment.center,
          child: snapshot.connectionState != ConnectionState.done
              ? _buildLoadingIndicator()
              : _buildText(context),
        );
      },
    );
  }

  BoxDecoration _containerDecoration({DecorationImage? image}) {
    return BoxDecoration(
      color: Colors.black,
      image: image,
      borderRadius: BorderRadius.circular(3.0),
      border: Border.all(color: Colors.grey.shade800),
    );
  }

  Widget _buildText(BuildContext context) {
    return Text(
      imagePath.isEmpty ? title : '',
      style: Theme.of(context).textTheme.displaySmall!.copyWith(
        color: Colors.white,
        fontSize: 24,
        shadows: [
          Shadow(
            offset: const Offset(0, 1),
            blurRadius: 5,
            color: Colors.black.withValues(alpha: 0.5),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildLoadingIndicator() {
    return CircularProgressIndicator(
      backgroundColor: PrimaryButtonColors.textColor,
      color: PrimaryButtonColors.bgColor,
    );
  }

  Future<void> _preloadImage(BuildContext context, String path) async {
    await precacheImage(AssetImage(path), context);
  }
}
