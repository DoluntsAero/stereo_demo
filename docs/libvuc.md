# Libvuc

## Ссылки

[libuvc_camera](http://wiki.ros.org/libuvc_camera)

[libuvc_ros](http://wiki.ros.org/libuvc_ros)

---

## Параметры

### Адресс устройства 

```
   <param name="vendor" value="0x0c45"/>
   <param name="product" value="0x64ab"/>
```

Находиться командой

```
$ v4l2-ctl --list-formats-ext --device /dev/video'X'
```

А также индех устройства

`правая/левая`

```
<param name="index" value="0"/>
```

### Права удев для доступа к камере
---

Смотри папку `udev`

#### Копирование удев
---
```
$ cp udev/99-uvc-camera.rules /etc/udev/rules.d
```

> Потом перзагрузить

### Параметры захвата изображения
---
```
    <param name="width" value="640"/>
    <param name="height" value="480"/>
    <param name="video_mode" value="mjpeg"/>
    <param name="frame_rate" value="30"/>
```

Находиться командой

```
$ v4l2-ctl --list-formats-ext
```

### Фейм камеры
---
```
<param name="frame_id" value="camera_link"/>
```

> Указываем любой frame_id

### Настройка экспозии
---
> подбирается под каждую камеру индивидуально

```
   <param name="auto_exposure" value="0"/>
   <param name="auto_white_balance" value="true"/>
```