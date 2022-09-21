# Persian colors رنگهای ایرانی
There are colors whose various shades have long been used in Persian arts including carpet weaving, pottery and tessellation. They are known as Persian colors (e.g. [Persian Blue](https://en.wikipedia.org/wiki/Persian_blue)) and can be used in creating color palettes.

<p dir="rtl">
این رنگها از دیرباز، در هنرهای گوناگون ایرانی از جمله قالی‌بافی، سفالگری و کاشی‌کاری، به کار رفته‌اند و در دنیا با نام «ایرانی» شناخته می‌شوند. خوب است از آنها در طراحیها استفاده کنیم. 
</p>

## Palette
![Persian Colors](https://github.com/alijsh/persian-colors/blob/9d9e29df001353acce48d7bf15be91d4af3c8522/persian-colors.png)

## As CSS variables

```css
:root {
  --PersianBlue       : #1c39bb;
  --MediumPersianBlue : #0067a5;
  --PersianIndigo     : #32127a;
  --PersianPink       : #f77fbe;
  --PersianRose       : #fe28a2;
  --PersianRed        : #cc3333;
  --PersianGreen      : #00a693;
  --PersianOrange     : #d99058;
  --PersianPlum       : #701c1c;
}
```

## As Sass variables

```sass
$PersianBlue       : #1c39bb;
$MediumPersianBlue : #0067a5;
$PersianIndigo     : #32127a;
$PersianPink       : #f77fbe;
$PersianRose       : #fe28a2;
$PersianRed        : #cc3333;
$PersianGreen      : #00a693;
$PersianOrange     : #d99058;
$PersianPlum       : #701c1c;
```


## As Matlab Virables

```matlab
PersianBlue=[0.109804,0.223529,0.733333];
MediumPersianBlue=[0,0.403922,0.647059];
PersianIndigo=[0.196078,0.0705882,0.478431];
PersianPink=[0.968627,0.498039,0.745098];
PersianRose=[0.996078,0.156863,0.635294];
PersianRed=[0.784314,0.113725,0.0666667];
PersianGreen=[0,0.65098,0.576471];
PersianOrange=[0.85098,0.564706,0.345098];
PersianPlum=[0.439216,0.109804,0.109804];
```

or you can set the default color order
``` matlab
load("persian_colormap.mat","persian_colormap");
set(0,DefaultAxesColorOrder=persian_colormap);
```
