# Netflix Clone Application Using Bloc 

![Logo](https://www.freepnglogos.com/uploads/netflix-logo-0.png)

## Description

This is a Netflix Clone application built using Flutter and Bloc state management. It allows users to browse  various movies and TV shows information. The app provides a similar experience to the original Netflix application, with an easy-to-use interface and a wide range of content to choose from.


## Screenshots

![Home Screen](assets/screenshots/home_screen.png)

*Home screen showcasing recommended movies and TV shows.*

![New & Hot Screen](assets/screenshots/new_and_hot_screen.png)

*New & Hot screen displaying different upcoming content.*

![Fast Laugh Screen](assets/screenshots/fast_laugh_screen.png)

*Fast Laugh screen with video scenes about the selected movie.*

![Top Search Screen](assets/screenshots/top_search_screen.png)

*Search details screen with information about the top searched movie and tv shows in list mode.*

![Search Screen](assets/screenshots/search_screen.png)

*Search details screen with information about the specific searched movie and tv shows in grid mode.*

![Download Screen](assets/screenshots/download_screen.png)

*Download screen with information about the downloaded movies and tv shows.*
## API Reference

#### Create api_key from TMDB.

#### Create a new file under `lib/presentation/api_key.dart` and replace your `api_key`

```http
  const apiKey = "YOUR_API_KEY";
```

## Appendix

#### `MultiDex` support required

So you need to enable `multiDex`

Go to `android/app/builde.gradle` and find `defaultConfig` 
section and add `multiDexEnabled true`


```
defaultConfig {
        --------------------
        --------------------
        --------------------
        --------------------
        multiDexEnabled true
    }
```

after that add `dependencies`

```
dependencies {
    implementation 'com.android.support:multidex:2.0.1'
}

```
## Deployment

To deploy this project run

```bash
  flutter pub run build_runner watch --delete-conflicting-outputs
```


## License

[MIT](https://choosealicense.com/licenses/mit/)

