.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;
.super Lcom/samsung/android/visualeffect/EffectView;
.source "KeyguardEffectViewSparklingBubbles.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# static fields
.field private static final DRAG_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_sparklingbubbles_drag.ogg"

.field private static final LOCK_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_sparklingbubbles_lock.ogg"

.field private static final TAP_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_sparklingbubbles_tap.ogg"

.field private static final UNLOCK_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_sparklingbubbles_unlock.ogg"

.field private static mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;


# instance fields
.field private final DBG:Z

.field final SOUND_ID_DRAG:I

.field final SOUND_ID_TAB:I

.field private final TAG:Ljava/lang/String;

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private cpuMinValue:I

.field private dragSoudMinusOffset:F

.field private dragSoudVolume:F

.field private dragStreamID:I

.field private gpuMaxValue:I

.field private hasWindowFocus:Z

.field private isEmptyRender:Z

.field private isFadeOutSound:Z

.field private isSystemSoundChecked:Z

.field private isUnlocked:Z

.field keyguardManager:Landroid/app/KeyguardManager;

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field private mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

.field private mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

.field mLongPressTime:J

.field private mPreTouchX:F

.field private mPreTouchY:F

.field private mSoundPool:Landroid/media/SoundPool;

.field private mTouchFlagForMobileKeyboard:Z

.field private mWallpaperPath:Ljava/lang/String;

.field private prevOrientation:I

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private rightVolumeMax:F

