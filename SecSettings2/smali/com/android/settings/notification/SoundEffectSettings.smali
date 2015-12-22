.class public Lcom/android/settings/notification/SoundEffectSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SoundEffectSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/SoundEffectSettings$SettingsObserver;,
        Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;
    }
.end annotation


# static fields
.field private static final KEYS:[Ljava/lang/String;

.field private static final PREFS:[Lcom/android/settings/notification/SettingPref;

.field private static final PREF_K2HD:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_SOUND_ALIVE:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_TUBE_AMP:Lcom/android/settings/notification/SettingPref;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final SUPPORT_FW_FEATURE_LOGGING:Z

.field private static final sFloatingFeature:Lcom/samsung/android/feature/FloatingFeature;


# instance fields
.field private intentFilter:Landroid/content/IntentFilter;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentAudioPath:I

.field private mMusicReceiver:Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;

.field private mMySound:Landroid/preference/PreferenceScreen;

.field private final mSettingsObserver:Lcom/android/settings/notification/SoundEffectSettings$SettingsObserver;

.field private mTwoStatePrefs:[Landroid/preference/TwoStatePreference;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    new-array v0, v7, [Ljava/lang/String;

    const-string v2, "sound_alive"

    aput-object v2, v0, v6

    const-string v2, "k2hd"

    aput-object v2, v0, v4

    const-string v2, "tube_amp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/notification/SoundEffectSettings;->KEYS:[Ljava/lang/String;

    new-instance v0, Lcom/android/settings/notification/SoundEffectSettings$1;

    const-string v2, "sound_alive"

    const-string v3, "sound_alive_effect"

    new-array v5, v6, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SoundEffectSettings$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/SoundEffectSettings;->PREF_SOUND_ALIVE:Lcom/android/settings/notification/SettingPref;

    new-instance v0, Lcom/android/settings/notification/SoundEffectSettings$2;

    const-string v2, "k2hd"

    const-string v3, "k2hd_effect"

    new-array v5, v6, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SoundEffectSettings$2;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/SoundEffectSettings;->PREF_K2HD:Lcom/android/settings/notification/SettingPref;

    new-instance v0, Lcom/android/settings/notification/SoundEffectSettings$3;

    const-string v2, "tube_amp"

    const-string v3, "tube_amp_effect"

    new-array v5, v6, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SoundEffectSettings$3;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/SoundEffectSettings;->PREF_TUBE_AMP:Lcom/android/settings/notification/SettingPref;

    new-array v0, v7, [Lcom/android/settings/notification/SettingPref;

    sget-object v2, Lcom/android/settings/notification/SoundEffectSettings;->PREF_SOUND_ALIVE:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v6

    sget-object v2, Lcom/android/settings/notification/SoundEffectSettings;->PREF_K2HD:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v4

    sget-object v2, Lcom/android/settings/notification/SoundEffectSettings;->PREF_TUBE_AMP:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/notification/SoundEffectSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/SoundEffectSettings;->sFloatingFeature:Lcom/samsung/android/feature/FloatingFeature;

    sget-object v0, Lcom/android/settings/notification/SoundEffectSettings;->sFloatingFeature:Lcom/samsung/android/feature/FloatingFeature;

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/SoundEffectSettings;->SUPPORT_FW_FEATURE_LOGGING:Z

    new-instance v0, Lcom/android/settings/notification/SoundEffectSettings$4;

    invoke-direct {v0}, Lcom/android/settings/notification/SoundEffectSettings$4;-><init>()V

    sput-object v0, Lcom/android/settings/notification/SoundEffectSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    new-instance v0, Lcom/android/settings/notification/SoundEffectSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/SoundEffectSettings$SettingsObserver;-><init>(Lcom/android/settings/notification/SoundEffectSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/SoundEffectSettings;->mSettingsObserver:Lcom/android/settings/notification/SoundEffectSettings$SettingsObserver;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/SoundEffectSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/notification/SoundEffectSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/notification/SoundEffectSettings;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/SoundEffectSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$200()[Lcom/android/settings/notification/SettingPref;
    .locals 1

    sget-object v0, Lcom/android/settings/notification/SoundEffectSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/SoundEffectSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/notification/SoundEffectSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-boolean v2, Lcom/android/settings/notification/SoundEffectSettings;->SUPPORT_FW_FEATURE_LOGGING:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    const-string v3, "com.android.settings.notification"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const-string v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    const-string v2, "value"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public isAudioPathBTHeadphone()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/settings/notification/SoundEffectSettings;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "audioParam;outDevice"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    goto :goto_0
.end method

.method public isAudioPathEarjack()Z
    .locals 4

    iget-object v2, p0, Lcom/android/settings/notification/SoundEffectSettings;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "audioParam;curDevice"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HPH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v7, 0x7f07009c

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/SoundEffectSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    :goto_0
    const/4 v7, 0x3

    if-ge v1, v7, :cond_0

    iget-object v8, p0, Lcom/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    sget-object v7, Lcom/android/settings/notification/SoundEffectSettings;->KEYS:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/SoundEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/TwoStatePreference;

    aput-object v7, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v7, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;

    invoke-direct {v7, p0, v10}, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;-><init>(Lcom/android/settings/notification/SoundEffectSettings;Lcom/android/settings/notification/SoundEffectSettings$1;)V

    iput-object v7, p0, Lcom/android/settings/notification/SoundEffectSettings;->mMusicReceiver:Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/settings/notification/SoundEffectSettings;->intentFilter:Landroid/content/IntentFilter;

    iget-object v7, p0, Lcom/android/settings/notification/SoundEffectSettings;->intentFilter:Landroid/content/IntentFilter;

    const-string v8, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/notification/SoundEffectSettings;->intentFilter:Landroid/content/IntentFilter;

    const-string v8, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/notification/SoundEffectSettings;->intentFilter:Landroid/content/IntentFilter;

    const-string v8, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/settings/notification/SoundEffectSettings;->mMusicReceiver:Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;

    iget-object v9, p0, Lcom/android/settings/notification/SoundEffectSettings;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    iput-object v7, p0, Lcom/android/settings/notification/SoundEffectSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundEffectSettings;->isAudioPathEarjack()Z

    move-result v7

    if-ne v7, v11, :cond_2

    iput v11, p0, Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    :cond_1
    :goto_1
    sget-object v0, Lcom/android/settings/notification/SoundEffectSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    aget-object v6, v0, v2

    iget v7, p0, Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/notification/SoundEffectSettings;->setAudioPath(Lcom/android/settings/notification/SettingPref;I)V

    invoke-virtual {v6, p0}, Lcom/android/settings/notification/SettingPref;->init(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/preference/Preference;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundEffectSettings;->isAudioPathBTHeadphone()Z

    move-result v7

    if-ne v7, v11, :cond_1

    iput v12, p0, Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    goto :goto_1

    :cond_3
    const-string v7, "my_sound"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/SoundEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/android/settings/notification/SoundEffectSettings;->mMySound:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v7, v7, v11

    const v8, 0x7f0a1410

    invoke-virtual {v7, v8}, Landroid/preference/TwoStatePreference;->setTitle(I)V

    iget-object v7, p0, Lcom/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v7, v7, v12

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v7, v7, v12

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Pro"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/TwoStatePreference;->setTitle(Ljava/lang/CharSequence;)V

    sget-boolean v7, Lcom/android/settings/notification/SoundEffectSettings;->SUPPORT_FW_FEATURE_LOGGING:Z

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "com.android.settings.SubSettings"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    const-string v8, "SEST"

    invoke-static {v7, v8, v10, v10}, Lcom/android/settings/notification/SoundEffectSettings;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    const/16 v8, 0x64

    if-lt v7, v8, :cond_5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    const/16 v8, 0xc8

    if-gt v7, v8, :cond_5

    const-string v7, "my_sound"

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/SoundEffectSettings;->removePreference(Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    const-string v7, "com.android.settings.Settings"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    const-string v8, "SEST"

    invoke-static {v7, v8, v10, v10}, Lcom/android/settings/notification/SoundEffectSettings;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const-string v7, "com.android.settings.Settings$SoundEffectSettingsActivity"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    const-string v8, "SEMU"

    invoke-static {v7, v8, v10, v10}, Lcom/android/settings/notification/SoundEffectSettings;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 8

    const/4 v7, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    sget-boolean v4, Lcom/android/settings/notification/SoundEffectSettings;->SUPPORT_FW_FEATURE_LOGGING:Z

    if-eqz v4, :cond_3

    sget-object v0, Lcom/android/settings/notification/SoundEffectSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/android/settings/notification/SettingPref;->getEnabledSoundAlive()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    const-string v5, "SESA"

    const-string v6, "sound_alive"

    invoke-static {v4, v5, v6, v7}, Lcom/android/settings/notification/SoundEffectSettings;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v3}, Lcom/android/settings/notification/SettingPref;->getEnabledK2HD()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    const-string v5, "SESA"

    const-string v6, "k2hd"

    invoke-static {v4, v5, v6, v7}, Lcom/android/settings/notification/SoundEffectSettings;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v3}, Lcom/android/settings/notification/SettingPref;->getEnabledTubeAmp()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    const-string v5, "SESA"

    const-string v6, "tube_amp"

    invoke-static {v4, v5, v6, v7}, Lcom/android/settings/notification/SoundEffectSettings;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/notification/SoundEffectSettings;->mMusicReceiver:Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/notification/SoundEffectSettings;->mSettingsObserver:Lcom/android/settings/notification/SoundEffectSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/SoundEffectSettings$SettingsObserver;->register(Z)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/settings/notification/SoundEffectSettings;->mMySound:Landroid/preference/PreferenceScreen;

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "SoundEffectSettings"

    const-string v3, "Preference or mMySound is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/SoundEffectSettings;->mMySound:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.hearingadjust.launch"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SoundEffectSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SoundEffectSettings"

    const-string v3, " following activity com.sec.hearingadjust.launch  Not exist!! "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onResume()V
    .locals 7

    const/4 v5, 0x1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v4, p0, Lcom/android/settings/notification/SoundEffectSettings;->mSettingsObserver:Lcom/android/settings/notification/SoundEffectSettings$SettingsObserver;

    invoke-virtual {v4, v5}, Lcom/android/settings/notification/SoundEffectSettings$SettingsObserver;->register(Z)V

    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v4, v4, v1

    if-eqz v4, :cond_0

    const-string v2, ""

    packed-switch v1, :pswitch_data_0

    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v4, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v6, v4, v1

    if-eqz v3, :cond_1

    move v4, v5

    :goto_2
    invoke-virtual {v6, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_0
    const-string v2, "sound_alive_effect"

    goto :goto_1

    :pswitch_1
    const-string v2, "k2hd_effect"

    goto :goto_1

    :pswitch_2
    const-string v2, "tube_amp_effect"

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAudioPath(Lcom/android/settings/notification/SettingPref;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    invoke-virtual {p1, v2}, Lcom/android/settings/notification/SettingPref;->setBTPlugged(I)V

    invoke-virtual {p1, v1}, Lcom/android/settings/notification/SettingPref;->setHeadsetPlugged(I)V

    :goto_0
    return-void

    :cond_0
    if-ne p2, v2, :cond_1

    invoke-virtual {p1, v1}, Lcom/android/settings/notification/SettingPref;->setBTPlugged(I)V

    invoke-virtual {p1, v2}, Lcom/android/settings/notification/SettingPref;->setHeadsetPlugged(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/settings/notification/SettingPref;->setBTPlugged(I)V

    invoke-virtual {p1, v1}, Lcom/android/settings/notification/SettingPref;->setHeadsetPlugged(I)V

    goto :goto_0
.end method
