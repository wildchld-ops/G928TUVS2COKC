.class public Lcom/ime/implement/effect/DefaultSoundEffectController;
.super Ljava/lang/Object;
.source "DefaultSoundEffectController.java"

# interfaces
.implements Lcom/ime/framework/effect/SoundEffectController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/implement/effect/DefaultSoundEffectController$BackspaceKeySoundChangeObserver;,
        Lcom/ime/implement/effect/DefaultSoundEffectController$DefaultKeySoundChangeObserver;
    }
.end annotation


# instance fields
.field private backspaceKeySoundPath:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private defaultKeySoundPath:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackspaceKeySoundChangeObserver:Lcom/ime/implement/effect/DefaultSoundEffectController$BackspaceKeySoundChangeObserver;

.field private mDefaultKeySoundChangeObserver:Lcom/ime/implement/effect/DefaultSoundEffectController$DefaultKeySoundChangeObserver;

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mLastStreamId:I

.field private mSilentMode:Z

.field private mSoundEffectOn:Z

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolArray:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mLastStreamId:I

    const-string v0, "null"

    iput-object v0, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->defaultKeySoundPath:Ljava/lang/String;

    const-string v0, "null"

    iput-object v0, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->backspaceKeySoundPath:Ljava/lang/String;

    new-instance v0, Lcom/ime/implement/effect/DefaultSoundEffectController$DefaultKeySoundChangeObserver;

    invoke-direct {v0, p0}, Lcom/ime/implement/effect/DefaultSoundEffectController$DefaultKeySoundChangeObserver;-><init>(Lcom/ime/implement/effect/DefaultSoundEffectController;)V

    iput-object v0, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mDefaultKeySoundChangeObserver:Lcom/ime/implement/effect/DefaultSoundEffectController$DefaultKeySoundChangeObserver;

    new-instance v0, Lcom/ime/implement/effect/DefaultSoundEffectController$BackspaceKeySoundChangeObserver;

    invoke-direct {v0, p0}, Lcom/ime/implement/effect/DefaultSoundEffectController$BackspaceKeySoundChangeObserver;-><init>(Lcom/ime/implement/effect/DefaultSoundEffectController;)V

    iput-object v0, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mBackspaceKeySoundChangeObserver:Lcom/ime/implement/effect/DefaultSoundEffectController$BackspaceKeySoundChangeObserver;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-void
.end method

.method private initSounds()V
    .locals 4

    iget-object v0, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    :cond_0
    invoke-virtual {p0}, Lcom/ime/implement/effect/DefaultSoundEffectController;->setSoundPath()V

    invoke-virtual {p0}, Lcom/ime/implement/effect/DefaultSoundEffectController;->updateRingerMode()V

    return-void
.end method

.method private registerKeySoundChangeObserver()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_key_sound_path"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mDefaultKeySoundChangeObserver:Lcom/ime/implement/effect/DefaultSoundEffectController$DefaultKeySoundChangeObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "backspace_key_sound_path"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mBackspaceKeySoundChangeObserver:Lcom/ime/implement/effect/DefaultSoundEffectController$BackspaceKeySoundChangeObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private unregisterSoundChangeObserver()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mDefaultKeySoundChangeObserver:Lcom/ime/implement/effect/DefaultSoundEffectController$DefaultKeySoundChangeObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mBackspaceKeySoundChangeObserver:Lcom/ime/implement/effect/DefaultSoundEffectController$BackspaceKeySoundChangeObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Observer not registered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public initialize()V
    .locals 0

    invoke-direct {p0}, Lcom/ime/implement/effect/DefaultSoundEffectController;->initSounds()V

    invoke-direct {p0}, Lcom/ime/implement/effect/DefaultSoundEffectController;->registerKeySoundChangeObserver()V

    return-void
.end method

.method public isHeadsetConnected()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public playKeySound(I)V
    .locals 8

    iget-object v0, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getAltPressedState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mSoundEffectOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/ime/implement/effect/DefaultSoundEffectController;->updateRingerMode()V

    :cond_2
    iget-boolean v0, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mSilentMode:Z

    if-nez v0, :cond_0

    const/4 v7, 0x5

    sparse-switch p1, :sswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/high16 v2, 0x3f000000    # 0.5f

    iget-object v0, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mSoundPoolArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mLastStreamId:I

    goto :goto_0

    :sswitch_0
    const/4 v7, 0x7

    goto :goto_1

    :sswitch_1
    const/16 v7, 0x8

    goto :goto_1

    :sswitch_2
    const/4 v7, 0x5

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_0
        0xa -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public playKeySound(IZ)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    :cond_0
    invoke-direct {p0}, Lcom/ime/implement/effect/DefaultSoundEffectController;->unregisterSoundChangeObserver()V

    return-void
.end method

.method public setSoundEffectOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mSoundEffectOn:Z

    return-void
.end method

.method setSoundPath()V
    .locals 7

    iget-object v1, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mSoundPoolArray:Landroid/util/SparseIntArray;

    if-nez v1, :cond_3

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mSoundPoolArray:Landroid/util/SparseIntArray;

    :goto_0
    iget-object v1, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_key_sound_path"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->defaultKeySoundPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "backspace_key_sound_path"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->backspaceKeySoundPath:Ljava/lang/String;

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DefaultKeySoundPath changed to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->defaultKeySoundPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BackspaceKeySoundPath changed to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->backspaceKeySoundPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->defaultKeySoundPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "null"

    iget-object v2, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->defaultKeySoundPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mSoundPoolArray:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->context:Landroid/content/Context;

    const v5, 0x7f060008

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v1, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mSoundPoolArray:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->context:Landroid/content/Context;

    const v5, 0x7f060008

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    :goto_1
    iget-object v1, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->backspaceKeySoundPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "null"

    iget-object v2, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->backspaceKeySoundPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    iget-object v1, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mSoundPoolArray:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->context:Landroid/content/Context;

    const v5, 0x7f060007

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mSoundPoolArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mSoundPoolArray:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->defaultKeySoundPath:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v1, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mSoundPoolArray:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->defaultKeySoundPath:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/ime/framework/util/Debug;->ERROR:Z

    if-eqz v1, :cond_2

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key sound load fail!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_5
    :try_start_2
    iget-object v1, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mSoundPoolArray:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->backspaceKeySoundPath:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public updateKeyTonesFromSystemSettings()V
    .locals 0

    return-void
.end method

.method public updateRingerMode()V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/ime/implement/effect/DefaultSoundEffectController;->mSilentMode:Z

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
