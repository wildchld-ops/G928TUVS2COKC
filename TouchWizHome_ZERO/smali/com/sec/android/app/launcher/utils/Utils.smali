.class public Lcom/sec/android/app/launcher/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final EDM_FALSE:I = 0x0

.field public static final EDM_NULL:I = -0x1

.field public static final EDM_TRUE:I = 0x1

.field private static final ENTERPRISE_POLICY_SERVICE:Ljava/lang/String; = "enterprise_policy_service"

.field private static final EXT_ASTC:Ljava/lang/String; = ".astc"

.field private static final EXT_ATC:Ljava/lang/String; = ".atc"

.field private static final EXT_PKM:Ljava/lang/String; = ".pkm"

.field private static final MAX_LAUNCHER_RESTART_COUNT:I = 0x3

.field private static final PACKAGE_CONTEXT_FLAGS:I = 0x3

.field private static final PERSIST_SPRINT_EXT_FILE:Ljava/lang/String; = "persist.sys.launcher.ext"

.field private static final PERSIST_SPRINT_EXT_PATH:Ljava/lang/String; = "/storage/emulated/0/Android/data/.com.sec.android.app.launcher.cache/"

.field private static final PREF_LAUNCHER_RESTART_COUNT:Ljava/lang/String; = "launcher.restart.count"

.field private static final SYS_FLAGS:I = 0x81

.field private static final TAG:Ljava/lang/String; = "Launcher.Utils"

.field private static final WIDGET_PREVIEW_ICON_PADDING_PERCENTAGE:F = 0.25f

.field private static mDefaultIcon:Landroid/graphics/Bitmap;

.field private static mIconDpi:I

.field private static mLauncherApps:Landroid/content/pm/LauncherApps;

.field private static mSystemInfo:Landroid/content/pm/PackageInfo;

.field private static mUserManager:Landroid/os/UserManager;

.field private static final sBlurPaint:Landroid/graphics/Paint;

.field private static final sCanvas:Landroid/graphics/Canvas;

.field private static sConfigMccWhenLoaded:I

.field private static sConfigMncWhenLoaded:I

.field private static final sDisabledPaint:Landroid/graphics/Paint;

.field private static sIconHeight:I

.field private static sIconWidth:I

.field private static sInternalPackageManger:Ljava/lang/Object;

.field private static final sOldBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/launcher/utils/Utils;->mSystemInfo:Landroid/content/pm/PackageInfo;

    sput v1, Lcom/sec/android/app/launcher/utils/Utils;->sIconWidth:I

    sput v1, Lcom/sec/android/app/launcher/utils/Utils;->sIconHeight:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/utils/Utils;->sBlurPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/utils/Utils;->sDisabledPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/utils/Utils;->sOldBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/utils/Utils;->sCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final DEBUGGABLE()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x2

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :cond_1
    if-eq v0, v2, :cond_2

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    return-void
.end method

