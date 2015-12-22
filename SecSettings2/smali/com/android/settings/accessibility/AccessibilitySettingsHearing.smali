.class public Lcom/android/settings/accessibility/AccessibilitySettingsHearing;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettingsHearing.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/DialogCreatable;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAllSoundOffCheckbox:Landroid/preference/SwitchPreference;

.field private mAudioBalancePref:Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;

.field private mAudioCategory:Landroid/preference/PreferenceScreen;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoHapticCheckbox:Landroid/preference/SwitchPreference;

.field private final mAutohapticNotification:Landroid/database/ContentObserver;

.field private mCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private final mFlashNotification:Landroid/database/ContentObserver;

.field private mFlashNotificationCheckbox:Landroid/preference/SwitchPreference;

.field private mMonoAudioCheckbox:Landroid/preference/SwitchPreference;

.field private mSamsungCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mSoundDetectorPlusPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mSoundDetectorPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

.field private mTactileAssist:Landroid/os/TactileAssist;

.field private mToggleHearingAidPreference:Landroid/preference/SwitchPreference;

.field private final mTurnOffAllSound:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$17;

    invoke-direct {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$17;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$1;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mFlashNotification:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$2;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAutohapticNotification:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$3;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mTurnOffAllSound:Landroid/database/ContentObserver;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mCurConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->updateFlashNotificationSettingsScreen()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->updateAutohapticSettingsScreen()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/os/TactileAssist;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mTactileAssist:Landroid/os/TactileAssist;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;Landroid/os/TactileAssist;)Landroid/os/TactileAssist;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mTactileAssist:Landroid/os/TactileAssist;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mSoundDetectorPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAllSoundOffCheckbox:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mFlashNotificationCheckbox:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAutoHapticCheckbox:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private initializeAllPreferences()V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "audio_preference_key"

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioCategory:Landroid/preference/PreferenceScreen;

    const-string v2, "sound_balance"

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;

    iput-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioBalancePref:Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;

    const-string v2, "mono_audio_key"

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mMonoAudioCheckbox:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mMonoAudioCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "all_sound_off_key"

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAllSoundOffCheckbox:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAllSoundOffCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "flash_notification_key"

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mFlashNotificationCheckbox:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mFlashNotificationCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "call_hearing_aid"

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mToggleHearingAidPreference:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mToggleHearingAidPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "auto_haptic_key"

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAutoHapticCheckbox:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAutoHapticCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAutoHapticCheckbox:Landroid/preference/SwitchPreference;

    const v5, 0x7f0a09a9

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setTitleDescription(Ljava/lang/CharSequence;)V

    const-string v2, "google_captioning_preference_screen"

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v2, "samsung_captioning_preference_screen"

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v5, "com.samsung.android.video"

    invoke-static {v2, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioCategory:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    const-string v2, "sound_detector_preference"

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mSoundDetectorPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    const-string v2, "sound_detector_plus_preference"

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mSoundDetectorPlusPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x1120053

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-virtual {v2, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-virtual {v2, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mFlashNotificationCheckbox:Landroid/preference/SwitchPreference;

    const v5, 0x7f0a09a3

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "USA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "Canada"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioCategory:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mToggleHearingAidPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b

    :goto_0
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioCategory:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioCategory:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mMonoAudioCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "mono_audio_db"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_c

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAllSoundOffCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "all_sound_off"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_d

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mFlashNotificationCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "flash_notification"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_e

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mToggleHearingAidPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "hearing_aid"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_f

    move v2, v3

    :goto_4
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAutoHapticCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "def_tactileassist_enable"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_10

    move v2, v3

    :goto_5
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_FLASH_NOTIFICATION"

    invoke-virtual {v2, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioCategory:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mFlashNotificationCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v5, "com.samsung.android.app.sounddetector"

    invoke-static {v2, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v5, "com.samsung.android.app.advsounddetector"

    invoke-static {v2, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioCategory:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mSoundDetectorPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioCategory:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mSoundDetectorPlusPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_9
    :goto_6
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioCategory:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_a
    return-void

    :cond_b
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioCategory:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAutoHapticCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_c
    move v2, v4

    goto/16 :goto_1

    :cond_d
    move v2, v4

    goto/16 :goto_2

    :cond_e
    move v2, v4

    goto/16 :goto_3

    :cond_f
    move v2, v4

    goto :goto_4

    :cond_10
    move v2, v4

    goto :goto_5

    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v5, "com.samsung.android.app.sounddetector"

    invoke-static {v2, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v5, "com.samsung.android.app.advsounddetector"

    invoke-static {v2, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioCategory:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mSoundDetectorPlusPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mSoundDetectorPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mSoundDetectorPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sound_detector"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_12

    :goto_7
    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_6

    :cond_12
    move v3, v4

    goto :goto_7

    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.samsung.android.app.sounddetector"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.samsung.android.app.advsounddetector"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioCategory:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mSoundDetectorPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_6
.end method

.method private updateAutohapticSettingsScreen()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "def_tactileassist_enable"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAutoHapticCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAutoHapticCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method private updateContentObserver()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "flash_notification"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mFlashNotification:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "all_sound_off"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mTurnOffAllSound:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "def_tactileassist_enable"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAutohapticNotification:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private updateFlashNotificationSettingsScreen()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "flash_notification"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mFlashNotificationCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mFlashNotificationCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method private updateGoogleCaptionSwitch()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_captioning_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0a0e2d

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0a0e2e

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_1
.end method

.method private updateSamsungCaptionSwitch()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_sec_captioning_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0a0e2d

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0a0e2e

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$4;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$4;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f070004

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->initializeAllPreferences()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 14

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v9

    if-nez v9, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v9, "layout_inflater"

    invoke-virtual {p0, v9}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v9, 0x7f040160

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v9, 0x7f100312

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sparse-switch p1, :sswitch_data_0

    const/4 v5, 0x0

    goto :goto_0

    :sswitch_0
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0a09ac

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0a079c

    new-instance v11, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$7;

    invoke-direct {v11, p0, v1, v7}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$7;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/high16 v10, 0x1040000

    new-instance v11, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$6;

    invoke-direct {v11, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$6;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$5;

    invoke-direct {v10, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$5;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    :sswitch_1
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0a09a8

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0a09aa

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0a079c

    new-instance v11, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$10;

    invoke-direct {v11, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$10;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/high16 v10, 0x1040000

    new-instance v11, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$9;

    invoke-direct {v11, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$9;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$8;

    invoke-direct {v10, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$8;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto/16 :goto_0

    :sswitch_2
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0a09c8

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0a09cd

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0a079c

    new-instance v11, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$12;

    invoke-direct {v11, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$12;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$11;

    invoke-direct {v10, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$11;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0a09d2

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0a0924

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "com.google.android.marvin.talkback"

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0a09ba

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "com.samsung.android.app.talkback"

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0a09bb

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_2
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0a0169

    new-instance v11, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$15;

    invoke-direct {v11, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$15;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/high16 v10, 0x1040000

    new-instance v11, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$14;

    invoke-direct {v11, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$14;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$13;

    invoke-direct {v10, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$13;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0xd -> :sswitch_3
        0xd724a -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mFlashNotification:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mTurnOffAllSound:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioBalancePref:Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->releaseMediaPlayer()V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 14

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mMonoAudioCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    new-instance v7, Landroid/content/Intent;

    const-string v11, "android.settings.MONO_AUDIO_CHANGED"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "mono_audio_db"

    if-eqz v10, :cond_0

    const/4 v11, 0x1

    :goto_0
    invoke-static {v12, v13, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v12, "mono"

    if-eqz v10, :cond_1

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {v7, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v11

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v7, v12}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v11, "AccessibilitySettings_Hearing"

    const-string v12, "Mono Audio broadcast"

    invoke-static {v11, v12}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    :goto_2
    return v11

    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    :cond_2
    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAllSoundOffCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    new-instance v0, Landroid/content/Intent;

    const-string v11, "android.settings.ALL_SOUND_MUTE"

    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v10, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0xd

    invoke-virtual {p0, v11}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->showDialog(I)V

    const/4 v11, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "all_sound_off"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v11, "mute"

    const/4 v12, 0x1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v11

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v0, v12}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v11, "AccessibilitySettings_Hearing"

    const-string v12, "All sound off broadcast"

    invoke-static {v11, v12}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "all_sound_off"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v11, "mute"

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    :cond_5
    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mFlashNotificationCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v11, "pref_flash_noti"

    const/4 v12, 0x0

    invoke-interface {v3, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v11

    const-string v12, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v11

    const-string v12, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "flash_notification"

    if-eqz v10, :cond_6

    const/4 v11, 0x1

    :goto_4
    invoke-static {v12, v13, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v11, 0x1

    goto/16 :goto_2

    :cond_6
    const/4 v11, 0x0

    goto :goto_4

    :cond_7
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "master_motion"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "motion_overturn"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "motion_merged_mute_pause"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_9

    :cond_8
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_9
    if-eqz v10, :cond_b

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const v13, 0x7f0a09ab

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "motion_merged_mute_pause"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "motion_overturn"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "flash_notification"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "master_motion"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "com.android.settings"

    const-string v13, "FLNO"

    invoke-static {v11, v12, v13}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    const/4 v11, 0x1

    goto/16 :goto_2

    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "flash_notification"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "flash_notification"

    if-eqz v10, :cond_d

    const/4 v11, 0x1

    :goto_6
    invoke-static {v12, v13, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    :cond_d
    const/4 v11, 0x0

    goto :goto_6

    :cond_e
    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mToggleHearingAidPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    if-eqz v10, :cond_f

    const/4 v1, 0x1

    :goto_7
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "hearing_aid"

    invoke-static {v11, v12, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v12, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioManager:Landroid/media/AudioManager;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "HACSetting="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v1, :cond_10

    const-string v11, "ON"

    :goto_8
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const/4 v11, 0x1

    goto/16 :goto_2

    :cond_f
    const/4 v1, 0x0

    goto :goto_7

    :cond_10
    const-string v11, "OFF"

    goto :goto_8

    :cond_11
    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAutoHapticCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    if-eqz v10, :cond_12

    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->showDialog(I)V

    :goto_9
    const-string v11, "AccessibilitySettings_Hearing"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mTactileAssist : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    goto/16 :goto_2

    :cond_12
    const-string v11, "tactileassist"

    invoke-virtual {p0, v11}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/TactileAssist;

    iput-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mTactileAssist:Landroid/os/TactileAssist;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "def_tactileassist_enable"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mTactileAssist:Landroid/os/TactileAssist;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/TactileAssist;->setEnable(Z)Z

    goto :goto_9

    :cond_13
    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    if-eqz v10, :cond_14

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "accessibility_captioning_enabled"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

    const v12, 0x7f0a0e2d

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :goto_a
    const/4 v11, 0x1

    goto/16 :goto_2

    :cond_14
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "accessibility_captioning_enabled"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

    const v12, 0x7f0a0e2e

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_a

    :cond_15
    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    if-eqz v10, :cond_16

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "accessibility_sec_captioning_enabled"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

    const v12, 0x7f0a0e2d

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :goto_b
    const/4 v11, 0x1

    goto/16 :goto_2

    :cond_16
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "accessibility_sec_captioning_enabled"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

    const v12, 0x7f0a0e2e

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_b

    :cond_17
    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mSoundDetectorPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v11}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v6

    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v11}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v8

    if-eqz v10, :cond_1b

    if-nez v6, :cond_19

    if-nez v8, :cond_19

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "sound_detector"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v4, Landroid/content/Intent;

    const-string v11, "com.android.settings.action.sound_detector"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.samsung.settings.action.sound_detector"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_18
    :goto_c
    const/4 v11, 0x1

    goto/16 :goto_2

    :cond_19
    if-eqz v6, :cond_1a

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const v13, 0x7f0a09cd

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mSoundDetectorPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_c

    :cond_1a
    if-eqz v8, :cond_18

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const v13, 0x7f0a09ce

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mSoundDetectorPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_c

    :cond_1b
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "sound_detector"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "com.samsung.android.app.sounddetector.service.SoundDetectService"

    invoke-static {v11, v12}, Lcom/android/settings/accessibility/AccessibilityUtils;->getServiceTaskName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1c

    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v11, Landroid/content/ComponentName;

    const-string v12, "com.samsung.android.app.sounddetector"

    const-string v13, "com.samsung.android.app.sounddetector.service.SoundDetectService"

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_1c
    new-instance v4, Landroid/content/Intent;

    const-string v11, "com.android.settings.action.sound_detector"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.samsung.settings.action.sound_detector"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_c

    :cond_1d
    const/4 v11, 0x0

    goto/16 :goto_2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.video.ACTION_START_CC_SETTING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.video"

    const-string v4, "com.samsung.android.video.player.activity.SubtitleSetting"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mSoundDetectorPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.accessibility.SOUND_DETECTOR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mSoundDetectorPlusPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.accessibility.SOUND_DETECTOR_PLUS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->updateContentObserver()V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mMonoAudioCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "mono_audio_db"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAllSoundOffCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "all_sound_off"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mFlashNotificationCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "flash_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mToggleHearingAidPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "hearing_aid"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->updateSamsungCaptionSwitch()V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAutoHapticCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "def_tactileassist_enable"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mSoundDetectorPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "sound_detector"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioBalancePref:Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->prepareMediaPlayer()V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioBalancePref:Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->setEnabled(Z)V

    :goto_6
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->updateGoogleCaptionSwitch()V

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
    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_4

    :cond_6
    move v0, v2

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioBalancePref:Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->setEnabled(Z)V

    goto :goto_6
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioBalancePref:Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->releaseMediaPlayer()V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method
