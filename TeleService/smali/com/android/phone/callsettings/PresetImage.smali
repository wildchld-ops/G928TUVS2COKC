.class public Lcom/android/phone/callsettings/PresetImage;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "PresetImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;,
        Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;
    }
.end annotation


# static fields
.field public static final THUMBNAIL_PROJECTION_VIDEOS:[Ljava/lang/String;

.field public static mUriCamera:Landroid/net/Uri;

.field public static mUriVideos:Landroid/net/Uri;


# instance fields
.field private final MAX_OUTPUT_X:I

.field private final MAX_OUTPUT_Y:I

.field private final REQUEST_ATTACH_PHOTO_FROM_CAMERA:I

.field private final REQUEST_ATTACH_VIDEO_FROM_CAMERA:I

.field private final REQUEST_PICK_PHOTO_FROM_GALLERY:I

.field private final REQUEST_PICK_VIDEO_FROM_GALLERY:I

.field private final REQUSET_DEFAULT_IMAGE:I

.field private btnChangePreset:Landroid/widget/Button;

.field changeDialog:Landroid/app/AlertDialog;

.field isVideoContents:Z

.field private mCallerImageAlertChanged:[Ljava/lang/String;

.field private mCallerImageAlertDefault:[Ljava/lang/String;

.field private mImageButton:Landroid/widget/ImageView;

.field outputX:I

.field outputY:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/callsettings/PresetImage;->THUMBNAIL_PROJECTION_VIDEOS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    const/16 v0, 0x31

    iput v0, p0, Lcom/android/phone/callsettings/PresetImage;->REQUSET_DEFAULT_IMAGE:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/android/phone/callsettings/PresetImage;->REQUEST_PICK_PHOTO_FROM_GALLERY:I

    const/16 v0, 0x33

    iput v0, p0, Lcom/android/phone/callsettings/PresetImage;->REQUEST_PICK_VIDEO_FROM_GALLERY:I

    const/16 v0, 0x34

    iput v0, p0, Lcom/android/phone/callsettings/PresetImage;->REQUEST_ATTACH_PHOTO_FROM_CAMERA:I

    const/16 v0, 0x35

    iput v0, p0, Lcom/android/phone/callsettings/PresetImage;->REQUEST_ATTACH_VIDEO_FROM_CAMERA:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/PresetImage;->isVideoContents:Z

    const/16 v0, 0x16e

    iput v0, p0, Lcom/android/phone/callsettings/PresetImage;->MAX_OUTPUT_X:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/phone/callsettings/PresetImage;->MAX_OUTPUT_Y:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/PresetImage;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/PresetImage;->mCallerImageAlertChanged:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/callsettings/PresetImage;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/callsettings/PresetImage;->checkRemainingSize()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/android/phone/callsettings/PresetImage;J)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/PresetImage;->recordVideo(J)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/PresetImage;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/PresetImage;->mCallerImageAlertDefault:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/PresetImage;Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/PresetImage;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/PresetImage;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/callsettings/PresetImage;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/PresetImage;->updateDefaultImageTTS(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/PresetImage;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/PresetImage;->pickImageFromGallery()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/callsettings/PresetImage;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/PresetImage;->capturePicture()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/callsettings/PresetImage;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/PresetImage;->pickVideoFromGallery()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private capturePicture()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private checkRemainingSize()J
    .locals 12

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v6, Landroid/os/StatFs;

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v10, v10

    mul-long v2, v8, v10

    const-wide/16 v0, 0x0

    mul-long v8, v2, v0

    sub-long v4, v2, v8

    const-string v8, "PresetImage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checked sizeLimit is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4
.end method

.method private checkVideo(Landroid/net/Uri;)Z
    .locals 9

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "PresetImage"

    const-string v3, "ContentResolver is null"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/phone/callsettings/PresetImage;->THUMBNAIL_PROJECTION_VIDEOS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v8, 0x1

    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    const-string v2, "PresetImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Result of video validation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v8

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    :catch_0
    move-exception v7

    const-string v2, "PresetImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getCropImage()Landroid/content/Intent;
    .locals 10

    const/16 v9, 0x16e

    const/16 v8, 0x12c

    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.camera.action.CROP"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/android/phone/callsettings/PresetImage;->mUriCamera:Landroid/net/Uri;

    const-string v7, "image/*"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "crop"

    const-string v7, "true"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "aspectX"

    iget v7, p0, Lcom/android/phone/callsettings/PresetImage;->outputX:I

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "aspectY"

    iget v7, p0, Lcom/android/phone/callsettings/PresetImage;->outputY:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "outputX"

    iget v7, p0, Lcom/android/phone/callsettings/PresetImage;->outputX:I

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "outputY"

    iget v7, p0, Lcom/android/phone/callsettings/PresetImage;->outputY:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v4, Ljava/io/File;

    const-string v6, "data/data/com.android.phone/files/preset_photo.jpg"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v5, 0x2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "preset_photo.jpg"

    invoke-virtual {v6, v7, v5}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v6, "output"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v6, "outputFormat"

    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v7}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "return-data"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const-string v6, "IOException"

    const-string v7, "e"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private overlay(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, p1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, p2, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method private pickImageFromGallery()Landroid/content/Intent;
    .locals 11

    const/16 v10, 0x16e

    const/16 v9, 0x12c

    const/4 v8, 0x1

    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.PICK"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.sec.android.gallery3d"

    const-string v7, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x8000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v6, "image/*"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "crop"

    const-string v7, "true"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "aspectX"

    iget v7, p0, Lcom/android/phone/callsettings/PresetImage;->outputX:I

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "aspectY"

    iget v7, p0, Lcom/android/phone/callsettings/PresetImage;->outputY:I

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "outputX"

    iget v7, p0, Lcom/android/phone/callsettings/PresetImage;->outputX:I

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "outputY"

    iget v7, p0, Lcom/android/phone/callsettings/PresetImage;->outputY:I

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v4, Ljava/io/File;

    const-string v6, "data/data/com.android.phone/files/preset_photo.jpg"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v5, 0x2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "preset_photo.jpg"

    invoke-virtual {v6, v7, v5}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v6, "output"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v6, "outputFormat"

    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v7}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "return-data"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const-string v6, "IOException"

    const-string v7, "e"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private pickVideoFromGallery()Landroid/content/Intent;
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "only3gp"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "senderIsVideoCall"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private recordVideo(J)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.sizeLimit"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "videocall_preset"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private setImage(Landroid/graphics/Bitmap;)V
    .locals 6

    move-object v2, p1

    const-string v3, "PresetImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set the Image, the selcted photo is = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "data/data/com.android.phone/files/preset_photo.jpg"

    const-string v0, "photo"

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preset_path"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preset_name"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private setVideo(Ljava/lang/String;)V
    .locals 18

    const-string v3, "PresetImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set the Video, the selcted video is = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v3, "PresetImage"

    const-string v4, "ContentResolver is null"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-wide/16 v16, -0x1

    :try_start_0
    sget-object v3, Lcom/android/phone/callsettings/PresetImage;->mUriVideos:Landroid/net/Uri;

    sget-object v4, Lcom/android/phone/callsettings/PresetImage;->THUMBNAIL_PROJECTION_VIDEOS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_2
    :goto_1
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput v3, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x1

    move-wide/from16 v0, v16

    invoke-static {v3, v0, v1, v4, v11}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_3

    const/4 v3, 0x0

    const/16 v4, 0x1d

    const/16 v5, 0x90

    const/16 v6, 0x76

    invoke-static {v14, v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v14

    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/callsettings/PresetImage;->outputX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/callsettings/PresetImage;->outputY:I

    const/4 v5, 0x1

    invoke-static {v14, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v14

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/PresetImage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "preset_video.jpg"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v10

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x4b

    invoke-virtual {v14, v3, v4, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string v13, "data/data/com.android.phone/files/preset_video.jpg"

    const-string v12, "video"

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preset_path"

    invoke-static {v3, v4, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preset_name"

    invoke-static {v3, v4, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preset_video_path"

    move-object/from16 v0, p1

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v9

    :try_start_3
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    const-string v3, "IOException"

    const-string v4, "e"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "Exception casued by thumnail operation"

    const-string v4, "e"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_2
    move-exception v9

    const-string v3, "PresetImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception is  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private startActivityForResultWrapper(Landroid/content/Intent;I)V
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/callsettings/PresetImage;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const v1, 0x7f0a0648

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/PresetImage;->displayToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateDefaultImageTTS(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageView;

    const v2, 0x7f0a037d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageView;

    const v2, 0x7f0a0388

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updatePresetImage()V
    .locals 15

    const-string v12, "PresetImage"

    const-string v13, "updatePresetImage()"

    invoke-static {v12, v13}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "preset_path"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "preset_name"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v3, "data/data/com.android.phone/files/preset_defaultimage.jpg"

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v12, 0x7f0200c9

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v2

    :try_start_1
    new-instance v4, Ljava/io/File;

    const-string v12, "data/data/com.android.phone/files/preset_defaultimage.jpg"

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "preset_defaultimage.jpg"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v7

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v12

    new-array v0, v12, [B

    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    const/4 v12, 0x0

    invoke-virtual {v7, v0, v12, v11}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_1
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_1
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_3
    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_2

    move-object v10, v3

    const-string v9, "preset_default"

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "preset_name"

    invoke-static {v12, v13, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "preset_path"

    invoke-static {v12, v13, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v12, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageView;

    const v13, 0x7f02003d

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v12, 0x1

    invoke-direct {p0, v12}, Lcom/android/phone/callsettings/PresetImage;->updateDefaultImageTTS(Z)V

    :goto_4
    return-void

    :catch_1
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    :catch_2
    move-exception v1

    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_4
    move-exception v1

    const-string v12, "PresetImage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error::Can\'t find drawable: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "preset_name"

    invoke-static {v12, v13, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "preset_path"

    invoke-static {v12, v13, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020126

    invoke-static {v12, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    iget-boolean v12, p0, Lcom/android/phone/callsettings/PresetImage;->isVideoContents:Z

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageView;

    invoke-direct {p0, v6, v8}, Lcom/android/phone/callsettings/PresetImage;->overlay(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v12, 0x0

    invoke-direct {p0, v12}, Lcom/android/phone/callsettings/PresetImage;->updateDefaultImageTTS(Z)V

    goto :goto_4

    :cond_3
    invoke-virtual {v10, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_4

    iget-object v12, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageView;

    const v13, 0x7f02003d

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v12, 0x1

    invoke-direct {p0, v12}, Lcom/android/phone/callsettings/PresetImage;->updateDefaultImageTTS(Z)V

    goto :goto_4

    :cond_4
    iget v12, p0, Lcom/android/phone/callsettings/PresetImage;->outputX:I

    if-lez v12, :cond_5

    iget v12, p0, Lcom/android/phone/callsettings/PresetImage;->outputY:I

    if-lez v12, :cond_5

    iget v12, p0, Lcom/android/phone/callsettings/PresetImage;->outputX:I

    iget v13, p0, Lcom/android/phone/callsettings/PresetImage;->outputY:I

    const/4 v14, 0x1

    invoke-static {v6, v12, v13, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_5
    iget-object v12, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageView;

    invoke-virtual {v12, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v12, 0x0

    invoke-direct {p0, v12}, Lcom/android/phone/callsettings/PresetImage;->updateDefaultImageTTS(Z)V

    goto/16 :goto_4
.end method


# virtual methods
.method public displayToast(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const/4 v8, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string v6, "PresetImage"

    const-string v7, "onActivityResult"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p2, v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v6, "PresetImage"

    const-string v7, "Return value from GALLERY (extras) is null"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    if-ne p2, v8, :cond_0

    const-string v6, "selected"

    invoke-virtual {p3, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/PresetImage;->startChooseActivityByGridView(I)V

    goto :goto_0

    :cond_2
    const-string v6, "data"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/PresetImage;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    sput-object v6, Lcom/android/phone/callsettings/PresetImage;->mUriCamera:Landroid/net/Uri;

    const-string v6, "PresetImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mUriCamera by REQUEST_ATTACH_PHOTO_FROM_CAMERA : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/phone/callsettings/PresetImage;->mUriCamera:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/callsettings/PresetImage;->getCropImage()Landroid/content/Intent;

    move-result-object v0

    const/16 v6, 0x32

    :try_start_0
    invoke-virtual {p0, v0, v6}, Lcom/android/phone/callsettings/PresetImage;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const v6, 0x7f0a0648

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/PresetImage;->displayToast(Ljava/lang/String;)V

    const-string v6, "PresetImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No activity found for intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    sput-object v6, Lcom/android/phone/callsettings/PresetImage;->mUriVideos:Landroid/net/Uri;

    const-string v6, "PresetImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mUriVideos by REQUEST_PICK_VIDEO_FROM_GALLERY : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/phone/callsettings/PresetImage;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PresetImage;->setVideo(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    sput-object v6, Lcom/android/phone/callsettings/PresetImage;->mUriVideos:Landroid/net/Uri;

    const-string v6, "PresetImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mUriVideos by REQUEST_ATTACH_VIDEO_FROM_CAMERA : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/phone/callsettings/PresetImage;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PresetImage;->setVideo(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x32 -> :sswitch_0
        0x33 -> :sswitch_3
        0x34 -> :sswitch_2
        0x35 -> :sswitch_4
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "PresetImage"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "PresetImage"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const v9, 0x7f0400bc

    invoke-virtual {p1, v9, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f1001ef

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageView;

    if-eqz p3, :cond_3

    const-string v9, "bitmapXY"

    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v9, "outputX"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/phone/callsettings/PresetImage;->outputX:I

    const-string v9, "outputY"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/phone/callsettings/PresetImage;->outputY:I

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0200c9

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v4

    :try_start_1
    new-instance v5, Ljava/io/File;

    const-string v9, "data/data/com.android.phone/files/preset_defaultimage.jpg"

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "preset_defaultimage.jpg"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v7

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v9

    new-array v2, v9, [B

    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v9, -0x1

    if-eq v1, v9, :cond_1

    invoke-virtual {v7, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_2
    :goto_2
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_3
    return-object v8

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d00f7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Lcom/android/phone/callsettings/PresetImage;->outputX:I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d00f8

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Lcom/android/phone/callsettings/PresetImage;->outputY:I

    iget v9, p0, Lcom/android/phone/callsettings/PresetImage;->outputX:I

    rem-int/lit8 v9, v9, 0x2

    if-ne v9, v11, :cond_4

    iget v9, p0, Lcom/android/phone/callsettings/PresetImage;->outputX:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/phone/callsettings/PresetImage;->outputX:I

    :cond_4
    iget v9, p0, Lcom/android/phone/callsettings/PresetImage;->outputY:I

    rem-int/lit8 v9, v9, 0x2

    if-ne v9, v11, :cond_5

    iget v9, p0, Lcom/android/phone/callsettings/PresetImage;->outputY:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/phone/callsettings/PresetImage;->outputY:I

    :cond_5
    const-string v9, "PresetImage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Width, outputX = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/phone/callsettings/PresetImage;->outputX:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "PresetImage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Height, outputY = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/phone/callsettings/PresetImage;->outputY:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception v3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v3

    :try_start_7
    invoke-virtual {v3}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v3

    const-string v9, "PresetImage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error::Can\'t find drawable: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/PresetImage;->changeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/PresetImage;->changeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/PresetImage;->changeDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 10

    const v9, 0x7f0a0386

    const v8, 0x7f0a0385

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    const-string v2, "PresetImage"

    const-string v3, "onResume()"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/phone/callsettings/PresetImage;->isVideoContents:Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preset_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preset_video_path"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/phone/callsettings/PresetImage;->mUriVideos:Landroid/net/Uri;

    :cond_0
    sget-object v2, Lcom/android/phone/callsettings/PresetImage;->mUriVideos:Landroid/net/Uri;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/phone/callsettings/PresetImage;->mUriVideos:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PresetImage;->checkVideo(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "PresetImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUriVideos in onResume :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/phone/callsettings/PresetImage;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/android/phone/callsettings/PresetImage;->isVideoContents:Z

    :cond_1
    :goto_0
    const-string v2, "rearrange_preset_image_setting"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/callsettings/PresetImage;->mCallerImageAlertChanged:[Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const v3, 0x7f0a037d

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    iput-object v2, p0, Lcom/android/phone/callsettings/PresetImage;->mCallerImageAlertChanged:[Ljava/lang/String;

    :cond_2
    iget-object v2, p0, Lcom/android/phone/callsettings/PresetImage;->mCallerImageAlertDefault:[Ljava/lang/String;

    if-nez v2, :cond_3

    new-array v2, v7, [Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iput-object v2, p0, Lcom/android/phone/callsettings/PresetImage;->mCallerImageAlertDefault:[Ljava/lang/String;

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->setListener()V

    invoke-direct {p0}, Lcom/android/phone/callsettings/PresetImage;->updatePresetImage()V

    iget-object v2, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/phone/callsettings/PresetImage;->isVideoContents:Z

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/phone/callsettings/PresetImage;->isVideoContents:Z

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    const-string v2, "PresetImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clickable attr. in onResume() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->isClickable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preset_path"

    const-string v4, "data/data/com.android.phone/files/preset_defaultimage.jpg"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preset_name"

    const v4, 0x7f0a0257

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/phone/callsettings/PresetImage;->mCallerImageAlertChanged:[Ljava/lang/String;

    if-nez v2, :cond_6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const v3, 0x7f0a037d

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x3

    const v4, 0x7f0a037c

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const v4, 0x7f0a0379

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/android/phone/callsettings/PresetImage;->mCallerImageAlertChanged:[Ljava/lang/String;

    :cond_6
    iget-object v2, p0, Lcom/android/phone/callsettings/PresetImage;->mCallerImageAlertDefault:[Ljava/lang/String;

    if-nez v2, :cond_3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const v3, 0x7f0a037c

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x3

    const v4, 0x7f0a0379

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/android/phone/callsettings/PresetImage;->mCallerImageAlertDefault:[Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "outputX"

    iget v2, p0, Lcom/android/phone/callsettings/PresetImage;->outputX:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "outputY"

    iget v2, p0, Lcom/android/phone/callsettings/PresetImage;->outputY:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "bitmapXY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/phone/callsettings/PresetImage$1;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/PresetImage$1;-><init>(Lcom/android/phone/callsettings/PresetImage;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1001f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/callsettings/PresetImage;->btnChangePreset:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/phone/callsettings/PresetImage;->btnChangePreset:Landroid/widget/Button;

    new-instance v1, Lcom/android/phone/callsettings/PresetImage$2;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/PresetImage$2;-><init>(Lcom/android/phone/callsettings/PresetImage;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public startChooseActivityByGridView(I)V
    .locals 9

    const/4 v8, 0x1

    const-string v3, "PresetImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startChooseActivityByGridView"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {p1}, Lcom/android/phone/callsettings/IconGridAdapter;->getApplicationStringResId(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/android/phone/callsettings/PresetImage;->isVideoContents:Z

    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageView;

    iget-boolean v6, p0, Lcom/android/phone/callsettings/PresetImage;->isVideoContents:Z

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageView;

    iget-boolean v6, p0, Lcom/android/phone/callsettings/PresetImage;->isVideoContents:Z

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setFocusable(Z)V

    const-string v3, "PresetImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Clickable attr. for the Default image"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->isClickable()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "preset_path"

    const-string v7, "data/data/com.android.phone/files/preset_defaultimage.jpg"

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "preset_name"

    const v7, 0x7f0a0257

    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageView;

    const v6, 0x7f02003d

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/PresetImage;->updateDefaultImageTTS(Z)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "PresetImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : startChooseActivityByGridView"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    :sswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/PresetImage;->pickImageFromGallery()Landroid/content/Intent;

    move-result-object v1

    const/16 v3, 0x32

    invoke-direct {p0, v1, v3}, Lcom/android/phone/callsettings/PresetImage;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/android/phone/callsettings/PresetImage;->capturePicture()Landroid/content/Intent;

    move-result-object v1

    const/16 v3, 0x34

    invoke-direct {p0, v1, v3}, Lcom/android/phone/callsettings/PresetImage;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/android/phone/callsettings/PresetImage;->pickVideoFromGallery()Landroid/content/Intent;

    move-result-object v1

    const/16 v3, 0x33

    invoke-direct {p0, v1, v3}, Lcom/android/phone/callsettings/PresetImage;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/android/phone/callsettings/PresetImage;->checkRemainingSize()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    invoke-direct {p0, v4, v5}, Lcom/android/phone/callsettings/PresetImage;->recordVideo(J)Landroid/content/Intent;

    move-result-object v1

    const/16 v3, 0x35

    invoke-virtual {p0, v1, v3}, Lcom/android/phone/callsettings/PresetImage;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_0
    const v3, 0x7f0a0254

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/PresetImage;->displayToast(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0379 -> :sswitch_4
        0x7f0a037c -> :sswitch_3
        0x7f0a037d -> :sswitch_0
        0x7f0a0385 -> :sswitch_1
        0x7f0a0386 -> :sswitch_2
    .end sparse-switch
.end method