.method public static browseUri(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static calculateSpan(IFI)I
    .locals 2

    int-to-float v0, p0

    div-float/2addr v0, p1

    const/high16 v1, 0x41f00000    # 30.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x46

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private static checkDivCount(I)V
    .locals 3

    if-eqz p0, :cond_0

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid nine-patch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static checkEnableScreenGridForSprint()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->getCountOfLauncherRestart()I

    move-result v0

    const-string v1, "Launcher.Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkEnableScreenGridForSprint - count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/launcher/utils/Utils;->setCountOfLauncherRestart(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->setSystemPropertyForSprintExt()V

    goto :goto_0
.end method

.method public static checkValidSizeOnMobileKeyboard(I)Z
    .locals 6

    const/16 v5, 0xa00

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/16 v1, 0xa00

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v4, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v4, v2, :cond_2

    if-ge p0, v5, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    if-eq p0, v5, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 0

    if-ge p0, p1, :cond_1

    :cond_0
    :goto_0
    return p1

    :cond_1
    if-le p0, p2, :cond_2

    if-lt p2, p1, :cond_0

    :cond_2
    if-le p0, p2, :cond_3

    if-le p2, p1, :cond_3

    move p1, p2

    goto :goto_0

    :cond_3
    move p1, p0

    goto :goto_0
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 3

    :try_start_0
    instance-of v2, p0, Landroid/database/Cursor;

    if-eqz v2, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/database/Cursor;

    move-object v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static contains([II)Z
    .locals 5

    move-object v1, p0

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v0, v1, v2

    if-ne v0, p1, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    move-object v1, p0

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static convertFromPkm(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/sec/android/app/launcher/utils/FastBitmapDrawable;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/utils/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v1, v0}, Lcom/sec/daliviews/utils/BitmapUtils;->convertToBitmap(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v1, p1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v1, p2, :cond_3

    :cond_2
    invoke-static {v0, p1, p2}, Lcom/sec/android/app/launcher/utils/Utils;->scaleBitmapToDesiredDimension(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_0
.end method

.method private static createDefaultBitmap(Landroid/content/res/Resources;ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4

    sget v2, Lcom/sec/android/app/launcher/utils/Utils;->mIconDpi:I

    invoke-virtual {p0, p1, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/sec/android/app/launcher/utils/Utils;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v2, "Launcher.Utils"

    const-string v3, "createDefaultBitmap:: bitmap is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static declared-synchronized createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 11

    const/high16 v10, 0x3f000000    # 0.5f

    const-class v7, Lcom/sec/android/app/launcher/utils/Utils;

    monitor-enter v7

    :try_start_0
    sget v6, Lcom/sec/android/app/launcher/utils/Utils;->sIconWidth:I

    const/4 v8, -0x1

    if-ne v6, v8, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/launcher/utils/Utils;->initStatics(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/high16 v3, 0x3f800000    # 1.0f

    sget v6, Lcom/sec/android/app/launcher/utils/Utils;->sIconWidth:I

    if-gt v5, v6, :cond_1

    sget v6, Lcom/sec/android/app/launcher/utils/Utils;->sIconHeight:I

    if-le v4, v6, :cond_2

    :cond_1
    sget v6, Lcom/sec/android/app/launcher/utils/Utils;->sIconWidth:I

    int-to-float v6, v6

    int-to-float v8, v5

    div-float/2addr v6, v8

    sget v8, Lcom/sec/android/app/launcher/utils/Utils;->sIconHeight:I

    int-to-float v8, v8

    int-to-float v9, v4

    div-float/2addr v8, v9

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    int-to-float v6, v5

    mul-float/2addr v6, v3

    float-to-int v5, v6

    int-to-float v6, v4

    mul-float/2addr v6, v3

    float-to-int v4, v6

    :cond_2
    sget v6, Lcom/sec/android/app/launcher/utils/Utils;->sIconWidth:I

    sub-int v0, v6, v5

    sget v6, Lcom/sec/android/app/launcher/utils/Utils;->sIconHeight:I

    sub-int v1, v6, v4

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v3, v6

    if-ltz v6, :cond_3

    if-gtz v0, :cond_3

    if-lez v1, :cond_4

    :cond_3
    sget v6, Lcom/sec/android/app/launcher/utils/Utils;->sIconWidth:I

    sget v8, Lcom/sec/android/app/launcher/utils/Utils;->sIconHeight:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v6, Lcom/sec/android/app/launcher/utils/Utils;->sCanvas:Landroid/graphics/Canvas;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    sget-object v6, Lcom/sec/android/app/launcher/utils/Utils;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object v6, Lcom/sec/android/app/launcher/utils/Utils;->sCanvas:Landroid/graphics/Canvas;

    int-to-float v8, v0

    mul-float/2addr v8, v10

    int-to-float v9, v1

    mul-float/2addr v9, v10

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v6, Lcom/sec/android/app/launcher/utils/Utils;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    sget-object v6, Lcom/sec/android/app/launcher/utils/Utils;->sCanvas:Landroid/graphics/Canvas;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, p0, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object p0, v2

    sget-object v6, Lcom/sec/android/app/launcher/utils/Utils;->sCanvas:Landroid/graphics/Canvas;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v7

    return-object p0

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public static declared-synchronized createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 15

    const/high16 v14, 0x3f000000    # 0.5f

    const-class v10, Lcom/sec/android/app/launcher/utils/Utils;

    monitor-enter v10

    :try_start_0
    sget v9, Lcom/sec/android/app/launcher/utils/Utils;->sIconWidth:I

    const/4 v11, -0x1

    if-ne v9, v11, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/launcher/utils/Utils;->initStatics(Landroid/content/Context;)V

    :cond_0
    instance-of v9, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v9, :cond_4

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v5, v0

    sget v9, Lcom/sec/android/app/launcher/utils/Utils;->sIconWidth:I

    invoke-virtual {v5, v9}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    sget v9, Lcom/sec/android/app/launcher/utils/Utils;->sIconHeight:I

    invoke-virtual {v5, v9}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    :cond_1
    :goto_0
    sget-object v9, Lcom/sec/android/app/launcher/utils/Utils;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v9}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    if-lez v8, :cond_2

    if-gtz v7, :cond_5

    :cond_2
    sget v8, Lcom/sec/android/app/launcher/utils/Utils;->sIconWidth:I

    sget v7, Lcom/sec/android/app/launcher/utils/Utils;->sIconHeight:I

    const/4 v9, 0x0

    const/4 v11, 0x0

    sget v12, Lcom/sec/android/app/launcher/utils/Utils;->sIconWidth:I

    sget v13, Lcom/sec/android/app/launcher/utils/Utils;->sIconHeight:I

    invoke-virtual {p0, v9, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    :goto_1
    sget v9, Lcom/sec/android/app/launcher/utils/Utils;->sIconWidth:I

    sub-int v3, v9, v8

    sget v9, Lcom/sec/android/app/launcher/utils/Utils;->sIconHeight:I

    sub-int v4, v9, v7

    sget v9, Lcom/sec/android/app/launcher/utils/Utils;->sIconWidth:I

    sget v11, Lcom/sec/android/app/launcher/utils/Utils;->sIconHeight:I

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v9, Lcom/sec/android/app/launcher/utils/Utils;->sCanvas:Landroid/graphics/Canvas;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    sget-object v9, Lcom/sec/android/app/launcher/utils/Utils;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object v9, Lcom/sec/android/app/launcher/utils/Utils;->sCanvas:Landroid/graphics/Canvas;

    int-to-float v11, v3

    mul-float/2addr v11, v14

    int-to-float v12, v4

    mul-float/2addr v12, v14

    invoke-virtual {v9, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v9, Lcom/sec/android/app/launcher/utils/Utils;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v9, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    sget-object v9, Lcom/sec/android/app/launcher/utils/Utils;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sget-object v9, Lcom/sec/android/app/launcher/utils/Utils;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    sget-object v9, Lcom/sec/android/app/launcher/utils/Utils;->sCanvas:Landroid/graphics/Canvas;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    return-object v1

    :cond_4
    :try_start_1
    instance-of v9, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v9, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_5
    const/4 v9, 0x0

    const/4 v11, 0x0

    :try_start_2
    invoke-virtual {p0, v9, v11, v8, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget v9, Lcom/sec/android/app/launcher/utils/Utils;->sIconWidth:I

    if-gt v8, v9, :cond_6

    sget v9, Lcom/sec/android/app/launcher/utils/Utils;->sIconHeight:I

    if-le v7, v9, :cond_3

    :cond_6
    sget v9, Lcom/sec/android/app/launcher/utils/Utils;->sIconWidth:I

    int-to-float v9, v9

    int-to-float v11, v8

    div-float/2addr v9, v11

    sget v11, Lcom/sec/android/app/launcher/utils/Utils;->sIconHeight:I

    int-to-float v11, v11

    int-to-float v12, v7

    div-float/2addr v11, v12

    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    int-to-float v9, v8

    mul-float/2addr v9, v6

    float-to-int v8, v9

    int-to-float v9, v7

    mul-float/2addr v9, v6

    float-to-int v7, v9

    goto :goto_1
.end method

.method public static declared-synchronized createIconBitmapToShortcut(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 11

    const/high16 v10, 0x3f000000    # 0.5f

    const-class v7, Lcom/sec/android/app/launcher/utils/Utils;

    monitor-enter v7

    :try_start_0
    sget v6, Lcom/sec/android/app/launcher/utils/Utils;->sIconWidth:I

    const/4 v8, -0x1

    if-ne v6, v8, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/launcher/utils/Utils;->initStatics(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/high16 v3, 0x3f800000    # 1.0f

    sget v6, Lcom/sec/android/app/launcher/utils/Utils;->sIconWidth:I

    if-gt v5, v6, :cond_1

    sget v6, Lcom/sec/android/app/launcher/utils/Utils;->sIconHeight:I

    if-le v4, v6, :cond_5

    :cond_1
    sget v6, Lcom/sec/android/app/launcher/utils/Utils;->sIconWidth:I

    int-to-float v6, v6

    int-to-float v8, v5

    div-float/2addr v6, v8

    sget v8, Lcom/sec/android/app/launcher/utils/Utils;->sIconHeight:I

    int-to-float v8, v8

    int-to-float v9, v4

    div-float/2addr v8, v9

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    int-to-float v6, v5

    mul-float/2addr v6, v3

    float-to-int v5, v6

    int-to-float v6, v4

    mul-float/2addr v6, v3

    float-to-int v4, v6

    :cond_2
    :goto_0
    sget v6, Lcom/sec/android/app/launcher/utils/Utils;->sIconWidth:I

    sub-int v0, v6, v5

    sget v6, Lcom/sec/android/app/launcher/utils/Utils;->sIconHeight:I

    sub-int v1, v6, v4

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v3, v6

    if-ltz v6, :cond_3

    if-gtz v0, :cond_3

    if-lez v1, :cond_4

    :cond_3
    sget v6, Lcom/sec/android/app/launcher/utils/Utils;->sIconWidth:I

    sget v8, Lcom/sec/android/app/launcher/utils/Utils;->sIconHeight:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v6, Lcom/sec/android/app/launcher/utils/Utils;->sCanvas:Landroid/graphics/Canvas;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    sget-object v6, Lcom/sec/android/app/launcher/utils/Utils;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object v6, Lcom/sec/android/app/launcher/utils/Utils;->sCanvas:Landroid/graphics/Canvas;

    int-to-float v8, v0

    mul-float/2addr v8, v10

    int-to-float v9, v1

    mul-float/2addr v9, v10

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v6, Lcom/sec/android/app/launcher/utils/Utils;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    sget-object v6, Lcom/sec/android/app/launcher/utils/Utils;->sCanvas:Landroid/graphics/Canvas;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, p0, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object p0, v2

    sget-object v6, Lcom/sec/android/app/launcher/utils/Utils;->sCanvas:Landroid/graphics/Canvas;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v7

    return-object p0

    :cond_5
    :try_start_1
    sget v6, Lcom/sec/android/app/launcher/utils/Utils;->sIconWidth:I

    if-lt v5, v6, :cond_6

    sget v6, Lcom/sec/android/app/launcher/utils/Utils;->sIconHeight:I

    if-ge v4, v6, :cond_2

    :cond_6
    sget v6, Lcom/sec/android/app/launcher/utils/Utils;->sIconWidth:I

    int-to-float v6, v6

    int-to-float v8, v5

    div-float/2addr v6, v8

    sget v8, Lcom/sec/android/app/launcher/utils/Utils;->sIconHeight:I

    int-to-float v8, v8

    int-to-float v9, v4

    div-float/2addr v8, v9

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    int-to-float v6, v5

    mul-float/2addr v6, v3

    float-to-int v5, v6

    int-to-float v6, v4

    mul-float/2addr v6, v3

    float-to-int v4, v6

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public static decodeNinePatchChunk([BLandroid/graphics/Rect;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    new-array v2, v6, [I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    new-array v3, v6, [I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    new-array v1, v6, [I

    array-length v6, v2

    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->checkDivCount(I)V

    array-length v6, v3

    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->checkDivCount(I)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    const-string v6, "x"

    invoke-static {v2, v0, v6}, Lcom/sec/android/app/launcher/utils/Utils;->readIntArray([ILjava/nio/ByteBuffer;Ljava/lang/String;)V

    const-string v6, "y"

    invoke-static {v3, v0, v6}, Lcom/sec/android/app/launcher/utils/Utils;->readIntArray([ILjava/nio/ByteBuffer;Ljava/lang/String;)V

    const-string v6, "color"

    invoke-static {v1, v0, v6}, Lcom/sec/android/app/launcher/utils/Utils;->readIntArray([ILjava/nio/ByteBuffer;Ljava/lang/String;)V

    aget v6, v2, v8

    aget v7, v3, v8

    aget v8, v2, v9

    aget v9, v3, v9

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public static destroyPeer(Lcom/sec/daliviews/views/PeerBase;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PeerBase;->destroy()V

    :cond_0
    return-void
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static getActivityIcon(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getActivityLabel(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getAppInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getApplicationInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager;)Landroid/content/pm/ApplicationInfo;
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v2

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Launcher.Utils"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getAuthorityFromPermission(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v8, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v7, :cond_2

    move-object v0, v7

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v6, v0, v2

    iget-object v9, v6, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v8, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v9, v6, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v8, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v3, v2

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/launcher/utils/Utils;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V

    goto :goto_0
.end method

.method public static getBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v0, p1

    int-to-float v3, v4

    div-float v7, v0, v3

    int-to-float v0, p2

    int-to-float v3, v5

    div-float v8, v0, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v0, p0

    move v3, v2

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/launcher/utils/Utils;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V

    goto :goto_0
.end method

.method public static getBitmapBytes(I)[B
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmapBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    return-object v1
.end method

.method public static getBitmapBytes(Landroid/graphics/Bitmap;)[B
    .locals 3

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0
.end method

.method public static getBitmapWithColor(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x0

    if-nez p1, :cond_1

    move-object v0, v4

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v4

    goto :goto_0

    :cond_2
    const v5, 0x1ffffff

    if-eq p2, v5, :cond_0

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1, v5, v8, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    move-object v0, v4

    goto :goto_0
.end method

.method public static getBitmapWithColor(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const v3, 0x1ffffff

    if-eq p2, v3, :cond_0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3, v6, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object p1, v2

    goto :goto_0
.end method

.method public static getBitmapWithStroke(Landroid/content/Context;IIIF)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {p0, p1, p3}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmapWithColor(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmapWithColor(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setDither(Z)V

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4, v8, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    int-to-float v7, v2

    div-float/2addr v7, v9

    int-to-float v8, v1

    div-float/2addr v8, v9

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v3, p4, p4}, Landroid/graphics/Canvas;->scale(FF)V

    neg-int v7, v2

    int-to-float v7, v7

    div-float/2addr v7, v9

    neg-int v8, v1

    int-to-float v8, v8

    div-float/2addr v8, v9

    invoke-virtual {v3, v6, v7, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    return-object v0
.end method

.method public static getBitmapWithStroke(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIF)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {p0, p1, p3}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmapWithColor(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    const v5, 0x1ffffff

    if-eq p4, v5, :cond_0

    if-eqz p2, :cond_1

    invoke-static {p0, p2, p4}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmapWithColor(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_0
    :goto_0
    if-nez p2, :cond_2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    invoke-static {p0, p1, p4}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmapWithColor(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setDither(Z)V

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, p2, v6, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    int-to-float v5, v2

    div-float/2addr v5, v7

    int-to-float v6, v1

    div-float/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v3, p5, p5}, Landroid/graphics/Canvas;->scale(FF)V

    neg-int v5, v2

    int-to-float v5, v5

    div-float/2addr v5, v7

    neg-int v6, v1

    int-to-float v6, v6

    div-float/2addr v6, v7

    invoke-virtual {v3, p1, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1
.end method

.method public static getBitmapWithTheme(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 11

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v8, p1

    int-to-float v9, v7

    div-float v4, v8, v9

    int-to-float v8, p2

    int-to-float v9, v6

    div-float v5, v8, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-le v7, v6, :cond_3

    const/4 v8, 0x0

    int-to-float v9, p2

    int-to-float v10, v6

    mul-float/2addr v10, v3

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_2
    :goto_1
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9, v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    if-le v6, v7, :cond_2

    int-to-float v8, p1

    int-to-float v9, v7

    mul-float/2addr v9, v3

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1
.end method

.method public static getBytesFromDrawable(Landroid/graphics/drawable/Drawable;)[B
    .locals 9

    const/4 v5, 0x0

    const/4 v8, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    const/4 v0, 0x0

    instance-of v6, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-virtual {p0, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_1
    if-eqz v0, :cond_0

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v0, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    goto :goto_0

    :cond_2
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public static getCellXY(II)[I
    .locals 4

    rem-int v0, p0, p1

    div-int v1, p0, p1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    return-object v2
.end method

.method public static getCountOfLauncherRestart()I
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    const-string v2, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "launcher.restart.count"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getDefaultIcon()Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/utils/Utils;->mDefaultIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static getDpi(Landroid/content/Context;)F
    .locals 3

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    return v2
.end method

.method public static getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_1
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    :catch_1
    move-exception v7

    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getIcon(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)Landroid/graphics/Bitmap;
    .locals 10

    if-nez p1, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v8, 0x0

    invoke-virtual {v6, v4, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    const/4 v2, 0x0

    if-eqz v7, :cond_7

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v8, :cond_5

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    :goto_1
    if-eqz v0, :cond_2

    iget v8, v0, Landroid/content/pm/ComponentInfo;->icon:I

    if-eqz v8, :cond_6

    iget-object v8, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    :goto_2
    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_2
    :goto_3
    instance-of v8, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v8, :cond_3

    invoke-virtual {v6, v2, p2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_3
    if-nez v3, :cond_4

    sget v8, Lcom/sec/android/app/launcher/utils/Utils;->mIconDpi:I

    invoke-virtual {p1, v8}, Landroid/content/pm/LauncherActivityInfo;->getBadgedIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_4
    if-eqz v3, :cond_0

    sget v8, Lcom/sec/android/app/launcher/utils/Utils;->sIconWidth:I

    sget v9, Lcom/sec/android/app/launcher/utils/Utils;->sIconHeight:I

    invoke-static {v3, v8, v9}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_5
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_1

    :cond_6
    iget-object v8, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    goto :goto_2

    :cond_7
    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_3
.end method

.method public static declared-synchronized getIcon(Landroid/content/Context;Lcom/sec/android/app/launcher/data/HomeItem;Landroid/os/UserHandle;)Landroid/graphics/Bitmap;
    .locals 12

    const-class v9, Lcom/sec/android/app/launcher/utils/Utils;

    monitor-enter v9

    const/4 v0, 0x0

    :try_start_0
    sget-object v8, Lcom/sec/android/app/launcher/utils/Utils;->mLauncherApps:Landroid/content/pm/LauncherApps;

    if-nez v8, :cond_0

    const-string v8, "launcherapps"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/LauncherApps;

    sput-object v8, Lcom/sec/android/app/launcher/utils/Utils;->mLauncherApps:Landroid/content/pm/LauncherApps;

    :cond_0
    const-string v8, "Launcher.Utils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getIcon() - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomeItem;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Lcom/sec/android/app/launcher/utils/Utils;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10, p2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeLoader()Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v8

    sget-object v10, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->APP_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getIsTheme(I)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {p0, v7, p2}, Lcom/sec/android/app/launcher/utils/Utils;->getIcon(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    const-string v8, "Launcher.Utils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getIcon() - return matches.get(0).getBadgedIcon()), "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomeItem;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/LauncherActivityInfo;

    sget v10, Lcom/sec/android/app/launcher/utils/Utils;->mIconDpi:I

    invoke-virtual {v8, v10}, Landroid/content/pm/LauncherActivityInfo;->getBadgedIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_3
    :goto_1
    monitor-exit v9

    return-object v0

    :cond_4
    :try_start_1
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v8

    invoke-virtual {v8, p0, v7, p2}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeAppIcon(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v8, "Launcher.Utils"

    const-string v10, "getIcon(), matches.size() is 0"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v4, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/sec/android/app/launcher/utils/Utils;->getIconUsingPackageManager(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v8, "Launcher.Utils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getIcon() - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomeItem;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method public static getIconDpi()I
    .locals 1

    sget v0, Lcom/sec/android/app/launcher/utils/Utils;->mIconDpi:I

    return v0
.end method

.method public static getIconHeight(Landroid/content/Context;)I
    .locals 2

    const/4 v1, -0x1

    sget v0, Lcom/sec/android/app/launcher/utils/Utils;->sIconWidth:I

    if-eq v0, v1, :cond_0

    sget v0, Lcom/sec/android/app/launcher/utils/Utils;->sIconHeight:I

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/launcher/utils/Utils;->initStatics(Landroid/content/Context;)V

    :cond_1
    sget v0, Lcom/sec/android/app/launcher/utils/Utils;->sIconHeight:I

    return v0
.end method

.method public static getIconUsingPackageManager(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    sget v4, Lcom/sec/android/app/launcher/utils/Utils;->sIconWidth:I

    sget v5, Lcom/sec/android/app/launcher/utils/Utils;->sIconHeight:I

    invoke-static {v2, v4, v5}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    sget-boolean v4, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSupportTheme:Z

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v4

    invoke-virtual {v4, p0, v6, v6, v1}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public static getIconWidth(Landroid/content/Context;)I
    .locals 2

    const/4 v1, -0x1

    sget v0, Lcom/sec/android/app/launcher/utils/Utils;->sIconWidth:I

    if-eq v0, v1, :cond_0

    sget v0, Lcom/sec/android/app/launcher/utils/Utils;->sIconHeight:I

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/launcher/utils/Utils;->initStatics(Landroid/content/Context;)V

    :cond_1
    sget v0, Lcom/sec/android/app/launcher/utils/Utils;->sIconWidth:I

    return v0
.end method

.method public static declared-synchronized getInstalledProviders(Landroid/appwidget/AppWidgetManager;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/appwidget/AppWidgetManager;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    const-class v4, Lcom/sec/android/app/launcher/utils/Utils;

    monitor-enter v4

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(Landroid/os/UserHandle;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myTid()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eq v3, v5, :cond_0

    const-wide/16 v6, 0xc8

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(Landroid/os/UserHandle;)Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :cond_0
    :goto_1
    monitor-exit v4

    return-object v0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v3, "Launcher.Utils"

    const-string v5, "getInstalledProviders() failed"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    const/4 v2, 0x1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :catch_2
    move-exception v1

    :try_start_4
    const-string v3, "Launcher.Utils"

    const-string v5, "getInstalledProviders() 2nd failed"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public static declared-synchronized getInstalledProviders(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/appwidget/AppWidgetManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    const-class v7, Lcom/sec/android/app/launcher/utils/Utils;

    monitor-enter v7

    :try_start_0
    sget-object v6, Lcom/sec/android/app/launcher/utils/Utils;->mUserManager:Landroid/os/UserManager;

    if-nez v6, :cond_0

    const-string v6, "user"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    sput-object v6, Lcom/sec/android/app/launcher/utils/Utils;->mUserManager:Landroid/os/UserManager;

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lcom/sec/android/app/launcher/utils/Utils;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_3

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isKnoxMode()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isSafeMode()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    invoke-static {p1, v6}, Lcom/sec/android/app/launcher/utils/Utils;->getInstalledProviders(Landroid/appwidget/AppWidgetManager;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    monitor-exit v7

    return-object v0

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public static getInternalPackageManager()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v2, Lcom/sec/android/app/launcher/utils/Utils;->sInternalPackageManger:Ljava/lang/Object;

    if-nez v2, :cond_0

    const-string v2, "android.content.pm.IPackageManager$Stub"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "asInterface"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "package"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/launcher/utils/Utils;->sInternalPackageManger:Ljava/lang/Object;

    :cond_0
    sget-object v2, Lcom/sec/android/app/launcher/utils/Utils;->sInternalPackageManger:Ljava/lang/Object;

    return-object v2
.end method

.method public static getItemUri(Landroid/net/Uri;J)Landroid/net/Uri;
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getLauncherActivityInfo(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;
    .locals 5

    sget-object v3, Lcom/sec/android/app/launcher/utils/Utils;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getMyUserSerialNumber(Landroid/content/Context;)J
    .locals 3

    const-class v2, Lcom/sec/android/app/launcher/utils/Utils;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/sec/android/app/launcher/utils/Utils;->mUserManager:Landroid/os/UserManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    monitor-exit v2

    return-wide v0

    :cond_0
    :try_start_1
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    sput-object v0, Lcom/sec/android/app/launcher/utils/Utils;->mUserManager:Landroid/os/UserManager;

    :cond_1
    sget-object v0, Lcom/sec/android/app/launcher/utils/Utils;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static getPositionsToDelete(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/util/SparseIntArray;
    .locals 11

    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v8, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v5, "containerId ASC,pos ASC"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "pos"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v0, "containerId"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {v6, v7, v10}, Landroid/util/SparseIntArray;->append(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v9

    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v8}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    :goto_1
    return-object v6

    :cond_1
    invoke-static {v8}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static getSampleSize(IIII)I
    .locals 4

    int-to-float v2, p1

    int-to-float v3, p3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    int-to-float v2, p0

    int-to-float v3, p2

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    if-le v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getScreenDimensions(Landroid/app/Activity;)Landroid/graphics/Point;
    .locals 4

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public static getScreenSizeInPixel(Lcom/sec/android/app/launcher/activities/LauncherActivity;)[I
    .locals 9

    const/high16 v8, 0x43200000    # 160.0f

    const/4 v6, 0x2

    new-array v5, v6, [I

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v3

    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v7, v7

    div-float/2addr v7, v8

    div-float v2, v6, v7

    int-to-float v6, v4

    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v7, v7

    div-float/2addr v7, v8

    div-float v0, v6, v7

    const-string v6, "Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "height="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "px width="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "px"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "height="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dp width="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    float-to-int v7, v2

    aput v7, v5, v6

    const/4 v6, 0x1

    float-to-int v7, v0

    aput v7, v5, v6

    return-object v5
.end method

.method public static getSurfaceWidgetInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    sget-object v4, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->INST:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->getWidgetItems(Z)Ljava/util/List;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    iget-object v4, v3, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getSystemPropertyForSprintExt()Z
    .locals 4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_EnableSprintExtension"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/emulated/0/Android/data/.com.sec.android.app.launcher.cache/persist.sys.launcher.ext"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized getTitle(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/lang/String;
    .locals 9

    const-class v6, Lcom/sec/android/app/launcher/utils/Utils;

    monitor-enter v6

    if-nez p1, :cond_1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    monitor-exit v6

    return-object v4

    :cond_1
    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lcom/sec/android/app/launcher/utils/Utils;->mLauncherApps:Landroid/content/pm/LauncherApps;

    if-nez v5, :cond_2

    const-string v5, "launcherapps"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/LauncherApps;

    sput-object v5, Lcom/sec/android/app/launcher/utils/Utils;->mLauncherApps:Landroid/content/pm/LauncherApps;

    :cond_2
    sget-object v5, Lcom/sec/android/app/launcher/utils/Utils;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, p2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v5, "Launcher.Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTitle - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static getTitle(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 10

    iget-object v8, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v8, :cond_2

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    :goto_0
    new-instance v2, Landroid/content/ComponentName;

    iget-object v8, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v9, v1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v4, :cond_0

    iget v5, p1, Landroid/content/pm/ResolveInfo;->labelRes:I

    if-nez v5, :cond_0

    iget-object v4, v1, Landroid/content/pm/ComponentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v4, :cond_0

    iget v5, v1, Landroid/content/pm/ComponentInfo;->labelRes:I

    if-nez v5, :cond_0

    iget-object v8, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v8, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v4, :cond_0

    iget-object v8, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v8, Landroid/content/pm/ApplicationInfo;->labelRes:I

    :cond_0
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    :goto_1
    if-nez v7, :cond_1

    iget-object v0, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_4

    :try_start_0
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    :goto_2
    if-eqz v5, :cond_1

    iget v8, v1, Landroid/content/pm/ComponentInfo;->labelRes:I

    if-eqz v8, :cond_5

    iget-object v8, v1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    :goto_3
    invoke-static {v6, v5, v8}, Lcom/sec/android/app/launcher/utils/Utils;->loadString(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :cond_1
    :goto_4
    return-object v7

    :cond_2
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v6

    goto :goto_2

    :cond_5
    iget-object v8, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    const/4 v7, 0x0

    goto :goto_4
.end method

.method public static getWidgetInfo(Landroid/content/Context;I)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 2

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getWidgetInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/sec/android/app/launcher/utils/Utils;->getInstalledProviders(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)Ljava/util/List;

    move-result-object v3

    new-array v1, v7, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v1, v8

    const-string v5, "android.appwidget.AppWidgetManager"

    const-string v6, "getInstalledProviders"

    invoke-static {v5, v6, v1, v7}, Lcom/sec/android/app/launcher/utils/Reflection;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    const/16 v7, 0x200

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v2, v6}, Lcom/sec/android/app/launcher/utils/Reflection;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v3, :cond_0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-static {v3, p1}, Lcom/sec/android/app/launcher/utils/Utils;->getWidgetInfo(Ljava/util/List;Landroid/content/ComponentName;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    return-object v5
.end method

.method public static getWidgetInfo(Ljava/util/List;Landroid/content/ComponentName;)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")",
            "Landroid/appwidget/AppWidgetProviderInfo;"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v3, "Launcher.Utils"

    const-string v4, "getWidgetInfo infos or compName is null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method private static initStatics(Landroid/content/Context;)V
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    const v4, 0x7f0a0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/sec/android/app/launcher/utils/Utils;->sIconHeight:I

    sput v4, Lcom/sec/android/app/launcher/utils/Utils;->sIconWidth:I

    sget-object v4, Lcom/sec/android/app/launcher/utils/Utils;->sBlurPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/BlurMaskFilter;

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v6, v1

    sget-object v7, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v5, v6, v7}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const v4, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    sget-object v4, Lcom/sec/android/app/launcher/utils/Utils;->sDisabledPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    sget-object v4, Lcom/sec/android/app/launcher/utils/Utils;->sDisabledPaint:Landroid/graphics/Paint;

    const/16 v5, 0x88

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public static declared-synchronized isBlockUninstall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    const-class v5, Lcom/sec/android/app/launcher/utils/Utils;

    monitor-enter v5

    :try_start_0
    const-string v4, "enterprise_policy_service"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    const-string v6, "device_policy"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v4, "Launcher.Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hasActiveAdmins:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationUninstallationEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    :goto_1
    if-eqz v3, :cond_1

    if-eqz v2, :cond_4

    :cond_1
    const/4 v4, 0x1

    :goto_2
    monitor-exit v5

    return v4

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static isKioskModeEnabled()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v1

    const-string v2, "isKioskModeEnabled"

    invoke-static {v1, v2}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "true"

    const-string v2, "isKioskModeEnabled"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKnoxMode()Z
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMobileKeyboardMode()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    sget-boolean v4, Lcom/sec/android/app/launcher/activities/LauncherApp;->SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD:Z

    if-eqz v4, :cond_3

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v4, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-eq v4, v2, :cond_1

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public static isNetworkCodeChanged(Landroid/content/Context;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    sget v2, Lcom/sec/android/app/launcher/utils/Utils;->sConfigMccWhenLoaded:I

    iget v3, v1, Landroid/content/res/Configuration;->mcc:I

    if-ne v2, v3, :cond_0

    sget v2, Lcom/sec/android/app/launcher/utils/Utils;->sConfigMncWhenLoaded:I

    iget v3, v1, Landroid/content/res/Configuration;->mnc:I

    if-eq v2, v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v2, "Launcher.Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isNetworkCodeChanged. mcc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/app/launcher/utils/Utils;->sConfigMccWhenLoaded:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; mnc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/app/launcher/utils/Utils;->sConfigMncWhenLoaded:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; return: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOwner()Z
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isPossibleAddToPersonal(Ljava/lang/String;)Z
    .locals 5

    const-string v2, "Launcher.Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isPossibleAddToPersonal(name) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isKioskModeEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Landroid/os/PersonaManager;->isPossibleAddToPersonal(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Launcher.Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not call android.os.PersonaManager."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "Launcher.Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not call isPossibleAddToPersonal."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isSystemApp(Landroid/content/ComponentName;Landroid/content/pm/PackageManager;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/launcher/utils/Utils;->getApplicationInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x81

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized isSystemSignature(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    const/4 v3, 0x0

    const-class v4, Lcom/sec/android/app/launcher/utils/Utils;

    monitor-enter v4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit v4

    return v3

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    const/16 v5, 0x40

    :try_start_1
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    sget-object v5, Lcom/sec/android/app/launcher/utils/Utils;->mSystemInfo:Landroid/content/pm/PackageInfo;

    if-nez v5, :cond_2

    const-string v5, "android"

    const/16 v6, 0x40

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    sput-object v5, Lcom/sec/android/app/launcher/utils/Utils;->mSystemInfo:Landroid/content/pm/PackageInfo;

    :cond_2
    if-eqz v1, :cond_0

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/sec/android/app/launcher/utils/Utils;->mSystemInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized launchUri(Landroid/app/Activity;Lcom/sec/android/app/launcher/data/LauncherItem;)V
    .locals 12

    const-class v8, Lcom/sec/android/app/launcher/utils/Utils;

    monitor-enter v8

    :try_start_0
    const-string v7, "Launcher.Utils"

    const-string v9, "launchUri"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v7, Lcom/sec/android/app/launcher/utils/Utils;->mLauncherApps:Landroid/content/pm/LauncherApps;

    if-nez v7, :cond_0

    const-string v7, "launcherapps"

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/LauncherApps;

    sput-object v7, Lcom/sec/android/app/launcher/utils/Utils;->mLauncherApps:Landroid/content/pm/LauncherApps;

    :cond_0
    sget-object v7, Lcom/sec/android/app/launcher/utils/Utils;->mUserManager:Landroid/os/UserManager;

    if-nez v7, :cond_1

    const-string v7, "user"

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    sput-object v7, Lcom/sec/android/app/launcher/utils/Utils;->mUserManager:Landroid/os/UserManager;

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/LauncherItem;->getIntent()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v7, 0x10000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    const-string v7, "Launcher.Utils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "shortcut extras:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "shortcutIntent"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v7, 0x0

    :try_start_2
    invoke-static {v3, v7}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    :try_start_3
    invoke-virtual {p0, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit v8

    return-void

    :catch_0
    move-exception v0

    :try_start_4
    const-string v7, "Launcher.Utils"

    const-string v9, "failed to parse shortcut intent URI"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_3
    :try_start_6
    sget-object v7, Lcom/sec/android/app/launcher/utils/Utils;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/LauncherItem;->getUserId()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v6

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :cond_4
    :try_start_8
    sget-object v7, Lcom/sec/android/app/launcher/utils/Utils;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v6, v10, v11}, Landroid/content/pm/LauncherApps;->startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    :catch_3
    move-exception v0

    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1
.end method

.method public static layout(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/sec/android/app/launcher/utils/Utils;->measure(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public static loadBitmap(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static loadBitmap(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-static {v1, p0}, Lcom/sec/android/app/launcher/utils/Utils;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v3, "Launcher.Utils"

    const-string v4, "bmp is null!! return default icon"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    return-object v0

    :catch_0
    move-exception v2

    const-string v3, "Launcher.Utils"

    const-string v4, "Resource loading error (getDrawable)"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static declared-synchronized loadBitmap(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 8

    const-class v7, Lcom/sec/android/app/launcher/utils/Utils;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/launcher/utils/Utils;->loadBitmap(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;IIILandroid/os/UserHandle;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v7

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized loadBitmap(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;IIILandroid/os/UserHandle;)Landroid/graphics/Bitmap;
    .locals 6

    const-class v4, Lcom/sec/android/app/launcher/utils/Utils;

    monitor-enter v4

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    sget v3, Lcom/sec/android/app/launcher/utils/Utils;->mIconDpi:I

    if-nez v3, :cond_0

    check-cast p0, Lcom/sec/android/app/launcher/activities/LauncherApp;

    invoke-static {p0}, Lcom/sec/android/app/launcher/utils/Utils;->setIconDpi(Lcom/sec/android/app/launcher/activities/LauncherApp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz p3, :cond_1

    :try_start_1
    sget v3, Lcom/sec/android/app/launcher/utils/Utils;->mIconDpi:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :cond_1
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {p6, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1, v1, p6}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v1, p4, p5}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    :cond_3
    monitor-exit v4

    return-object v2

    :catch_0
    move-exception v0

    :try_start_3
    const-string v3, "Launcher.Utils"

    const-string v5, "Resource loading error"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static loadBitmapToDesiredDimension(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 4

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/launcher/utils/Utils;->loadNormalResBitmap(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, ".pkm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".atc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".astc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-static {v0, p2, p3}, Lcom/sec/android/app/launcher/utils/Utils;->convertFromPkm(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static loadNormalResBitmap(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 15

    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move/from16 v0, p1

    invoke-static {p0, v0, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    move v3, v2

    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iget v14, v12, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-eq v13, v14, :cond_6

    const/4 v5, 0x1

    :goto_0
    if-eqz v5, :cond_0

    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-eqz v13, :cond_0

    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-eqz v13, :cond_0

    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    int-to-float v13, v13

    iget v14, v12, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    int-to-float v14, v14

    div-float v6, v13, v14

    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v13, v13

    mul-float/2addr v13, v6

    float-to-int v3, v13

    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v13, v13

    mul-float/2addr v13, v6

    float-to-int v2, v13

    :cond_0
    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget v14, v12, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-ne v13, v14, :cond_7

    const/4 v8, 0x1

    :goto_1
    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget v14, v12, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-le v13, v14, :cond_8

    const/4 v9, 0x1

    :goto_2
    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget v14, v12, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-ge v13, v14, :cond_9

    const/4 v10, 0x1

    :goto_3
    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v0, p2

    if-gt v13, v0, :cond_1

    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p3

    if-le v13, v0, :cond_a

    :cond_1
    const/4 v11, 0x1

    :goto_4
    move/from16 v0, p2

    if-gt v3, v0, :cond_2

    move/from16 v0, p3

    if-le v2, v0, :cond_b

    :cond_2
    const/4 v7, 0x1

    :goto_5
    if-eqz v9, :cond_c

    if-eqz v7, :cond_c

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v3, v2, v0, v1}, Lcom/sec/android/app/launcher/utils/Utils;->getSampleSize(IIII)I

    move-result v13

    iput v13, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_3
    :goto_6
    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v0, p2

    if-gt v13, v0, :cond_4

    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p2

    if-le v13, v0, :cond_5

    :cond_4
    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    const/4 v13, 0x2

    iput v13, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_5
    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v13, v12, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    invoke-static {p0, v0, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_f

    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v4, v13}, Landroid/graphics/Bitmap;->setDensity(I)V

    :goto_7
    return-object v4

    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v8, 0x0

    goto :goto_1

    :cond_8
    const/4 v9, 0x0

    goto :goto_2

    :cond_9
    const/4 v10, 0x0

    goto :goto_3

    :cond_a
    const/4 v11, 0x0

    goto :goto_4

    :cond_b
    const/4 v7, 0x0

    goto :goto_5

    :cond_c
    if-eqz v10, :cond_d

    if-eqz v11, :cond_d

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v14, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v13, v14, v0, v1}, Lcom/sec/android/app/launcher/utils/Utils;->getSampleSize(IIII)I

    move-result v13

    iput v13, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_6

    :cond_d
    if-eqz v10, :cond_e

    if-eqz v7, :cond_e

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    goto :goto_6

    :cond_e
    if-eqz v8, :cond_3

    if-eqz v11, :cond_3

    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v14, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v13, v14, v0, v1}, Lcom/sec/android/app/launcher/utils/Utils;->getSampleSize(IIII)I

    move-result v13

    iput v13, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_6

    :cond_f
    const-string v13, "Launcher.Utils"

    const-string v14, "loadBitmapToDesiredDimension() failed to decode image stream"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public static loadString(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    if-nez v2, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static loadWidgetPreview(Landroid/content/Context;Ljava/lang/String;IIII[I)Landroid/graphics/Bitmap;
    .locals 31

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    const/4 v6, 0x3

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v30

    if-eqz v30, :cond_7

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/launcher/utils/Utils;->loadBitmapToDesiredDimension(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :cond_0
    :goto_0
    if-nez v5, :cond_6

    const/4 v6, 0x0

    aget v17, p6, v6

    const/4 v6, 0x1

    aget v18, p6, v6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v6, 0x7f0a0002

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    const v6, 0x7f0a0037

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    const v6, 0x7f0a0033

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    mul-int v29, v22, v17

    mul-int v28, v21, v18

    move/from16 v8, v29

    move/from16 v9, v28

    move/from16 v0, v16

    int-to-float v6, v0

    const/high16 v7, 0x3e800000    # 0.25f

    mul-float/2addr v6, v7

    float-to-int v0, v6

    move/from16 v23, v0

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    const/4 v6, 0x1

    move/from16 v0, v17

    if-gt v0, v6, :cond_8

    mul-int/lit8 v6, v23, 0x2

    add-int v9, v16, v6

    move v8, v9

    :goto_1
    const v6, 0x7f0a02dd

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move/from16 v0, v25

    if-le v9, v0, :cond_1

    move/from16 v9, v25

    :cond_1
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v6, 0x1

    move/from16 v0, v17

    if-ne v0, v6, :cond_2

    const/4 v6, 0x1

    move/from16 v0, v18

    if-eq v0, v6, :cond_3

    :cond_2
    const v6, 0x7f02000f

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/sec/android/app/launcher/utils/Utils;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    :cond_3
    const/4 v10, 0x0

    :try_start_1
    div-int/lit8 v6, v8, 0x2

    int-to-float v6, v6

    move/from16 v0, v16

    int-to-float v7, v0

    mul-float v7, v7, v20

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    sub-float/2addr v6, v7

    float-to-int v12, v6

    div-int/lit8 v6, v9, 0x2

    int-to-float v6, v6

    move/from16 v0, v16

    int-to-float v7, v0

    mul-float v7, v7, v20

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    sub-float/2addr v6, v7

    float-to-int v13, v6

    if-lez p3, :cond_4

    const/4 v6, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    :cond_4
    if-nez v10, :cond_5

    const v6, 0x7f020066

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    :cond_5
    move/from16 v0, v16

    int-to-float v6, v0

    mul-float v6, v6, v20

    float-to-int v14, v6

    move/from16 v0, v16

    int-to-float v6, v0

    mul-float v6, v6, v20

    float-to-int v15, v6

    move-object v11, v5

    invoke-static/range {v10 .. v15}, Lcom/sec/android/app/launcher/utils/Utils;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_2
    return-object v5

    :cond_7
    :try_start_2
    const-string v6, "Launcher.Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadWidgetPreview() : Unable to find package "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v19

    const-string v6, "Launcher.Utils"

    const-string v7, "loadWidgetPreview() : Unable to find package"

    move-object/from16 v0, v19

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_8
    mul-int/lit8 v6, v23, 0x4

    add-int v9, v16, v6

    move v8, v9

    goto/16 :goto_1

    :cond_9
    move/from16 v0, v29

    move/from16 v1, v28

    if-le v0, v1, :cond_a

    move/from16 v0, v29

    move/from16 v1, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    move/from16 v0, v28

    int-to-float v6, v0

    int-to-float v7, v8

    move/from16 v0, v29

    int-to-float v11, v0

    div-float/2addr v7, v11

    mul-float/2addr v6, v7

    float-to-int v9, v6

    int-to-float v6, v9

    mul-int/lit8 v7, v23, 0x2

    add-int v7, v7, v16

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v20

    goto/16 :goto_1

    :cond_a
    move/from16 v0, v28

    move/from16 v1, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    move/from16 v0, v29

    int-to-float v6, v0

    int-to-float v7, v9

    move/from16 v0, v28

    int-to-float v11, v0

    div-float/2addr v7, v11

    mul-float/2addr v6, v7

    float-to-int v8, v6

    int-to-float v6, v8

    mul-int/lit8 v7, v23, 0x2

    add-int v7, v7, v16

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v20

    goto/16 :goto_1

    :catch_1
    move-exception v19

    const-string v6, "Launcher.Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public static matchItemsToIntents(Ljava/util/List;Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/daliviews/views/Item;

    instance-of v6, v4, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v6, :cond_0

    move-object v0, v4

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->getIntent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return v5
.end method

.method public static measure(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public static packageEnabled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, p0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Launcher.Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static readIntArray([ILjava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    aput v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static readSalesCode()Ljava/lang/String;
    .locals 4

    const-string v1, ""

    :try_start_0
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "Launcher.Utils"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    .locals 8

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/launcher/utils/Utils;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFI)V

    return-void
.end method

.method public static renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V
    .locals 8

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/launcher/utils/Utils;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFI)V

    return-void
.end method

.method public static renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFI)V
    .locals 4

    if-eqz p1, :cond_1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p6, p6}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    add-int v2, p2, p4

    add-int v3, p3, p5

    invoke-virtual {p0, p2, p3, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 v2, -0x1

    if-eq p7, v2, :cond_0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p7, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public static declared-synchronized scaleBitmapToDesiredDimension(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 11

    const-class v9, Lcom/sec/android/app/launcher/utils/Utils;

    monitor-enter v9

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v9

    return-object v2

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v8, v1

    int-to-float v10, p1

    div-float v7, v8, v10

    int-to-float v8, v0

    int-to-float v10, p2

    div-float v5, v8, v10

    cmpl-float v8, v5, v7

    if-lez v8, :cond_2

    move v6, v5

    :goto_1
    const/4 v2, 0x0

    const/4 v8, 0x0

    cmpl-float v8, v6, v8

    if-eqz v8, :cond_3

    int-to-float v8, v1

    div-float/2addr v8, v6

    float-to-int v4, v8

    int-to-float v8, v0

    div-float/2addr v8, v6

    float-to-int v3, v8

    const/4 v8, 0x1

    invoke-static {p0, v4, v3, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1

    :cond_3
    move-object v2, p0

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method public static setCountOfLauncherRestart(I)V
    .locals 5

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "launcher.restart.count"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setIconDpi(Lcom/sec/android/app/launcher/activities/LauncherApp;)V
    .locals 12

    const/16 v11, 0x140

    const/16 v10, 0xf0

    const/16 v9, 0xa0

    const/16 v8, 0x78

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0a0002

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/high16 v6, 0x1050000

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    if-gt v5, v2, :cond_0

    iget v6, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v6, Lcom/sec/android/app/launcher/utils/Utils;->mIconDpi:I

    :goto_0
    const-string v6, "Launcher.Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setIconDPI mIconDpi="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/android/app/launcher/utils/Utils;->mIconDpi:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v6, 0x10d0000

    invoke-static {v3, v6, p0}, Lcom/sec/android/app/launcher/utils/Utils;->createDefaultBitmap(Landroid/content/res/Resources;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v6

    sput-object v6, Lcom/sec/android/app/launcher/utils/Utils;->mDefaultIcon:Landroid/graphics/Bitmap;

    return-void

    :cond_0
    int-to-float v6, v5

    int-to-float v7, v2

    div-float/2addr v6, v7

    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v4, v6

    if-gt v4, v8, :cond_1

    sput v8, Lcom/sec/android/app/launcher/utils/Utils;->mIconDpi:I

    goto :goto_0

    :cond_1
    if-gt v4, v9, :cond_2

    sput v9, Lcom/sec/android/app/launcher/utils/Utils;->mIconDpi:I

    goto :goto_0

    :cond_2
    if-gt v4, v10, :cond_3

    sput v10, Lcom/sec/android/app/launcher/utils/Utils;->mIconDpi:I

    goto :goto_0

    :cond_3
    if-gt v4, v11, :cond_4

    sput v11, Lcom/sec/android/app/launcher/utils/Utils;->mIconDpi:I

    goto :goto_0

    :cond_4
    const/16 v6, 0x1e0

    sput v6, Lcom/sec/android/app/launcher/utils/Utils;->mIconDpi:I

    goto :goto_0
.end method

.method public static setNetworkCode(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->mcc:I

    sput v1, Lcom/sec/android/app/launcher/utils/Utils;->sConfigMccWhenLoaded:I

    iget v1, v0, Landroid/content/res/Configuration;->mnc:I

    sput v1, Lcom/sec/android/app/launcher/utils/Utils;->sConfigMncWhenLoaded:I

    const-string v1, "Launcher.Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNetworkCode. mcc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/launcher/utils/Utils;->sConfigMccWhenLoaded:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; mnc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/launcher/utils/Utils;->sConfigMncWhenLoaded:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setSystemPropertyForSprintExt()V
    .locals 5

    new-instance v2, Ljava/io/File;

    const-string v3, "/storage/emulated/0/Android/data/.com.sec.android.app.launcher.cache/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/storage/emulated/0/Android/data/.com.sec.android.app.launcher.cache/persist.sys.launcher.ext"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    const-string v3, "Launcher.Utils"

    const-string v4, "setSystemPropertyForSprintExt - sucess"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static sortItemsByCellPos(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/launcher/utils/Utils$1;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/utils/Utils$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public static updatePositionsOnPakcageDeleted(Landroid/content/ContentResolver;Landroid/util/SparseIntArray;)I
    .locals 14

    const/4 v13, 0x1

    const-string v3, "containerId=? AND pos>?"

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_1

    invoke-virtual {p1, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    const/4 v7, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider;->APPS_URI:Landroid/net/Uri;

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "title"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "pos"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    const-string v4, "containerId"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "pos ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "pos"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    invoke-static {v7}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getInstance()Lcom/sec/android/app/launcher/providers/LauncherProvider;

    move-result-object v0

    const-string v1, "appOrder"

    invoke-virtual {v0, v1, v12, v13}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->updateDisplacedItems(Ljava/lang/String;Ljava/util/Map;Z)I

    move-result v0

    return v0
.end method
