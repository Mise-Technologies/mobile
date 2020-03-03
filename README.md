# Mise mobile app

```
lib
├── components            // Smaller widgets (blocks etc.)
├── models                // Model (as the M in MVVM and perhaps DAO related ones)
└── screens               // Basic screens of the app
```

Refer to Code Gen Stuff for additional installation instructions before exec'ing 
```sh
flutter run
```


## Code Gen Stuff
* Go to [codegen directory](codegen/)
* Since *.csv files are git-ignored in the directory, add the menu csv file and name it "bacari-menu.csv"
* run `python gen.py` and `/lib/data.dart` will be regenerated
