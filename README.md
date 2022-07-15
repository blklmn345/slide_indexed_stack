A IndexedStack with switching animation

![](https://user-images.githubusercontent.com/20367556/179158647-bc251b1f-b03b-4299-927b-5785f11c46c4.gif)


## Usage

The usage is just like the normal IndexedStack.

```dart
int _currentIndex = 0;
```

```dart
SlideIndexedStack(
  axis: Axis.horizontal,
  slideOffset: 0.5,
  index: _currentIndex,
  duration: const Duration(milliseconds: 300),
  children: [
    _buildPage(0),
    _buildPage(1),
    _buildPage(2),
    _buildPage(3),
    _buildPage(4)
  ],
)
```
