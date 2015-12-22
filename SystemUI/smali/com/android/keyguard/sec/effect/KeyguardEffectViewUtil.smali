.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;
.super Ljava/lang/Object;
.source "KeyguardEffectViewUtil.java"


# static fields
.field public static final ACTION_UPDATE_LOCKSCREEN_WALLPAPER:Ljava/lang/String; = "edm.intent.action.internal.sec.LSO_CONFIG_CHANGED"

.field public static final ADMIN_WALLPAPER_PORTRAIT:Ljava/lang/String; = "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

.field public static final ADMIN_WALLPAPER_RIPPLE:Ljava/lang/String; = "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

.field public static final DEFAULT_CSC_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "//system/csc_contents/lockscreen_default_wallpaper.jpg"

.field public static final DEFAULT_CSC_WALLPAPER_IMAGE_PATH_PNG:Ljava/lang/String; = "//system/csc_contents/lockscreen_default_wallpaper.png"

.field public static final DEFAULT_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "//system/wallpaper/lockscreen_default_wallpaper.jpg"

.field public static final DEFAULT_WALLPAPER_IMAGE_PATH_PNG:Ljava/lang/String; = "//system/wallpaper/lockscreen_default_wallpaper.png"

.field public static final KEY_CURRENT_WALLPAPER_FILE_PATH:Ljava/lang/String; = "keyguard_current_wallpaper_file_path"

.field public static final KEY_CURRENT_WALLPAPER_RES_ID:Ljava/lang/String; = "keyguard_current_wallpaper_res_id"

.field public static final KEY_CURRENT_WALLPAPER_TYPE:Ljava/lang/String; = "keyguard_current_wallpaper_type"

.field public static final KEY_DEFAULT_WALLPAPER_RES_ID:Ljava/lang/String; = "keyguard_default_wallpaper_res_id"

.field private static final KNOX_MODE_USER_ID:I = 0x64

.field public static final LANDSCAPE_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_land.jpg"

.field public static final PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

.field public static final RIPPLE_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_ripple.jpg"

.field public static final SHARED_WALLPAPER_TYPE_FILE:I = 0x1

.field public static final SHARED_WALLPAPER_TYPE_NONE:I = 0x0

.field public static final SHARED_WALLPAPER_TYPE_RESOURCE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "KeyguardEffectViewUtil"

.field public static final WALLPAPER_TYPE_FILE:I = 0x1

.field public static final WALLPAPER_TYPE_HOME:I = 0x3

.field public static final WALLPAPER_TYPE_JUST_ON_LOCK_LIVE:I = 0x2

.field public static final WALLPAPER_TYPE_LIVE:I

.field private static mAdminWallpaper:Z

.field private static mUpdatedAdminWallpaperValue:Z

.field private static mWallpaperPath:Ljava/lang/String;

.field private static mWallpaperResId:I

