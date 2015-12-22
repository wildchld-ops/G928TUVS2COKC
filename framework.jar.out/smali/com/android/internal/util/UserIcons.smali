.class public Lcom/android/internal/util/UserIcons;
.super Ljava/lang/Object;
.source "UserIcons.java"


# static fields
.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final TAG_FOTA:Ljava/lang/String; = "fota"

.field private static final USER_DRAWABLES:[I

.field private static final USER_ICON_COLORS:[I

.field static mFotaVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/util/UserIcons;->USER_ICON_COLORS:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/util/UserIcons;->USER_DRAWABLES:[I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/util/UserIcons;->mFotaVersion:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x106005b
        0x106005c
        0x106005d
    .end array-data

    :array_1
    .array-data 4
        0x10800f0
        0x10800f1
        0x10800f2
        0x10800f3
        0x10800f4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public static getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/16 v4, -0x2710

    const/4 v5, 0x0

    sget-object v2, Lcom/android/internal/util/UserIcons;->mFotaVersion:Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/internal/util/UserIcons;->readFotaLocked()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/util/UserIcons;->mFotaVersion:Ljava/lang/String;

    :cond_0
    sget-object v2, Lcom/android/internal/util/UserIcons;->mFotaVersion:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, "LL"

    sput-object v2, Lcom/android/internal/util/UserIcons;->mFotaVersion:Ljava/lang/String;

    :cond_1
    sget-object v2, Lcom/android/internal/util/UserIcons;->mFotaVersion:Ljava/lang/String;

    const-string v3, "KK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eq p0, v4, :cond_2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/android/internal/util/UserIcons;->USER_DRAWABLES:[I

    sget-object v4, Lcom/android/internal/util/UserIcons;->USER_DRAWABLES:[I

    array-length v4, v4

    rem-int v4, p0, v4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    return-object v1

    :cond_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10800f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    const v0, 0x1060064

    :goto_1
    if-eq p0, v4, :cond_5

    sget-object v2, Lcom/android/internal/util/UserIcons;->USER_ICON_COLORS:[I

    sget-object v3, Lcom/android/internal/util/UserIcons;->USER_ICON_COLORS:[I

    array-length v3, v3

    rem-int v3, p0, v3

    aget v0, v2, v3

    :goto_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10805b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_4
    const v0, 0x1060063

    goto :goto_1

    :cond_5
    const v0, 0x106005e

    goto :goto_2
.end method

.method private static readFotaLocked()Ljava/lang/String;
    .locals 12

    const/4 v11, 0x2

    new-instance v5, Ljava/io/File;

    const-string v9, "/data/system/users"

    const-string v10, "fota.xml"

    invoke-direct {v5, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-instance v1, Landroid/util/XmlMoreAtomicFile;

    invoke-direct {v1, v5}, Landroid/util/XmlMoreAtomicFile;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1}, Landroid/util/XmlMoreAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    const/4 v9, 0x0

    invoke-interface {v6, v0, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-eq v8, v11, :cond_1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    :cond_1
    if-eq v8, v11, :cond_3

    invoke-virtual {v1}, Landroid/util/XmlMoreAtomicFile;->processDamagedFile()V

    const-string v9, "LL"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    :goto_0
    move-object v4, v3

    :goto_1
    return-object v4

    :cond_3
    :try_start_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "fota"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x0

    const-string/jumbo v10, "version"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    :cond_4
    if-eqz v0, :cond_5

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_5
    :goto_2
    move-object v4, v3

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_4
    invoke-virtual {v1}, Landroid/util/XmlMoreAtomicFile;->processDamagedFile()V

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_6

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_6
    :goto_3
    move-object v4, v3

    goto :goto_1

    :catch_1
    move-exception v7

    :try_start_6
    invoke-virtual {v1}, Landroid/util/XmlMoreAtomicFile;->processDamagedFile()V

    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_7

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_7
    :goto_4
    move-object v4, v3

    goto :goto_1

    :catchall_0
    move-exception v9

    if-eqz v0, :cond_8

    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_8
    :goto_5
    move-object v4, v3

    goto :goto_1

    :catch_2
    move-exception v9

    goto :goto_0

    :catch_3
    move-exception v9

    goto :goto_2

    :catch_4
    move-exception v9

    goto :goto_3

    :catch_5
    move-exception v9

    goto :goto_4

    :catch_6
    move-exception v9

    goto :goto_5
.end method
