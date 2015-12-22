.class public Lcom/android/settings/notification/NotificationSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NotificationSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationSettings$SettingsObserver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private isKioskContainer:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mIsEmerMode:Z

.field private mLockscreen:Lcom/android/settings/notification/DropDownPreference;

.field private mLockscreenSelectedValue:I

.field private mNotificationPulse:Landroid/preference/TwoStatePreference;

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mSecure:Z

.field private final mSettingsObserver:Lcom/android/settings/notification/NotificationSettings$SettingsObserver;

.field private mSimpleLEDIndicator:Landroid/preference/TwoStatePreference;

.field private mSoundMode:Lcom/android/settings/notification/DropDownPreference;

.field private mSubNtofications:Landroid/preference/PreferenceScreen;

.field private mVoiceCapable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/notification/NotificationSettings$6;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationSettings$6;-><init>()V

    sput-object v0, Lcom/android/settings/notification/NotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings/notification/NotificationSettings$SettingsObserver;

    iput-boolean v1, p0, Lcom/android/settings/notification/NotificationSettings;->mIsEmerMode:Z

    iput-boolean v1, p0, Lcom/android/settings/notification/NotificationSettings;->isKioskContainer:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/NotificationSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreenSelectedValue:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/notification/NotificationSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreenSelectedValue:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updatePulse()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateLockscreenNotifications()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->refreshDNDmode()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/notification/NotificationSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/NotificationSettings;->setLedIndicator(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/notification/NotificationSettings;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->refreshSoundMode()V

    return-void
.end method

.method private getLedIndicator()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "led_indicator_charing"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "led_indicator_low_battery"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "led_indicator_missed_event"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "led_indicator_voice_recording"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 4

    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "NotificationSettings"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig;-><init>()V

    goto :goto_0
.end method

.method private initSoundMode()V
    .locals 4

    const-string v1, "sound_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/DropDownPreference;

    iput-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Lcom/android/settings/notification/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Lcom/android/settings/notification/DropDownPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {v1}, Lcom/android/settings/notification/DropDownPreference;->clearItems()V

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Lcom/android/settings/notification/DropDownPreference;

    const v2, 0x7f0a0574

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Lcom/android/settings/notification/DropDownPreference;

    const v2, 0x7f0a0fbb

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Lcom/android/settings/notification/DropDownPreference;

    const v2, 0x7f0a0fbc

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Lcom/android/settings/notification/DropDownPreference;

    new-instance v2, Lcom/android/settings/notification/NotificationSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/NotificationSettings$4;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/DropDownPreference;->setCallback(Lcom/android/settings/notification/DropDownPreference$Callback;)V

    :cond_1
    return-void
.end method

.method private refreshDNDmode()V
    .locals 6

    const v2, 0x7f0a0e2e

    const-string v3, "zen_mode_dnd"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "zen_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    const v0, 0x7f0a0e2d

    :goto_0
    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    iget-boolean v2, v2, Landroid/service/notification/ZenModeConfig;->applyDowntime:Z

    if-eqz v2, :cond_0

    const v0, 0x7f0a0edd

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private refreshSoundMode()V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Lcom/android/settings/notification/DropDownPreference;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Lcom/android/settings/notification/DropDownPreference;

    rsub-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/DropDownPreference;->setSelectedItem(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_2

    if-ne v0, v4, :cond_3

    :cond_2
    const-string v1, "NotificationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshSoundMode : ringerMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {v1, v4}, Lcom/android/settings/notification/DropDownPreference;->setSelectedItem(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Lcom/android/settings/notification/DropDownPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/DropDownPreference;->setSelectedItem(I)V

    goto :goto_0
.end method

.method private registerListeners()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/settings/notification/NotificationSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationSettings$5;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    iput-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private releaseListeners()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method private setLedIndicator(Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "led_indicator_charing"

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "led_indicator_low_battery"

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "led_indicator_missed_event"

    if-eqz p1, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "led_indicator_voice_recording"

    if-eqz p1, :cond_4

    :goto_3
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_reminder_led_indicator"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method private updateLockscreenNotifications()V
    .locals 4

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/notification/DropDownPreference;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result v1

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->getLockscreenAllowPrivateNotifications()Z

    move-result v0

    if-nez v1, :cond_1

    const v2, 0x7f0a0de0

    :goto_1
    iput v2, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreenSelectedValue:I

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/notification/DropDownPreference;

    iget v3, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreenSelectedValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const v2, 0x7f0a0dde

    goto :goto_1

    :cond_2
    const v2, 0x7f0a0ddf

    goto :goto_1
.end method

.method private updatePulse()V
    .locals 5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_light_pulse"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NotificationSettings"

    const-string v2, "notification_light_pulse not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "NotificationSettings"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const v9, 0x7f0a0de0

    const v8, 0x7f0a0ddf

    const v7, 0x7f0a0dde

    const v6, 0x7f07006b

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/notification/NotificationSettings;->mVoiceCapable:Z

    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/NotificationSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/notification/NotificationSettings;->isKioskContainer:Z

    invoke-virtual {p0, v6}, Lcom/android/settings/notification/NotificationSettings;->addPreferencesFromResource(I)V

    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/notification/NotificationSettings;->mSecure:Z

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_VIBETONZ"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/notification/NotificationSettings;->mVoiceCapable:Z

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "vibrations"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/NotificationSettings;->removePreference(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-boolean v5, p0, Lcom/android/settings/notification/NotificationSettings;->mIsEmerMode:Z

    :cond_2
    const-string v3, "notification_pulse"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/TwoStatePreference;

    iput-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    if-nez v3, :cond_4

    const-string v3, "NotificationSettings"

    const-string v4, "Preference not found: notification_pulse"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x112003d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "notification_pulse"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/NotificationSettings;->removePreference(Ljava/lang/String;)V

    :goto_1
    const-string v3, "lock_screen_notifications"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/notification/DropDownPreference;

    iput-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/notification/DropDownPreference;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/notification/DropDownPreference;

    if-nez v3, :cond_6

    const-string v3, "NotificationSettings"

    const-string v4, "Preference not found: lock_screen_notifications"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updatePulse()V

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    new-instance v4, Lcom/android/settings/notification/NotificationSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/notification/NotificationSettings$1;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    invoke-virtual {v3, v4}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/notification/DropDownPreference;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Lcom/android/settings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/notification/DropDownPreference;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Lcom/android/settings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/notification/DropDownPreference;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Lcom/android/settings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateLockscreenNotifications()V

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/notification/DropDownPreference;

    new-instance v4, Lcom/android/settings/notification/NotificationSettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings/notification/NotificationSettings$2;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/DropDownPreference;->setCallback(Lcom/android/settings/notification/DropDownPreference$Callback;)V

    invoke-static {}, Lcom/android/settings/Utils;->getLockscreenVersion()I

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "lock_screen_notifications"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/NotificationSettings;->removePreference(Ljava/lang/String;)V

    :cond_7
    const-string v3, "key_simple_led_indicator_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/TwoStatePreference;

    iput-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mSimpleLEDIndicator:Landroid/preference/TwoStatePreference;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mSimpleLEDIndicator:Landroid/preference/TwoStatePreference;

    new-instance v4, Lcom/android/settings/notification/NotificationSettings$3;

    invoke-direct {v4, p0}, Lcom/android/settings/notification/NotificationSettings$3;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    invoke-virtual {v3, v4}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LED_INDICATOR"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "key_simple_led_indicator_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/NotificationSettings;->removePreference(Ljava/lang/String;)V

    :cond_8
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mSimpleLEDIndicator:Landroid/preference/TwoStatePreference;

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->getLedIndicator()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    const-string v3, "zen_mode"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/NotificationSettings;->removePreference(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->initSoundMode()V

    iget-boolean v3, p0, Lcom/android/settings/notification/NotificationSettings;->isKioskContainer:Z

    if-eqz v3, :cond_9

    const-string v3, "app_notifications"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/NotificationSettings;->removePreference(Ljava/lang/String;)V

    :cond_9
    const-string v3, "notifications_sub_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mSubNtofications:Landroid/preference/PreferenceScreen;

    iget-boolean v3, p0, Lcom/android/settings/notification/NotificationSettings;->mVoiceCapable:Z

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mSubNtofications:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mSubNtofications:Landroid/preference/PreferenceScreen;

    const v4, 0x7f0a0579

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    :cond_a
    iget-boolean v3, p0, Lcom/android/settings/notification/NotificationSettings;->mIsEmerMode:Z

    if-ne v3, v5, :cond_3

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    const-string v4, "UPSM"

    invoke-static {v3, v6, v4}, Lcom/android/settings/Utils;->getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/NotificationSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_VIBETONZ"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_c
    const-string v3, "vibrations"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/NotificationSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings/notification/NotificationSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->register(Z)V

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->releaseListeners()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings/notification/NotificationSettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->register(Z)V

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->refreshSoundMode()V

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->refreshDNDmode()V

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->registerListeners()V

    return-void
.end method