.field private static mWallpaperType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperResId:I

    sput v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I

    sput-boolean v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mUpdatedAdminWallpaperValue:Z

    sput-boolean v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mAdminWallpaper:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5

    if-nez p0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    invoke-static {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->writeWallpaperInfoAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getDefaultInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-static {p0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->writeWallpaperInfoAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static checkWhiteLockscreenWallpaper(Landroid/graphics/drawable/BitmapDrawable;)Z
    .locals 17

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v15, 0x3

    :try_start_0
    new-array v5, v15, [F

    const/4 v6, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    div-int/lit8 v3, v15, 0x2

    if-le v12, v3, :cond_1

    int-to-float v15, v3

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v15, v15, v16

    float-to-int v8, v15

    :goto_0
    if-gtz v8, :cond_0

    const/4 v8, 0x1

    :cond_0
    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_3

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v3, :cond_2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v15

    invoke-static {v15, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v15, 0x1

    aget v15, v5, v15

    add-float/2addr v9, v15

    const/4 v15, 0x2

    aget v15, v5, v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-float/2addr v10, v15

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v14, v8

    goto :goto_2

    :cond_1
    int-to-float v15, v12

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v15, v15, v16

    float-to-int v8, v15

    goto :goto_0

    :cond_2
    add-int/2addr v13, v8

    goto :goto_1

    :cond_3
    int-to-float v15, v6

    div-float v7, v9, v15

    int-to-float v15, v6

    div-float v11, v10, v15

    const v15, 0x3d75c28f    # 0.06f

    cmpg-float v15, v7, v15

    if-gez v15, :cond_4

    const v15, 0x3f733333    # 0.95f

    cmpl-float v15, v11, v15

    if-ltz v15, :cond_4

    const/4 v15, 0x1

    :goto_3
    return v15

    :catch_0
    move-exception v15

    :cond_4
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v15, 0x3

    :try_start_1
    new-array v5, v15, [F

    const/4 v6, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    div-int/lit8 v4, v15, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v12, v4, :cond_6

    int-to-float v15, v4

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v15, v15, v16

    float-to-int v8, v15

    :goto_4
    if-gtz v8, :cond_5

    const/4 v8, 0x1

    :cond_5
    const/4 v13, 0x0

    :goto_5
    if-ge v13, v12, :cond_8

    move v14, v4

    :goto_6
    if-ge v14, v3, :cond_7

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v15

    invoke-static {v15, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v15, 0x1

    aget v15, v5, v15

    add-float/2addr v9, v15

    const/4 v15, 0x2

    aget v15, v5, v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-float/2addr v10, v15

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v14, v8

    goto :goto_6

    :cond_6
    int-to-float v15, v12

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v15, v15, v16

    float-to-int v8, v15

    goto :goto_4

    :cond_7
    add-int/2addr v13, v8

    goto :goto_5

    :cond_8
    int-to-float v15, v6

    div-float v7, v9, v15

    int-to-float v15, v6

    div-float v11, v10, v15

    const v15, 0x3d75c28f    # 0.06f

    cmpg-float v15, v7, v15

    if-gez v15, :cond_9

    const v15, 0x3f733333    # 0.95f

    cmpl-float v15, v11, v15

    if-ltz v15, :cond_9

    const/4 v15, 0x1

    goto :goto_3

    :catch_1
    move-exception v15

    :cond_9
    const/4 v15, 0x0

    goto :goto_3
.end method

.method public static getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lockscreen_wallpaper_path"

    const/4 v8, -0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const-string v6, "KeyguardEffectViewUtil"

    const-string v7, "checkWhiteLockscreenWallpaper() start"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->checkWhiteLockscreenWallpaper(Landroid/graphics/drawable/BitmapDrawable;)Z

    move-result v1

    const-string v6, "KeyguardEffectViewUtil"

    const-string v7, "checkWhiteLockscreenWallpaper() end"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "white_lockscreen_wallpaper"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_2

    move v2, v4

    :goto_0
    if-eq v2, v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "white_lockscreen_wallpaper"

    if-eqz v1, :cond_3

    :goto_1
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v4, "KeyguardEffectViewUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "whiteLockscreenWallpaper : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0

    :cond_2
    move v2, v5

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method public static getCurrentWallpaper(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 11

    const/4 v6, 0x0

    const/4 v10, 0x1

    if-nez p0, :cond_0

    :goto_0
    return-object v6

    :cond_0
    sput-object p1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    const-string v7, "KeyguardEffectViewUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCurrentWallpaper() mWallpaperPath : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getDefaultLonglifeInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    const-string v6, "KeyguardEffectViewUtil"

    const-string v7, "EmergencyMode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_1

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v4, v6, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-static {p0, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isAdminWallpaper()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    sput-object v7, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    :try_start_1
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v4, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    const/4 v7, 0x1

    sput v7, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I

    invoke-static {p0, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v7, "KeyguardEffectViewUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Loading Admin wallpaper EX:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    const/4 v6, 0x0

    sput v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I

    :cond_3
    sget-object v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    const-string v7, "com.sec.android.slidingGallery"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getScaledBitmapDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    sput v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I

    invoke-static {p0, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    goto/16 :goto_0

    :cond_4
    sget-object v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    if-nez v6, :cond_5

    const-string v6, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    sput-object v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    :cond_5
    new-instance v2, Ljava/io/File;

    sget-object v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_6

    :try_start_2
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v6, 0x1

    :try_start_3
    sput v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I

    invoke-static {p0, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v6

    goto/16 :goto_0

    :catch_2
    move-exception v1

    :goto_2
    invoke-static {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getDefaultWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    goto/16 :goto_0

    :cond_6
    invoke-static {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getDefaultWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    goto/16 :goto_0

    :catch_3
    move-exception v1

    move-object v4, v5

    goto :goto_2
.end method

.method public static getDefaultInputStream(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget v0, Lcom/android/keyguard/R$drawable;->keyguard_default_wallpaper:I

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperResId:I

    const/4 v0, 0x2

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDefaultLonglifeInputStream(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget v0, Lcom/android/keyguard/R$drawable;->keyguard_longlife_wallpaper_black:I

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperResId:I

    const/4 v0, 0x2

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDefaultWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 19

    if-nez p0, :cond_0

    const/16 v17, 0x0

    :goto_0
    return-object v17

    :cond_0
    new-instance v4, Ljava/io/File;

    const-string v17, "//system/wallpaper/lockscreen_default_wallpaper.jpg"

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    const-string v17, "//system/csc_contents/lockscreen_default_wallpaper.jpg"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    const-string v17, "//system/wallpaper/lockscreen_default_wallpaper.png"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    const-string v17, "//system/csc_contents/lockscreen_default_wallpaper.png"

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v15, 0x0

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_5

    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v17, "//system/csc_contents/lockscreen_default_wallpaper.png"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const-string v17, "//system/csc_contents/lockscreen_default_wallpaper.png"

    sput-object v17, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    const/16 v17, 0x1

    sput v17, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    move-object v10, v11

    :cond_1
    :goto_1
    if-nez v10, :cond_2

    invoke-static/range {p0 .. p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getDefaultInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getDefaultInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    :cond_2
    if-eqz v10, :cond_4

    new-instance v12, Landroid/util/DisplayMetrics;

    invoke-direct {v12}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v17, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    div-int v17, v9, v17

    iget v0, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v18, v0

    div-int v18, v8, v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v13

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ge v13, v0, :cond_3

    const/4 v13, 0x1

    :cond_3
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v13, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-static {v10, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    new-instance v15, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v17

    goto/16 :goto_0

    :catch_0
    move-exception v3

    :goto_3
    const/4 v10, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_6

    :try_start_3
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    const-string v17, "//system/csc_contents/lockscreen_default_wallpaper.jpg"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const-string v17, "//system/csc_contents/lockscreen_default_wallpaper.jpg"

    sput-object v17, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    const/16 v17, 0x1

    sput v17, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    move-object v10, v11

    goto/16 :goto_1

    :catch_1
    move-exception v3

    :goto_4
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_7

    :try_start_5
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    const-string v17, "//system/wallpaper/lockscreen_default_wallpaper.png"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const-string v17, "//system/wallpaper/lockscreen_default_wallpaper.png"

    sput-object v17, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    const/16 v17, 0x1

    sput v17, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    move-object v10, v11

    goto/16 :goto_1

    :catch_2
    move-exception v3

    :goto_5
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_1

    :try_start_7
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :try_start_8
    const-string v17, "//system/wallpaper/lockscreen_default_wallpaper.jpg"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const-string v17, "//system/wallpaper/lockscreen_default_wallpaper.jpg"

    sput-object v17, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    const/16 v17, 0x1

    sput v17, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    move-object v10, v11

    goto/16 :goto_1

    :catch_3
    move-exception v3

    :goto_6
    const/4 v10, 0x0

    goto/16 :goto_1

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_5
    move-exception v3

    move-object v10, v11

    goto :goto_6

    :catch_6
    move-exception v3

    move-object v10, v11

    goto :goto_5

    :catch_7
    move-exception v3

    move-object v10, v11

    goto :goto_4

    :catch_8
    move-exception v3

    move-object v10, v11

    goto :goto_3
.end method

.method public static getPreferredConfigBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x0

    if-nez p0, :cond_1

    move-object p0, v4

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    if-eq v5, p1, :cond_0

    const-string v5, "KeyguardEffectViewUtil"

    const-string v6, "start to convert album art"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-lez v3, :cond_2

    if-gtz v2, :cond_3

    :cond_2
    move-object p0, v4

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v5, v6, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, p0, v7, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static getWallpaperType(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardProperties;->isDcmLauncherWithoutSecure(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    goto :goto_0
.end method

.method public static isAdminWallpaper()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mUpdatedAdminWallpaperValue:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->updateIsAdminWallpaper()V

    :cond_0
    sget-boolean v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mAdminWallpaper:Z

    return v0
.end method

.method public static isHomeWallpaper(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getWallpaperType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKeyguardEffectViewWallpaper(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isAdminWallpaper()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isHomeWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLiveWallpaper(Landroid/content/Context;)Z
    .locals 4

    invoke-static {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getWallpaperType(Landroid/content/Context;)I

    move-result v0

    const-string v1, "KeyguardEffectViewUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wallpaperType :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isOpenThemeWallpaperEnabled(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "opne_theme_effect_lockscreen_wallpaper"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "current_sec_theme_package_open_theme"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isZoomPanningEffectEnabled(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isPowerSavingMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_zoom_panning_effect"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_1
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static updateIsAdminWallpaper()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mUpdatedAdminWallpaperValue:Z

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mAdminWallpaper:Z

    return-void
.end method

.method public static writeKeyguardCurrentWallpaperInfo(Landroid/content/Context;)V
    .locals 4

    const/4 v3, -0x2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "KeyguardEffectViewUtil"

    const-string v1, "set current wallpaper info"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_current_wallpaper_type"

    sget v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_current_wallpaper_file_path"

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_current_wallpaper_res_id"

    sget v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperResId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public static writeKeyguardDefaultWallpaperResId(Landroid/content/Context;)V
    .locals 4

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "KeyguardEffectViewUtil"

    const-string v1, "set resource id"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_default_wallpaper_res_id"

    sget v2, Lcom/android/keyguard/R$drawable;->keyguard_default_wallpaper:I

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method private static writeWallpaperInfoAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    invoke-static {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->writeKeyguardCurrentWallpaperInfo(Landroid/content/Context;)V

    return-object p1
.end method