.field private sounds:[I

.field private touchDownTime:J

.field private touchMoveDiffTime:J

.field private useCPUMinClock:Z

.field private useGPUMaxClock:Z

.field private windowHeight:I

.field private windowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;

    const-string v1, "/system/media/audio/ui/ve_sparklingbubbles_lock.ogg"

    const-string v2, "/system/media/audio/ui/ve_sparklingbubbles_unlock.ogg"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/LockSoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;-><init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    const-string v0, "SparklingBubbles_Keyguard"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mWallpaperPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->sounds:[I

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->UNLOCK_SOUND_PLAY_TIME:J

    iput-wide v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->touchDownTime:J

    iput-wide v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->touchMoveDiffTime:J

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->leftVolumeMax:F

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->rightVolumeMax:F

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->SOUND_ID_TAB:I

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->SOUND_ID_DRAG:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragStreamID:I

    const-wide/16 v0, 0x44c

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mLongPressTime:J

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudVolume:F

    const v0, 0x3d23d70a    # 0.04f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudMinusOffset:F

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isFadeOutSound:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isSystemSoundChecked:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->DBG:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isUnlocked:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->prevOrientation:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->windowWidth:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->windowHeight:I

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useGPUMaxClock:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useCPUMinClock:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->hasWindowFocus:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mTouchFlagForMobileKeyboard:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isEmptyRender:Z

    invoke-direct {p0, p1, p2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V
    .locals 8

    const-wide/16 v6, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    const-string v0, "SparklingBubbles_Keyguard"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mWallpaperPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->sounds:[I

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->UNLOCK_SOUND_PLAY_TIME:J

    iput-wide v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->touchDownTime:J

    iput-wide v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->touchMoveDiffTime:J

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->leftVolumeMax:F

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->rightVolumeMax:F

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->SOUND_ID_TAB:I

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->SOUND_ID_DRAG:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragStreamID:I

    const-wide/16 v0, 0x44c

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mLongPressTime:J

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudVolume:F

    const v0, 0x3d23d70a    # 0.04f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudMinusOffset:F

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isFadeOutSound:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isSystemSoundChecked:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->DBG:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isUnlocked:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->prevOrientation:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->windowWidth:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->windowHeight:I

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useGPUMaxClock:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useCPUMinClock:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->hasWindowFocus:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mTouchFlagForMobileKeyboard:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isEmptyRender:Z

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->update(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mTouchFlagForMobileKeyboard:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mTouchFlagForMobileKeyboard:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isEmptyRender:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)Landroid/media/SoundPool;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->fadeOutSound()V

    return-void
.end method

.method private checkSound()V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mContext:Landroid/content/Context;

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

    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isSystemSoundChecked:Z

    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isSystemSoundChecked:Z

    goto :goto_1
.end method

.method private fadeOutSound()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isFadeOutSound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudVolume:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudVolume:F

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragStreamID:I

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudVolume:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudVolume:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudVolume:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudVolume:F

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudMinusOffset:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudVolume:F

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$5;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)V

    const-wide/16 v2, 0xa

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    const-string v0, "SparklingBubbles_Keyguard"

    const-string v1, "SOUND STOP because UP or Unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->stopReleaseSound()V

    goto :goto_0
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;
    .locals 1

    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-object v0
.end method

.method private init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V
    .locals 9

    const v8, 0x9c40

    const/16 v7, 0xe

    const/4 v6, 0x1

    const-string v3, "SparklingBubbles_Keyguard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KeyguardEffectViewSparklingBubbles Constructor mWallpaperProcessSeparated = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    new-instance v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->keyguardManager:Landroid/app/KeyguardManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->windowWidth:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->windowHeight:I

    if-eqz p3, :cond_4

    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->setEffect(I)V

    :goto_0
    new-instance v0, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    invoke-virtual {v0, v7}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    iget-object v3, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->sparklingBubblesData:Lcom/samsung/android/visualeffect/lock/data/SparklingBullesData;

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->windowWidth:I

    iput v4, v3, Lcom/samsung/android/visualeffect/lock/data/SparklingBullesData;->windowWidth:I

    iget-object v3, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->sparklingBubblesData:Lcom/samsung/android/visualeffect/lock/data/SparklingBullesData;

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->windowHeight:I

    iput v4, v3, Lcom/samsung/android/visualeffect/lock/data/SparklingBullesData;->windowHeight:I

    iget-object v3, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->sparklingBubblesData:Lcom/samsung/android/visualeffect/lock/data/SparklingBullesData;

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

    iput-object v4, v3, Lcom/samsung/android/visualeffect/lock/data/SparklingBullesData;->mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

    iget-object v3, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->sparklingBubblesData:Lcom/samsung/android/visualeffect/lock/data/SparklingBullesData;

    sget v4, Lcom/android/keyguard/R$drawable;->blur_mask:I

    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/visualeffect/lock/data/SparklingBullesData;->resBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->init(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->sounds:[I

    iput-boolean v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useGPUMaxClock:Z

    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useGPUMaxClock:Z

    if-eqz v3, :cond_0

    const-string v3, "350"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->gpuMaxValue:I

    :cond_0
    iput-boolean v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useCPUMinClock:Z

    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useCPUMinClock:Z

    if-eqz v3, :cond_1

    const-string v3, "1300000"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->cpuMinValue:I

    :cond_1
    const-string v3, "SparklingBubbles_Keyguard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "useGPUMaxClock = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useGPUMaxClock:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", gpuMaxValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->gpuMaxValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SparklingBubbles_Keyguard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "useCPUMinClock = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useCPUMinClock:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cpuMinValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->cpuMinValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useGPUMaxClock:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mContext:Landroid/content/Context;

    const/16 v4, 0x11

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->gpuMaxValue:I

    invoke-static {v3, v4, v5, v8}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->setLimit(Landroid/content/Context;III)V

    :cond_2
    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useCPUMinClock:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mContext:Landroid/content/Context;

    const/16 v4, 0xc

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->cpuMinValue:I

    invoke-static {v3, v4, v5, v8}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->setLimit(Landroid/content/Context;III)V

    :cond_3
    return-void

    :cond_4
    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->setEffect(I)V

    goto/16 :goto_0
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
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mContext:Landroid/content/Context;

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

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->stopReleaseSound()V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isEffectProcessSeparated()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_1

    const-string v1, "SparklingBubbles_Keyguard"

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

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->sounds:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    const-string v4, "/system/media/audio/ui/ve_sparklingbubbles_tap.ogg"

    invoke-virtual {v3, v4, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->sounds:[I

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    const-string v3, "/system/media/audio/ui/ve_sparklingbubbles_drag.ogg"

    invoke-virtual {v2, v3, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v5

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    new-instance v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$3;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)V

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    :cond_1
    return-void
.end method

.method private playSound(I)V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->checkSound()V

    const-string v0, "SparklingBubbles_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOUND PLAY mSoundPool = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSystemSoundChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isSystemSoundChecked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    const-string v0, "SparklingBubbles_Keyguard"

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

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->rightVolumeMax:F

    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragStreamID:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->rightVolumeMax:F

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method private releaseSound()V
    .locals 4

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$4;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->releaseSoundRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setBackground()Landroid/graphics/Bitmap;
    .locals 6

    const-string v3, "SparklingBubbles_Keyguard"

    const-string v4, "setBackground"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v3, "SparklingBubbles_Keyguard"

    const-string v4, "newBitmapDrawable  is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v3, "SparklingBubbles_Keyguard"

    const-string v4, "pBitmap  is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    goto :goto_0

    :cond_1
    const-string v3, "SparklingBubbles_Keyguard"

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

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->releaseSoundRunnable:Ljava/lang/Runnable;

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

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->handleCustomEvent(ILjava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 4

    const-string v0, "SparklingBubbles_Keyguard"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->stopReleaseSound()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->releaseSound()V

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$2;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isUnlocked:Z

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useCPUMinClock:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    :cond_1
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
    .locals 10

    const v7, 0x3d1fbe77    # 0.039f

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v6, 0x1

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isUnlocked:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mTouchFlagForMobileKeyboard:Z

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "SparklingBubbles_Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent return : isUnlocked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isUnlocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mTouchFlag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mTouchFlagForMobileKeyboard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v6

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    if-nez v0, :cond_6

    const-string v1, "SparklingBubbles_Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_DOWN, mTouchFlag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mTouchFlagForMobileKeyboard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudVolume:F

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isFadeOutSound:Z

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->stopReleaseSound()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->touchDownTime:J

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_3

    const-string v1, "SparklingBubbles_Keyguard"

    const-string v2, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->makeSound()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->checkSound()V

    :cond_3
    const-string v1, "SparklingBubbles_Keyguard"

    const-string v2, "SOUND PLAY SOUND_ID_TAB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->playSound(I)V

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragStreamID:I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragStreamID:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V

    :cond_4
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragStreamID:I

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mPreTouchX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mPreTouchY:F

    goto :goto_0

    :cond_6
    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragStreamID:I

    if-nez v1, :cond_7

    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudVolume:F

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isFadeOutSound:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->touchDownTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->touchMoveDiffTime:J

    iget-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->touchMoveDiffTime:J

    iget-wide v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mLongPressTime:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    iget-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->touchDownTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mPreTouchX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mPreTouchY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x405e000000000000L    # 120.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_1

    const-string v1, "SparklingBubbles_Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SOUND PLAY SOUND_ID_DRAG touchMoveDiff = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->touchMoveDiffTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->playSound(I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mPreTouchX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mPreTouchY:F

    goto/16 :goto_0

    :cond_7
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isEmptyRender:Z

    if-nez v1, :cond_8

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragStreamID:I

    if-eqz v1, :cond_1

    iput v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudMinusOffset:F

    iput-boolean v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isFadeOutSound:Z

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudVolume:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->fadeOutSound()V

    goto/16 :goto_0

    :cond_8
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isFadeOutSound:Z

    if-ne v1, v6, :cond_1

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isFadeOutSound:Z

    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudVolume:F

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragStreamID:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragStreamID:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V

    :cond_9
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragStreamID:I

    goto/16 :goto_0

    :cond_a
    if-eq v0, v6, :cond_b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_b
    const-string v1, "SparklingBubbles_Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragStreamID:I

    if-eqz v1, :cond_1

    iput v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudMinusOffset:F

    iput-boolean v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isFadeOutSound:Z

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudVolume:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->fadeOutSound()V

    goto/16 :goto_0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "SparklingBubbles_Keyguard"

    const-string v1, "handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->handleCustomEvent(ILjava/util/HashMap;)V

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isUnlocked:Z

    const v0, 0x3d71a9fc    # 0.059f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudMinusOffset:F

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isFadeOutSound:Z

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudVolume:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->fadeOutSound()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/visualeffect/EffectView;->onAttachedToWindow()V

    const-string v0, "SparklingBubbles_Keyguard"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/visualeffect/EffectView;->onDetachedFromWindow()V

    const-string v0, "SparklingBubbles_Keyguard"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5

    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/visualeffect/EffectView;->onSizeChanged(IIII)V

    const-string v2, "SparklingBubbles_Keyguard"

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

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->windowWidth:I

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->windowHeight:I

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
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->windowWidth:I

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ne v2, p1, :cond_0

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->windowHeight:I

    if-gt v2, p2, :cond_2

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->windowHeight:I

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

    invoke-virtual {p0, v2, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->handleCustomEvent(ILjava/util/HashMap;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mTouchFlagForMobileKeyboard:Z

    const-string v2, "SparklingBubbles_Keyguard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSizeChanged called!!! mTouchFlagForMobileKeyboard = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mTouchFlagForMobileKeyboard:Z

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

    const-string v0, "SparklingBubbles_Keyguard"

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

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useCPUMinClock:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    :cond_1
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isUnlocked:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragStreamID:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isUnlocked:Z

    if-nez v0, :cond_2

    const v0, 0x3d1fbe77    # 0.039f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudMinusOffset:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isFadeOutSound:Z

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudVolume:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->fadeOutSound()V

    :cond_2
    return-void
.end method

.method public playLockSound()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "SparklingBubbles_Keyguard"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->clearScreen()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isUnlocked:Z

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useCPUMinClock:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    :cond_1
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    const-string v0, "SparklingBubbles_Keyguard"

    const-string v1, "screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->handleCustomEvent(ILjava/util/HashMap;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isUnlocked:Z

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useCPUMinClock:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    :cond_1
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    const-string v0, "SparklingBubbles_Keyguard"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->handleCustomEvent(ILjava/util/HashMap;)V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->hasWindowFocus:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->lock(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useCPUMinClock:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->hasWindowFocus:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->lock(I)V

    :cond_1
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "SparklingBubbles_Keyguard"

    const-string v5, "setContextualWallpaper"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v2, "SparklingBubbles_Keyguard"

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
    const-string v4, "SparklingBubbles_Keyguard"

    const-string v5, "changeBackground()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getPreferredConfigBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mContext:Landroid/content/Context;

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

    const-string v4, "SparklingBubbles_Keyguard"

    const-string v5, "setContextualWallpaper - VignettingEffect is applyed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/sec/effect/VignettingEffect;->applyBlendedFilter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->update(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->update(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 3

    const-string v0, "SparklingBubbles_Keyguard"

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

    const-string v0, "SparklingBubbles_Keyguard"

    const-string v1, "setHidden() - call screenTurnedOn() cause by SHOW_WHEN_LOCKED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->screenTurnedOn()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    const-string v0, "SparklingBubbles_Keyguard"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->reInit(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->clearScreen()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isUnlocked:Z

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->makeSound()V

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3

    const-string v1, "SparklingBubbles_Keyguard"

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

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->handleCustomEvent(ILjava/util/HashMap;)V

    return-void
.end method

.method public update()V
    .locals 2

    const-string v0, "SparklingBubbles_Keyguard"

    const-string v1, "update(0)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->update(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public updateAfterCreation()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->update()V

    return-void
.end method
