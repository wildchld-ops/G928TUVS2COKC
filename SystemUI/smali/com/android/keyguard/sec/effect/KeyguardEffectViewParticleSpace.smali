.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewParticleSpace.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# static fields
.field private static final DRAG_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_poppingcolours_drag.ogg"

.field private static final LOCK_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_poppingcolours_lock.ogg"

.field private static final TAP_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_poppingcolours_tap.ogg"

.field private static final UNLOCK_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_poppingcolours_unlock.ogg"

.field private static mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;


# instance fields
.field private final DBG:Z

.field final DRAG_SOUND_COUNT_INTERVAL:I

.field final DRAG_SOUND_COUNT_START_POINT:I

.field final SOUND_ID_DRAG:I

.field final SOUND_ID_TAB:I

.field private final TAG:Ljava/lang/String;

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private cpuMinValue:I

.field private dragSoundCount:I

.field private gpuMaxValue:I

.field private hasWindowFocus:Z

.field private isSystemSoundChecked:Z

.field private isUnlocking:Z

.field private lastPlayedIdBeforeUnlock:I

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field private mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mWindowManager:Landroid/view/WindowManager;

.field private particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

.field private rightVolumeMax:F

.field private sounds:[I

.field private useCPUMinClock:Z

.field private useGPUMaxClock:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;

    const-string v1, "/system/media/audio/ui/ve_poppingcolours_lock.ogg"

    const-string v2, "/system/media/audio/ui/ve_poppingcolours_unlock.ogg"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/LockSoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const v1, 0x3e99999a    # 0.3f

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "VisualEffectParticleEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->TAG:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->DBG:Z

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->leftVolumeMax:F

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->rightVolumeMax:F

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->UNLOCK_SOUND_PLAY_TIME:J

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->isSystemSoundChecked:Z

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->sounds:[I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->DRAG_SOUND_COUNT_INTERVAL:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->DRAG_SOUND_COUNT_START_POINT:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->SOUND_ID_TAB:I

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->SOUND_ID_DRAG:I

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->isUnlocking:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->useGPUMaxClock:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->useCPUMinClock:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->hasWindowFocus:Z

    invoke-direct {p0, p1, v4, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 5

    const/4 v4, 0x0

    const v1, 0x3e99999a    # 0.3f

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "VisualEffectParticleEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->TAG:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->DBG:Z

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->leftVolumeMax:F

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->rightVolumeMax:F

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->UNLOCK_SOUND_PLAY_TIME:J

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->isSystemSoundChecked:Z

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->sounds:[I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->DRAG_SOUND_COUNT_INTERVAL:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->DRAG_SOUND_COUNT_START_POINT:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->SOUND_ID_TAB:I

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->SOUND_ID_DRAG:I

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->isUnlocking:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->useGPUMaxClock:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->useCPUMinClock:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->hasWindowFocus:Z

    invoke-direct {p0, p1, p2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V
    .locals 5

    const/4 v4, 0x0

    const v1, 0x3e99999a    # 0.3f

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "VisualEffectParticleEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->TAG:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->DBG:Z

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->leftVolumeMax:F

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->rightVolumeMax:F

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->UNLOCK_SOUND_PLAY_TIME:J

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->isSystemSoundChecked:Z

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->sounds:[I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->DRAG_SOUND_COUNT_INTERVAL:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->DRAG_SOUND_COUNT_START_POINT:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->SOUND_ID_TAB:I

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->SOUND_ID_DRAG:I

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->isUnlocking:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->useGPUMaxClock:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->useCPUMinClock:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->hasWindowFocus:Z

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    return-object v0
.end method

.method private checkSound()V
    .locals 6

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    const-string v4, "lockscreen_sounds_enabled"

    const/4 v5, -0x2

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    if-ne v2, v3, :cond_0

    :goto_1
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->isSystemSoundChecked:Z

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;
    .locals 1

    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-object v0
.end method

.method private init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V
    .locals 3

    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VisualEffectParticleEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardWindowCallback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Lcom/samsung/android/visualeffect/EffectView;

    invoke-direct {v0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/EffectView;->setEffect(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->addView(Landroid/view/View;)V

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

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isEffectProcessSeparated()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_1

    const-string v1, "VisualEffectParticleEffect"

    const-string v2, "new SoundPool"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->sounds:[I

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

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->sounds:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    const-string v4, "/system/media/audio/ui/ve_poppingcolours_tap.ogg"

    invoke-virtual {v3, v4, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->sounds:[I

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    const-string v3, "/system/media/audio/ui/ve_poppingcolours_drag.ogg"

    invoke-virtual {v2, v3, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v5

    :cond_1
    return-void
.end method

.method private playSound(I)V
    .locals 7

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->isUnlocking:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->checkSound()V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->rightVolumeMax:F

    const/high16 v6, 0x3f800000    # 1.0f

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->lastPlayedIdBeforeUnlock:I

    goto :goto_0
.end method

.method private releaseSound()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "releaseSound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "BGBitmap"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/EffectView;->clearScreen()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->releaseSound()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    const-wide/16 v0, 0x12c

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x28

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->makeSound()V

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->playSound(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/visualeffect/EffectView;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    return v3

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_1

    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->playSound(I)V

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    goto :goto_0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3

    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->isUnlocking:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->hasWindowFocus:Z

    const-string v0, "VisualEffectParticleEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardEffectViewParticleSpace : onWindowFocusChanged - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public playLockSound()V
    .locals 2

    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : playLockSound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/EffectView;->clearScreen()V

    return-void
.end method

.method public screenTurnedOn()V
    .locals 3

    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/16 v1, 0x63

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "setContextualWallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "bmp  is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getPreferredConfigBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 2

    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->isUnlocking:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/EffectView;->clearScreen()V

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->makeSound()V

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 5

    const-string v1, "VisualEffectParticleEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyguardEffectViewParticleSpace : showUnlockAffordance, startDelay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "StartDelay"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Rect"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    return-void
.end method

.method public update()V
    .locals 4

    const-string v2, "VisualEffectParticleEffect"

    const-string v3, "update"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v2, "VisualEffectParticleEffect"

    const-string v3, "newBitmapDrawable  is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public updateAfterCreation()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->update()V

    return-void
.end method
