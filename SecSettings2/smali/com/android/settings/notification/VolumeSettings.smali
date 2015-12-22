.class public Lcom/android/settings/notification/VolumeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VolumeSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/VolumeSettings$Receiver;,
        Lcom/android/settings/notification/VolumeSettings$H;,
        Lcom/android/settings/notification/VolumeSettings$VolumePreferenceCallback;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/settings/notification/VolumeSettings$H;

.field private mIsEmerMode:Z

.field private mMusicPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field private mNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field private final mReceiver:Lcom/android/settings/notification/VolumeSettings$Receiver;

.field private mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field private mRingerMode:I

.field private mSuppressor:Landroid/content/ComponentName;

.field private mSystemPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceCapable:Z

.field private final mVolumeCallback:Lcom/android/settings/notification/VolumeSettings$VolumePreferenceCallback;

.field private final mVolumePrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/notification/VolumeSeekBarPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/notification/VolumeSettings$2;

    invoke-direct {v0}, Lcom/android/settings/notification/VolumeSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/notification/VolumeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/notification/VolumeSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/VolumeSettings$VolumePreferenceCallback;-><init>(Lcom/android/settings/notification/VolumeSettings;Lcom/android/settings/notification/VolumeSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mVolumeCallback:Lcom/android/settings/notification/VolumeSettings$VolumePreferenceCallback;

    new-instance v0, Lcom/android/settings/notification/VolumeSettings$H;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/VolumeSettings$H;-><init>(Lcom/android/settings/notification/VolumeSettings;Lcom/android/settings/notification/VolumeSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mHandler:Lcom/android/settings/notification/VolumeSettings$H;

    new-instance v0, Lcom/android/settings/notification/VolumeSettings$Receiver;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/VolumeSettings$Receiver;-><init>(Lcom/android/settings/notification/VolumeSettings;Lcom/android/settings/notification/VolumeSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mReceiver:Lcom/android/settings/notification/VolumeSettings$Receiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mVolumePrefs:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/VolumeSettings;->mIsEmerMode:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/notification/VolumeSettings;->mRingerMode:I

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/notification/VolumeSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/VolumeSettings$H;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mHandler:Lcom/android/settings/notification/VolumeSettings$H;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/VolumeSettings$VolumePreferenceCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mVolumeCallback:Lcom/android/settings/notification/VolumeSettings$VolumePreferenceCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/notification/VolumeSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/VolumeSettings;->updateEffectsSuppressor()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/notification/VolumeSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/VolumeSettings;->updateRingerMode()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/notification/VolumeSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/VolumeSettings;->updateNotificationIcon(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/notification/VolumeSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/VolumeSettings;->updateMusicIcon(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/notification/VolumeSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/VolumeSettings;->updateSystemIcon(I)V

    return-void
.end method

.method private getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7

    iget-object v5, p0, Lcom/android/settings/notification/VolumeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    const-string v5, "VolumeSettings"

    const-string v6, "Error loading suppressor caption"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/VolumeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings;->mVolumeCallback:Lcom/android/settings/notification/VolumeSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    invoke-virtual {v0, p2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setStream(I)V

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p3}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setMuteIcon(I)V

    return-object v0
.end method

.method private updateEffectsSuppressor()V
    .locals 7

    iget-object v2, p0, Lcom/android/settings/notification/VolumeSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/notification/VolumeSettings;->mSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mSuppressor:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/settings/notification/VolumeSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/notification/VolumeSettings;->mContext:Landroid/content/Context;

    const v3, 0x10406b4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/notification/VolumeSettings;->getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lcom/android/settings/notification/VolumeSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setSuppressionText(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/notification/VolumeSettings;->updateRingOrNotificationPreference()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateMusicIcon(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings;->mMusicPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-lez p1, :cond_0

    const v0, 0x108090a

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(IZ)V

    return-void

    :cond_0
    const v0, 0x108090e

    goto :goto_0
.end method

.method private updateNotificationIcon(I)V
    .locals 7

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "VolumeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNotificationIcon : progress : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/settings/notification/VolumeSettings;->mNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-lez p1, :cond_3

    const v0, 0x10808f3

    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v4, v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(IZ)V

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    if-eq v0, v6, :cond_6

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setEnabled(Z)V

    :cond_0
    :goto_2
    iget-boolean v0, p0, Lcom/android/settings/notification/VolumeSettings;->mVoiceCapable:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSettings;->isEnableAOBLE()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mSystemPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setEnabled(Z)V

    :goto_3
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/notification/VolumeSettings;->updateSystemIcon(I)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    if-ne v0, v2, :cond_4

    const v0, 0x10808f7

    goto :goto_0

    :cond_4
    const v0, 0x10808f5

    goto :goto_0

    :cond_5
    move v1, v3

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setEnabled(Z)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mSystemPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setEnabled(Z)V

    goto :goto_3
.end method

.method private updateRingOrNotificationIcon(I)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "VolumeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRingOrNotificationIcon : progress : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-lez p1, :cond_2

    const v0, 0x10808fa

    :goto_0
    invoke-virtual {v1, v0, v2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(IZ)V

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/settings/notification/VolumeSettings;->mNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-lez v0, :cond_4

    const v0, 0x10808f3

    :goto_1
    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_2
    invoke-virtual {v4, v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(IZ)V

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings;->mNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz p1, :cond_7

    move v0, v2

    :goto_3
    invoke-virtual {v1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setEnabled(Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSettings;->isEnableAOBLE()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mSystemPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setEnabled(Z)V

    :goto_4
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    iget-object v4, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    if-ne v0, v2, :cond_3

    const v0, 0x1080900

    goto :goto_0

    :cond_3
    const v0, 0x10808fc

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    if-ne v0, v2, :cond_5

    const v0, 0x10808f7

    goto :goto_1

    :cond_5
    const v0, 0x10808f5

    goto :goto_1

    :cond_6
    move v1, v3

    goto :goto_2

    :cond_7
    move v0, v3

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mSystemPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setEnabled(Z)V

    goto :goto_4
.end method

.method private updateRingOrNotificationPreference()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/android/settings/notification/VolumeSettings;->mVoiceCapable:Z

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/settings/notification/VolumeSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings;->mSuppressor:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    const v1, 0x10808fc

    :goto_0
    invoke-virtual {v2, v1, v3}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(IZ)V

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/notification/VolumeSettings;->updateRingOrNotificationIcon(I)V

    :goto_1
    return-void

    :cond_0
    iget v1, p0, Lcom/android/settings/notification/VolumeSettings;->mRingerMode:I

    if-ne v1, v3, :cond_1

    const v1, 0x1080900

    goto :goto_0

    :cond_1
    const v1, 0x10808fa

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/notification/VolumeSettings;->updateNotificationIcon(I)V

    goto :goto_1
.end method

.method private updateRingerMode()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    iget v1, p0, Lcom/android/settings/notification/VolumeSettings;->mRingerMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v0, p0, Lcom/android/settings/notification/VolumeSettings;->mRingerMode:I

    invoke-direct {p0}, Lcom/android/settings/notification/VolumeSettings;->updateRingOrNotificationPreference()V

    goto :goto_0
.end method

.method private updateSystemIcon(I)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/notification/VolumeSettings;->mSystemPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-lez p1, :cond_1

    const v0, 0x1080904

    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(IZ)V

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSettings;->isEnableAOBLE()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mSystemPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setEnabled(Z)V

    :goto_2
    return-void

    :cond_1
    const v0, 0x1080906

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mSystemPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setEnabled(Z)V

    goto :goto_2
.end method


# virtual methods
.method public isEnableAOBLE()Z
    .locals 3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "VolumeSettings"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/VolumeSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/VolumeSettings$1;-><init>(Lcom/android/settings/notification/VolumeSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const v8, 0x7f0700b2

    const v7, 0x108090e

    const/4 v6, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/VolumeSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/notification/VolumeSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/notification/VolumeSettings;->mVoiceCapable:Z

    iget-object v3, p0, Lcom/android/settings/notification/VolumeSettings;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v8}, Lcom/android/settings/notification/VolumeSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/android/settings/notification/VolumeSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v6, p0, Lcom/android/settings/notification/VolumeSettings;->mIsEmerMode:Z

    :cond_0
    const-string v3, "media_volume"

    const/4 v4, 0x3

    invoke-direct {p0, v3, v4, v7}, Lcom/android/settings/notification/VolumeSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/VolumeSettings;->mMusicPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const-string v3, "notification_volume"

    const/4 v4, 0x5

    const v5, 0x10808f5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings/notification/VolumeSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/VolumeSettings;->mNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const-string v3, "system_volume"

    const v4, 0x1080906

    invoke-direct {p0, v3, v6, v4}, Lcom/android/settings/notification/VolumeSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/VolumeSettings;->mSystemPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const-string v3, "alarm_volume"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/VolumeSettings;->removePreference(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    const-string v3, "waiting_tone_volume"

    const/16 v4, 0x8

    invoke-direct {p0, v3, v4, v7}, Lcom/android/settings/notification/VolumeSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "waiting_tone_volume_explanation"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/VolumeSettings;->removePreference(Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/notification/VolumeSettings;->mVoiceCapable:Z

    if-eqz v3, :cond_4

    const-string v3, "ring_volume"

    const/4 v4, 0x2

    const v5, 0x10808fc

    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings/notification/VolumeSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/VolumeSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v3, p0, Lcom/android/settings/notification/VolumeSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const v4, 0x7f0a057f

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/VolumeSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    iget-boolean v3, p0, Lcom/android/settings/notification/VolumeSettings;->mIsEmerMode:Z

    if-ne v3, v6, :cond_5

    iget-object v3, p0, Lcom/android/settings/notification/VolumeSettings;->mContext:Landroid/content/Context;

    const-string v4, "UPSM"

    invoke-static {v3, v8, v4}, Lcom/android/settings/Utils;->getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/VolumeSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v3, "waiting_tone_volume"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/VolumeSettings;->removePreference(Ljava/lang/String;)V

    const-string v3, "waiting_tone_volume_explanation"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/VolumeSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v3, "ring_volume"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/VolumeSettings;->removePreference(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/notification/VolumeSettings;->mNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setOrder(I)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mVolumeCallback:Lcom/android/settings/notification/VolumeSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/android/settings/notification/VolumeSettings$VolumePreferenceCallback;->stopSample()V

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mReceiver:Lcom/android/settings/notification/VolumeSettings$Receiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSettings$Receiver;->register(Z)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mVolumeCallback:Lcom/android/settings/notification/VolumeSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/android/settings/notification/VolumeSettings$VolumePreferenceCallback;->stopSample()V

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v2, p0, Lcom/android/settings/notification/VolumeSettings;->mReceiver:Lcom/android/settings/notification/VolumeSettings$Receiver;

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/VolumeSettings$Receiver;->register(Z)V

    invoke-direct {p0}, Lcom/android/settings/notification/VolumeSettings;->updateRingOrNotificationPreference()V

    invoke-direct {p0}, Lcom/android/settings/notification/VolumeSettings;->updateEffectsSuppressor()V

    iget-object v2, p0, Lcom/android/settings/notification/VolumeSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->onActivityResume()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-void
.end method
