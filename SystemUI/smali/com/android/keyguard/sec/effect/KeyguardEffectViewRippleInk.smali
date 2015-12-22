.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;
.super Lcom/samsung/android/visualeffect/EffectView;
.source "KeyguardEffectViewRippleInk.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;
    }
.end annotation


# static fields
.field private static final DOWN_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_ripple_down.ogg"

.field public static final UPDATE_TYPE_CHANGE_BACKGROUND:I = 0x1

.field public static final UPDATE_TYPE_USER_SWITCHING:I = 0x2

.field private static final UP_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_ripple_up.ogg"

.field private static mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;


# instance fields
.field final SOUND_ID_DOWN:I

.field final SOUND_ID_DRAG:I

.field private final TAG:Ljava/lang/String;

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private isSystemSoundChecked:Z

.field private isUnlocked:Z

.field keyguardManager:Landroid/app/KeyguardManager;

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;

.field private mListener:Lcom/samsung/android/visualeffect/IEffectListener;

.field private mSoundPool:Landroid/media/SoundPool;

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private rightVolumeMax:F

.field soundMsg:Landroid/os/Message;

.field private sounds:[I

.field private windowHeight:I

.field private windowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/LockSoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    const-string v0, "RippleInk_KeyguardEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->TAG:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->leftVolumeMax:F

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->rightVolumeMax:F

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->UNLOCK_SOUND_PLAY_TIME:J

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->releaseSoundRunnable:Ljava/lang/Runnable;

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->isSystemSoundChecked:Z

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->sounds:[I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->SOUND_ID_DOWN:I

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->SOUND_ID_DRAG:I

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->isUnlocked:Z

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->windowWidth:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->windowHeight:I

    invoke-direct {p0, p1, v3, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 5

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    const-string v0, "RippleInk_KeyguardEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->TAG:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->leftVolumeMax:F

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->rightVolumeMax:F

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->UNLOCK_SOUND_PLAY_TIME:J

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->releaseSoundRunnable:Ljava/lang/Runnable;

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->isSystemSoundChecked:Z

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->sounds:[I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->SOUND_ID_DOWN:I

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->SOUND_ID_DRAG:I

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->isUnlocked:Z

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->windowWidth:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->windowHeight:I

    invoke-direct {p0, p1, p2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V
    .locals 5

    const/4 v4, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    const-string v0, "RippleInk_KeyguardEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->TAG:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->leftVolumeMax:F

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->rightVolumeMax:F

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->UNLOCK_SOUND_PLAY_TIME:J

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->releaseSoundRunnable:Ljava/lang/Runnable;

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->isSystemSoundChecked:Z

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->sounds:[I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->SOUND_ID_DOWN:I

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->SOUND_ID_DRAG:I

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->isUnlocked:Z

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->windowWidth:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->windowHeight:I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->playSound(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;)Landroid/media/SoundPool;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->isUnlocked:Z

    return p1
.end method

.method private checkSound()V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "lockscreen_sounds_enabled"

    const/4 v4, -0x2

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    if-ne v2, v5, :cond_0

    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->isSystemSoundChecked:Z

    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->isSystemSoundChecked:Z

    goto :goto_1
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;
    .locals 1

    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-object v0
.end method

.method private init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V
    .locals 8

    const/16 v7, 0x8

    const-string v4, "RippleInk_KeyguardEffect"

    const-string v5, "KeyguardEffectViewRippleInk Constructor"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->keyguardManager:Landroid/app/KeyguardManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->windowWidth:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->windowHeight:I

    const-string v4, "RippleInk_KeyguardEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KeyguardEffectViewRippleInk windowWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->windowWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", windowHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->windowHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->setEffect(I)V

    new-instance v0, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    invoke-virtual {v0, v7}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    iget-object v4, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->rippleInkData:Lcom/samsung/android/visualeffect/lock/data/RippleInkData;

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->windowWidth:I

    iput v5, v4, Lcom/samsung/android/visualeffect/lock/data/RippleInkData;->windowWidth:I

    iget-object v4, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->rippleInkData:Lcom/samsung/android/visualeffect/lock/data/RippleInkData;

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->windowHeight:I

    iput v5, v4, Lcom/samsung/android/visualeffect/lock/data/RippleInkData;->windowHeight:I

    iget-object v4, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->rippleInkData:Lcom/samsung/android/visualeffect/lock/data/RippleInkData;

    sget v5, Lcom/android/keyguard/R$drawable;->reflectionmap:I

    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/visualeffect/lock/data/RippleInkData;->reflectionBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->init(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    const/4 v4, 0x2

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->sounds:[I

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "Bitmap"

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->handleCustomEvent(ILjava/util/HashMap;)V

    new-instance v4, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$1;

    invoke-direct {v4, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mListener:Lcom/samsung/android/visualeffect/IEffectListener;

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mListener:Lcom/samsung/android/visualeffect/IEffectListener;

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->setListener(Lcom/samsung/android/visualeffect/IEffectListener;)V

    return-void
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private makeResBitmap(I)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private makeSound()V
    .locals 6

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->stopReleaseSound()V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isEffectProcessSeparated()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_1

    const-string v1, "RippleInk_KeyguardEffect"

    const-string v2, "WaterColor sound : new SoundPool"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->sounds:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;

    const-string v4, "/system/media/audio/ui/ve_ripple_down.ogg"

    invoke-virtual {v3, v4, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->sounds:[I

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;

    const-string v3, "/system/media/audio/ui/ve_ripple_up.ogg"

    invoke-virtual {v2, v3, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v5

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;

    if-nez v1, :cond_2

    const-string v1, "RippleInk_KeyguardEffect"

    const-string v2, "new SoundHandler()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;

    :cond_2
    return-void
.end method

.method private playSound(I)V
    .locals 8

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->checkSound()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->stopReleaseSound()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    const-string v0, "RippleInk_KeyguardEffect"

    const-string v1, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->makeSound()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->isSystemSoundChecked:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->rightVolumeMax:F

    const/high16 v6, 0x3f800000    # 1.0f

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->soundMsg:Landroid/os/Message;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->soundMsg:Landroid/os/Message;

    add-int/lit8 v1, v7, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->soundMsg:Landroid/os/Message;

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->soundMsg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method private releaseSound()V
    .locals 4

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$2;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->releaseSoundRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setBackground()Landroid/graphics/Bitmap;
    .locals 5

    const-string v2, "RippleInk_KeyguardEffect"

    const-string v3, "setBackground"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "RippleInk_KeyguardEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pBitmap.width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pBitmap.height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_0
    const-string v2, "RippleInk_KeyguardEffect"

    const-string v3, "pBitmap is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "RippleInk_KeyguardEffect"

    const-string v3, "newBitmapDrawable is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopReleaseSound()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->releaseSoundRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 4

    const-string v0, "RippleInk_KeyguardEffect"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->stopReleaseSound()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->releaseSound()V

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$3;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;)V

    const-wide/16 v2, 0x190

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->isUnlocked:Z

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    goto :goto_0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    const-string v0, "RippleInk_KeyguardEffect"

    const-string v1, "handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->isUnlocked:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/visualeffect/EffectView;->onDetachedFromWindow()V

    const-string v0, "RippleInk_KeyguardEffect"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;->onWindowFocusChanged(Z)V

    const-string v0, "RippleInk_KeyguardEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged hasWindowFocus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->isUnlocked:Z

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public playLockSound()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "RippleInk_KeyguardEffect"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->clearScreen()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->isUnlocked:Z

    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    const-string v0, "RippleInk_KeyguardEffect"

    const-string v1, "screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    const-string v0, "RippleInk_KeyguardEffect"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->isUnlocked:Z

    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 4

    const-string v1, "RippleInk_KeyguardEffect"

    const-string v2, "setContextualWallpaper"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v1, "RippleInk_KeyguardEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bmp is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getPreferredConfigBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Bitmap"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->handleCustomEvent(ILjava/util/HashMap;)V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 2

    const-string v0, "RippleInk_KeyguardEffect"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->makeSound()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->reInit(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->clearScreen()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->isUnlocked:Z

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "StartDelay"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Rect"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->handleCustomEvent(ILjava/util/HashMap;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->isUnlocked:Z

    return-void
.end method

.method public update()V
    .locals 3

    const-string v1, "RippleInk_KeyguardEffect"

    const-string v2, "update"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Bitmap"

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->handleCustomEvent(ILjava/util/HashMap;)V

    return-void
.end method

.method public update(I)V
    .locals 3

    const-string v1, "RippleInk_KeyguardEffect"

    const-string v2, "changeBackground()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Bitmap"

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->handleCustomEvent(ILjava/util/HashMap;)V

    return-void
.end method

.method public updateAfterCreation()V
    .locals 0

    return-void
.end method
