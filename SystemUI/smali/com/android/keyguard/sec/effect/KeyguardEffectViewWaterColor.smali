.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;
.super Lcom/samsung/android/visualeffect/EffectView;
.source "KeyguardEffectViewWaterColor.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor$EffectHandler;
    }
.end annotation


# static fields
.field static final MSG_READY:I = 0x1

.field private static final SILENCE_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_silence.ogg"

.field private static final TAG:Ljava/lang/String; = "WaterColor_Keyguard"

.field private static final TAP_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_watercolour_tap.ogg"

.field private static final UNLOCK_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_watercolour_unlock.ogg"

.field private static mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;


# instance fields
.field final SOUND_ID_TAB:I

.field final SOUND_ID_UNLOCK:I

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private callBackListener:Lcom/samsung/android/visualeffect/IEffectListener;

.field private cpuMaxValue:I

.field private gpuMaxValue:I

.field private hasWindowFocus:Z

.field private isSystemSoundChecked:Z

.field private isUnlocked:Z

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor$EffectHandler;

.field mImageView:Landroid/widget/ImageView;

.field mLongPressTime:J

.field mMsg:Landroid/os/Message;

.field private mSoundPool:Landroid/media/SoundPool;

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private rightVolumeMax:F

.field private sounds:[I

.field private touchDownTime:J

.field private touchMoveDiffTime:J

.field private useCPUMaxClock:Z

.field private useGPUMaxClock:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;

    const-string v1, ""

    const-string v2, "/system/media/audio/ui/ve_silence.ogg"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/LockSoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mSoundPool:Landroid/media/SoundPool;

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->sounds:[I

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->UNLOCK_SOUND_PLAY_TIME:J

    iput-wide v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->touchDownTime:J

    iput-wide v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->touchMoveDiffTime:J

    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->leftVolumeMax:F

    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->rightVolumeMax:F

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->SOUND_ID_TAB:I

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->SOUND_ID_UNLOCK:I

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->isSystemSoundChecked:Z

    const-wide/16 v0, 0x19b

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mLongPressTime:J

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->isUnlocked:Z

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mImageView:Landroid/widget/ImageView;

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->hasWindowFocus:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->useGPUMaxClock:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->useCPUMaxClock:Z

    invoke-direct {p0, p1, v2, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mSoundPool:Landroid/media/SoundPool;

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->sounds:[I

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->UNLOCK_SOUND_PLAY_TIME:J

    iput-wide v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->touchDownTime:J

    iput-wide v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->touchMoveDiffTime:J

    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->leftVolumeMax:F

    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->rightVolumeMax:F

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->SOUND_ID_TAB:I

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->SOUND_ID_UNLOCK:I

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->isSystemSoundChecked:Z

    const-wide/16 v0, 0x19b

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mLongPressTime:J

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->isUnlocked:Z

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mImageView:Landroid/widget/ImageView;

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->hasWindowFocus:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->useGPUMaxClock:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->useCPUMaxClock:Z

    invoke-direct {p0, p1, p2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V
    .locals 8

    const-wide/16 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mSoundPool:Landroid/media/SoundPool;

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->sounds:[I

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->UNLOCK_SOUND_PLAY_TIME:J

    iput-wide v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->touchDownTime:J

    iput-wide v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->touchMoveDiffTime:J

    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->leftVolumeMax:F

    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->rightVolumeMax:F

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->SOUND_ID_TAB:I

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->SOUND_ID_UNLOCK:I

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->isSystemSoundChecked:Z

    const-wide/16 v0, 0x19b

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mLongPressTime:J

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->isUnlocked:Z

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mImageView:Landroid/widget/ImageView;

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->hasWindowFocus:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->useGPUMaxClock:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->useCPUMaxClock:Z

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor$EffectHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor$EffectHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;)Landroid/media/SoundPool;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private checkSound()V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mContext:Landroid/content/Context;

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

    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->isSystemSoundChecked:Z

    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->isSystemSoundChecked:Z

    goto :goto_1
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;
    .locals 1

    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-object v0
.end method

.method private init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V
    .locals 4

    const v3, 0x9c40

    const/4 v2, -0x1

    const-string v0, "WaterColor_Keyguard"

    const-string v1, "KeyguardEffectViewWaterColor Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mContext:Landroid/content/Context;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->setEffect(I)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->sounds:[I

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor$EffectHandler;

    if-nez v0, :cond_0

    const-string v0, "WaterColor_Keyguard"

    const-string v1, "new SoundHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor$EffectHandler;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor$EffectHandler;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor$EffectHandler;

    :cond_0
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->callBackListener:Lcom/samsung/android/visualeffect/IEffectListener;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->callBackListener:Lcom/samsung/android/visualeffect/IEffectListener;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->setListener(Lcom/samsung/android/visualeffect/IEffectListener;)V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->useGPUMaxClock:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mContext:Landroid/content/Context;

    const/16 v1, 0x11

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->gpuMaxValue:I

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->setLimit(Landroid/content/Context;III)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->useCPUMaxClock:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mContext:Landroid/content/Context;

    const/16 v1, 0xd

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->cpuMaxValue:I

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->setLimit(Landroid/content/Context;III)V

    :cond_2
    return-void
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private makeSound()V
    .locals 6

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->stopReleaseSound()V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isEffectProcessSeparated()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_1

    const-string v1, "WaterColor_Keyguard"

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

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->sounds:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mSoundPool:Landroid/media/SoundPool;

    const-string v4, "/system/media/audio/ui/ve_watercolour_tap.ogg"

    invoke-virtual {v3, v4, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->sounds:[I

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mSoundPool:Landroid/media/SoundPool;

    const-string v3, "/system/media/audio/ui/ve_watercolour_unlock.ogg"

    invoke-virtual {v2, v3, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v5

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mSoundPool:Landroid/media/SoundPool;

    new-instance v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor$3;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;)V

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    :cond_1
    return-void
.end method

.method private playSound(I)V
    .locals 7

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->checkSound()V

    const-string v0, "WaterColor_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOUND PLAY mSoundPool = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSystemSoundChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->isSystemSoundChecked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    const-string v0, "WaterColor_Keyguard"

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

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->rightVolumeMax:F

    const/high16 v6, 0x3f800000    # 1.0f

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_0
    return-void
.end method

.method private releaseSound()V
    .locals 4

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor$4;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->releaseSoundRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Bitmap"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->handleCustomEvent(ILjava/util/HashMap;)V

    return-void
.end method

.method private stopReleaseSound()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->releaseSoundRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 4

    const-string v0, "WaterColor_Keyguard"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->stopReleaseSound()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->releaseSound()V

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor$2;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;)V

    const-wide/16 v2, 0x190

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->useCPUMaxClock:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    :cond_1
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    const-wide/16 v0, 0xfa

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->isUnlocked:Z

    if-eqz v1, :cond_0

    :goto_0
    return v6

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_3

    const-string v1, "WaterColor_Keyguard"

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

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->stopReleaseSound()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->touchDownTime:J

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_1

    const-string v1, "WaterColor_Keyguard"

    const-string v2, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->makeSound()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->checkSound()V

    :cond_1
    const-string v1, "WaterColor_Keyguard"

    const-string v2, "SOUND PLAY SOUND_ID_TAB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v7}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->playSound(I)V

    :cond_2
    :goto_1
    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v6, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_4
    const-string v1, "WaterColor_Keyguard"

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

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->touchDownTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->touchMoveDiffTime:J

    iget-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->touchMoveDiffTime:J

    iget-wide v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mLongPressTime:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    invoke-direct {p0, v7}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->playSound(I)V

    goto :goto_1
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    if-nez v0, :cond_1

    const-string v3, "WaterColor_Keyguard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleTouchEventForPatternLock action DOWN : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_0
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "MotionEvent"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    return v6

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_2
    if-eq v0, v6, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    :cond_3
    const-string v3, "WaterColor_Keyguard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleTouchEventForPatternLock action UP : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "WaterColor_Keyguard"

    const-string v1, "handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->handleCustomEvent(ILjava/util/HashMap;)V

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->isUnlocked:Z

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->playSound(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/visualeffect/EffectView;->onDetachedFromWindow()V

    const-string v0, "WaterColor_Keyguard"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor$EffectHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor$EffectHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor$EffectHandler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor$EffectHandler;

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;->onWindowFocusChanged(Z)V

    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->hasWindowFocus:Z

    const-string v0, "WaterColor_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->useCPUMaxClock:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    :cond_1
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->isUnlocked:Z

    if-nez v0, :cond_2

    :cond_2
    return-void
.end method

.method public playLockSound()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "WaterColor_Keyguard"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->isUnlocked:Z

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->clearScreen()V

    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    const-string v0, "WaterColor_Keyguard"

    const-string v1, "screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->clearScreen()V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->useCPUMaxClock:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    :cond_1
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    const-string v0, "WaterColor_Keyguard"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->isUnlocked:Z

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->clearScreen()V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->hasWindowFocus:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->lock(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->useCPUMaxClock:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->hasWindowFocus:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->lock(I)V

    :cond_1
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "WaterColor_Keyguard"

    const-string v1, "setContextualWallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "WaterColor_Keyguard"

    const-string v1, "bmp is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getPreferredConfigBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 2

    const-string v0, "WaterColor_Keyguard"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->makeSound()V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->clearScreen()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->isUnlocked:Z

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3

    const-string v1, "WaterColor_Keyguard"

    const-string v2, "showUnlockAffordance"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->isUnlocked:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "StartDelay"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Rect"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->handleCustomEvent(ILjava/util/HashMap;)V

    return-void
.end method

.method public update()V
    .locals 4

    const-string v2, "WaterColor_Keyguard"

    const-string v3, "update"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "WaterColor_Keyguard"

    const-string v3, "newBitmapDrawable  is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "WaterColor_Keyguard"

    const-string v3, "originBitmap is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public updateAfterCreation()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->update()V

    return-void
.end method
