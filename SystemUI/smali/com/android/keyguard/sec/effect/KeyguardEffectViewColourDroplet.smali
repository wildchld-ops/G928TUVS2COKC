.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;
.super Lcom/samsung/android/visualeffect/EffectView;
.source "KeyguardEffectViewColourDroplet.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;
    }
.end annotation


# static fields
.field private static final LOCK_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_colourdroplet_lock.ogg"

.field private static final MSG_REGISTER_ACCELROMETER:I = 0x3e7

.field private static final TAP_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_colourdroplet_tap.ogg"

.field private static final UNLOCK_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_colourdroplet_unlock.ogg"

.field private static mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;


# instance fields
.field private final DBG:Z

.field final SOUND_ID_TAB:I

.field final SOUND_ID_UNLOCK:I

.field private final TAG:Ljava/lang/String;

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private cpuMinValue:I

.field private gpuMaxValue:I

.field private hasWindowFocus:Z

.field private isSystemSoundChecked:Z

.field private isUnlocked:Z

.field keyguardManager:Landroid/app/KeyguardManager;

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field private mEffectHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;

.field private mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

.field private mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mTouchFlagForMobileKeyboard:Z

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private rightVolumeMax:F

.field private sounds:[I

.field private useCPUMinClock:Z

.field private useGPUMaxClock:Z

.field private windowHeight:I

.field private windowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;

    const-string v1, "/system/media/audio/ui/ve_colourdroplet_lock.ogg"

    const-string v2, "/system/media/audio/ui/ve_colourdroplet_unlock.ogg"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/LockSoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    const-string v0, "KeyguardEffectViewColourDroplet"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->TAG:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSoundPool:Landroid/media/SoundPool;

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->sounds:[I

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->UNLOCK_SOUND_PLAY_TIME:J

    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->leftVolumeMax:F

    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->rightVolumeMax:F

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->SOUND_ID_TAB:I

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->SOUND_ID_UNLOCK:I

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->isSystemSoundChecked:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->DBG:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->isUnlocked:Z

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->windowWidth:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->windowHeight:I

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useGPUMaxClock:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useCPUMinClock:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->hasWindowFocus:Z

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSensor:Landroid/hardware/Sensor;

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mTouchFlagForMobileKeyboard:Z

    invoke-direct {p0, p1, v3, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    const-string v0, "KeyguardEffectViewColourDroplet"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->TAG:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSoundPool:Landroid/media/SoundPool;

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->sounds:[I

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->UNLOCK_SOUND_PLAY_TIME:J

    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->leftVolumeMax:F

    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->rightVolumeMax:F

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->SOUND_ID_TAB:I

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->SOUND_ID_UNLOCK:I

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->isSystemSoundChecked:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->DBG:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->isUnlocked:Z

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->windowWidth:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->windowHeight:I

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useGPUMaxClock:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useCPUMinClock:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->hasWindowFocus:Z

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSensor:Landroid/hardware/Sensor;

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mTouchFlagForMobileKeyboard:Z

    invoke-direct {p0, p1, p2, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    const-string v0, "KeyguardEffectViewColourDroplet"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->TAG:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSoundPool:Landroid/media/SoundPool;

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->sounds:[I

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->UNLOCK_SOUND_PLAY_TIME:J

    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->leftVolumeMax:F

    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->rightVolumeMax:F

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->SOUND_ID_TAB:I

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->SOUND_ID_UNLOCK:I

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->isSystemSoundChecked:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->DBG:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->isUnlocked:Z

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->windowWidth:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->windowHeight:I

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useGPUMaxClock:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useCPUMinClock:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->hasWindowFocus:Z

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSensor:Landroid/hardware/Sensor;

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mTouchFlagForMobileKeyboard:Z

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->update(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mTouchFlagForMobileKeyboard:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mTouchFlagForMobileKeyboard:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)Landroid/media/SoundPool;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->registerAccelrometer()V

    return-void
.end method

.method private checkSound()V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    const-string v3, "lockscreen_sounds_enabled"

    const/4 v4, -0x2

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    if-ne v2, v5, :cond_0

    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->isSystemSoundChecked:Z

    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->isSystemSoundChecked:Z

    goto :goto_1
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;
    .locals 1

    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-object v0
.end method

.method private init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V
    .locals 10

    const v9, 0x9c40

    const/16 v8, 0x11

    const/16 v7, 0x10

    const/4 v6, 0x1

    const-string v3, "KeyguardEffectViewColourDroplet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KeyguardEffectViewColourDroplet Constructor mWallpaperProcessSeparated = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mEffectHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;

    if-nez v3, :cond_0

    const-string v3, "KeyguardEffectViewColourDroplet"

    const-string v4, "new EffectHandler()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mEffectHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;

    :cond_0
    iput-object p2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    new-instance v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->keyguardManager:Landroid/app/KeyguardManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->windowWidth:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->windowHeight:I

    if-eqz p3, :cond_5

    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->setEffect(I)V

    :goto_0
    new-instance v0, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    invoke-virtual {v0, v7}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    iget-object v3, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->colorDroplet:Lcom/samsung/android/visualeffect/lock/data/ColourDropletData;

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->windowWidth:I

    iput v4, v3, Lcom/samsung/android/visualeffect/lock/data/ColourDropletData;->windowWidth:I

    iget-object v3, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->colorDroplet:Lcom/samsung/android/visualeffect/lock/data/ColourDropletData;

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->windowHeight:I

    iput v4, v3, Lcom/samsung/android/visualeffect/lock/data/ColourDropletData;->windowHeight:I

    iget-object v3, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->colorDroplet:Lcom/samsung/android/visualeffect/lock/data/ColourDropletData;

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

    iput-object v4, v3, Lcom/samsung/android/visualeffect/lock/data/ColourDropletData;->mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

    iget-object v3, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->colorDroplet:Lcom/samsung/android/visualeffect/lock/data/ColourDropletData;

    sget v4, Lcom/android/keyguard/R$drawable;->normal_low_z_256:I

    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/visualeffect/lock/data/ColourDropletData;->resNormal:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->windowWidth:I

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->windowHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/16 v4, 0x2d0

    if-lt v3, v4, :cond_6

    iget-object v3, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->colorDroplet:Lcom/samsung/android/visualeffect/lock/data/ColourDropletData;

    sget v4, Lcom/android/keyguard/R$drawable;->edge_density_720:I

    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/visualeffect/lock/data/ColourDropletData;->resEdgeDensity:Landroid/graphics/Bitmap;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->init(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->sounds:[I

    iput-boolean v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useGPUMaxClock:Z

    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useGPUMaxClock:Z

    if-eqz v3, :cond_1

    const-string v3, "350"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->gpuMaxValue:I

    :cond_1
    iput-boolean v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useCPUMinClock:Z

    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useCPUMinClock:Z

    if-eqz v3, :cond_2

    const-string v3, "1300000"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->cpuMinValue:I

    :cond_2
    const-string v3, "KeyguardEffectViewColourDroplet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "useGPUMaxClock = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useGPUMaxClock:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", gpuMaxValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->gpuMaxValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "KeyguardEffectViewColourDroplet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "useCPUMinClock = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useCPUMinClock:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cpuMinValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->cpuMinValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useGPUMaxClock:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->gpuMaxValue:I

    invoke-static {v3, v8, v4, v9}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->setLimit(Landroid/content/Context;III)V

    :cond_3
    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useCPUMinClock:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mContext:Landroid/content/Context;

    const/16 v4, 0xc

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->cpuMinValue:I

    invoke-static {v3, v4, v5, v9}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->setLimit(Landroid/content/Context;III)V

    :cond_4
    const-string v3, "sensor"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSensor:Landroid/hardware/Sensor;

    return-void

    :cond_5
    invoke-virtual {p0, v8}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->setEffect(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v3, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->colorDroplet:Lcom/samsung/android/visualeffect/lock/data/ColourDropletData;

    sget v4, Lcom/android/keyguard/R$drawable;->edge_density_360:I

    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/visualeffect/lock/data/ColourDropletData;->resEdgeDensity:Landroid/graphics/Bitmap;

    goto/16 :goto_1
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
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mContext:Landroid/content/Context;

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

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->stopReleaseSound()V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isEffectProcessSeparated()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_1

    const-string v1, "KeyguardEffectViewColourDroplet"

    const-string v2, "sound : new SoundPool"

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

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->sounds:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSoundPool:Landroid/media/SoundPool;

    const-string v4, "/system/media/audio/ui/ve_colourdroplet_tap.ogg"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSoundPool:Landroid/media/SoundPool;

    new-instance v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$3;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)V

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    :cond_1
    return-void
.end method

.method private playSound(I)V
    .locals 7

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->checkSound()V

    const-string v0, "KeyguardEffectViewColourDroplet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOUND PLAY mSoundPool = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSystemSoundChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->isSystemSoundChecked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    const-string v0, "KeyguardEffectViewColourDroplet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOUND PLAY soundId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->rightVolumeMax:F

    const/high16 v6, 0x3f800000    # 1.0f

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_0
    return-void
.end method

.method private registerAccelrometer()V
    .locals 3

    const-string v0, "KeyguardEffectViewColourDroplet"

    const-string v1, "registerAccelrometer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method private releaseSound()V
    .locals 4

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$4;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setBackground()Landroid/graphics/Bitmap;
    .locals 6

    const-string v3, "KeyguardEffectViewColourDroplet"

    const-string v4, "setBackground"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v3, "KeyguardEffectViewColourDroplet"

    const-string v4, "newBitmapDrawable  is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v3, "KeyguardEffectViewColourDroplet"

    const-string v4, "pBitmap  is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    goto :goto_0

    :cond_1
    const-string v3, "KeyguardEffectViewColourDroplet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pBitmap.width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pBitmap.height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    goto :goto_0
.end method

.method private stopReleaseSound()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private unregisterAccelrometer()V
    .locals 2

    const-string v0, "KeyguardEffectViewColourDroplet"

    const-string v1, "unregisterAccelrometer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mEffectHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method private update(Landroid/graphics/Bitmap;I)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Bitmap"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->handleCustomEvent(ILjava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 4

    const-string v0, "KeyguardEffectViewColourDroplet"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->stopReleaseSound()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->releaseSound()V

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$2;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->isUnlocked:Z

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useCPUMinClock:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->unregisterAccelrometer()V

    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    const-wide/16 v0, 0x190

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->isUnlocked:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mTouchFlagForMobileKeyboard:Z

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "KeyguardEffectViewColourDroplet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent return : isUnlocked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->isUnlocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mTouchFlag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mTouchFlagForMobileKeyboard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_4

    const-string v1, "KeyguardEffectViewColourDroplet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_DOWN, mTouchFlag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mTouchFlagForMobileKeyboard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->stopReleaseSound()V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_2

    const-string v1, "KeyguardEffectViewColourDroplet"

    const-string v2, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->makeSound()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->checkSound()V

    :cond_2
    const-string v1, "KeyguardEffectViewColourDroplet"

    const-string v2, "SOUND PLAY SOUND_ID_TAB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->playSound(I)V

    :cond_3
    :goto_1
    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    if-eq v0, v4, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    goto :goto_1
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    const-string v0, "KeyguardEffectViewColourDroplet"

    const-string v1, "handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->handleCustomEvent(ILjava/util/HashMap;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->isUnlocked:Z

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->unregisterAccelrometer()V

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/visualeffect/EffectView;->onAttachedToWindow()V

    const-string v0, "KeyguardEffectViewColourDroplet"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/visualeffect/EffectView;->onDetachedFromWindow()V

    const-string v0, "KeyguardEffectViewColourDroplet"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->unregisterAccelrometer()V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "CustomEvent"

    const-string v2, "SensorEvent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "EventObject"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x63

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->handleCustomEvent(ILjava/util/HashMap;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5

    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/visualeffect/EffectView;->onSizeChanged(IIII)V

    const-string v2, "KeyguardEffectViewColourDroplet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSizeChanged, width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldw = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldh ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->windowWidth:I

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit8 v1, v2, 0x5

    if-lt p1, v1, :cond_0

    if-lt p2, v1, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->windowWidth:I

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ne v2, p1, :cond_0

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->windowHeight:I

    if-gt v2, p2, :cond_2

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->windowHeight:I

    if-ne v2, p2, :cond_0

    :cond_2
    if-ne p1, p3, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "CustomEvent"

    const-string v3, "ForceDirty"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "EventObject"

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x63

    invoke-virtual {p0, v2, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->handleCustomEvent(ILjava/util/HashMap;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mTouchFlagForMobileKeyboard:Z

    const-string v2, "KeyguardEffectViewColourDroplet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSizeChanged called!!! mTouchFlagForMobileKeyboard = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mTouchFlagForMobileKeyboard:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;->onWindowFocusChanged(Z)V

    const-string v0, "KeyguardEffectViewColourDroplet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged : hasWindowFocus - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useCPUMinClock:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->unregisterAccelrometer()V

    :cond_2
    return-void
.end method

.method public playLockSound()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "KeyguardEffectViewColourDroplet"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->clearScreen()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->isUnlocked:Z

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useCPUMinClock:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    :cond_1
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    const-string v0, "KeyguardEffectViewColourDroplet"

    const-string v1, "screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->handleCustomEvent(ILjava/util/HashMap;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->isUnlocked:Z

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useCPUMinClock:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->unregisterAccelrometer()V

    return-void
.end method

.method public screenTurnedOn()V
    .locals 4

    const-string v1, "KeyguardEffectViewColourDroplet"

    const-string v2, "screenTurnedOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->handleCustomEvent(ILjava/util/HashMap;)V

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useGPUMaxClock:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->hasWindowFocus:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    invoke-static {v1}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->lock(I)V

    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->useCPUMinClock:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->hasWindowFocus:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->lock(I)V

    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x3e7

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mEffectHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "KeyguardEffectViewColourDroplet"

    const-string v5, "setContextualWallpaper"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v2, "KeyguardEffectViewColourDroplet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bmp is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getPreferredConfigBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v4, "KeyguardEffectViewColourDroplet"

    const-string v5, "changeBackground()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_wallpaper_transparent"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v0, v2

    :goto_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportBlendedFilter()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    const-string v4, "KeyguardEffectViewColourDroplet"

    const-string v5, "setContextualWallpaper - VignettingEffect is applyed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/sec/effect/VignettingEffect;->applyBlendedFilter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->update(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->update(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 3

    const-string v0, "KeyguardEffectViewColourDroplet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHidden() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "KeyguardEffectViewColourDroplet"

    const-string v1, "setHidden() - call screenTurnedOn() cause by SHOW_WHEN_LOCKED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->screenTurnedOn()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    const-string v0, "KeyguardEffectViewColourDroplet"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->reInit(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->clearScreen()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->isUnlocked:Z

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->makeSound()V

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3

    const-string v1, "KeyguardEffectViewColourDroplet"

    const-string v2, "showUnlockAffordance"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "StartDelay"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Rect"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->handleCustomEvent(ILjava/util/HashMap;)V

    return-void
.end method

.method public update()V
    .locals 2

    const-string v0, "KeyguardEffectViewColourDroplet"

    const-string v1, "update(0)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->update(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public updateAfterCreation()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->update()V

    return-void
.end method
