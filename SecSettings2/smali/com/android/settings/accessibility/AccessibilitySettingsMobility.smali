.class public Lcom/android/settings/accessibility/AccessibilitySettingsMobility;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettingsMobility.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/DialogCreatable;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private MobilityCategory:Landroid/preference/PreferenceCategory;

.field private RecognitionCategory:Landroid/preference/PreferenceCategory;

.field private mAssistantMenu:Landroid/preference/PreferenceScreen;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDialogTitle:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mLongPressTimeoutDefault:I

.field private final mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOldSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

.field private mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

.field private final mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

.field private mSingleTapMode:I

.field private mSingleTapModeDialog:Landroid/app/AlertDialog;

.field private mTapAndHoldDelayObserver:Landroid/database/ContentObserver;

.field private mToggleAccessControlPreference:Landroid/preference/PreferenceScreen;

.field private mToggleAirWakeUpPreference:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$21;

    invoke-direct {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$21;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSingleTapModeDialog:Landroid/app/AlertDialog;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mCurConfig:Landroid/content/res/Configuration;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$1;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$1;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$2;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mTapAndHoldDelayObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->initializeUniversalSwitchPreference()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->updateExclusiveTalkback()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->isSinglePopupNeeded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->setTapAndHoldDelaySummary()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->showSingleTapModeDialog()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSingleTapMode:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSingleTapMode:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->removeDialog(I)V

    return-void
.end method

.method private broadcastAirWakeupChanged(Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_WAKE_UP_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private initializeAllPreferences()V
    .locals 9

    const-string v6, "mobility_preference_key"

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->MobilityCategory:Landroid/preference/PreferenceCategory;

    const-string v6, "Recognition_preference_key"

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->RecognitionCategory:Landroid/preference/PreferenceCategory;

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->initializeUniversalSwitchPreference()V

    const-string v6, "assistant_menu_preference"

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "com.samsung.android.app.assistantmenu"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->MobilityCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    const-string v6, "select_long_press_timeout_preference"

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v6, "old_select_long_press_timeout_preference"

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mOldSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mOldSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0074

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0073

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mLongPressTimeoutDefault:I

    array-length v4, v5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    aget-object v7, v5, v0

    aget-object v8, v3, v0

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->MobilityCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->MobilityCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mOldSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const-string v6, "air_wake_up"

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "com.samsung.android.app.airwakeupview"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->MobilityCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    const-string v6, "access_control_key"

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "com.samsung.android.app.accesscontrol"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->RecognitionCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->RecognitionCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->RecognitionCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->RecognitionCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->MobilityCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->MobilityCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->RecognitionCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->RecognitionCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    return-void
.end method

.method private initializeUniversalSwitchPreference()V
    .locals 25

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/settings/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v23

    const-string v24, "device_policy"

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v12, v23

    check-cast v12, Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(I)Ljava/util/List;

    move-result-object v14

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v13, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v23, "com.samsung.android.universalswitch"

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    const-string v23, "com.samsung.android.universalswitch"

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_1

    const-string v23, "AccessibilitySettings_Mobility"

    const-string v24, "Not displaying universa switch option as current user is not owner"

    invoke-static/range {v23 .. v24}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v6, v13, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    invoke-interface {v8, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    const v23, 0x7f0a0e2d

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v18

    :goto_1
    if-eqz v14, :cond_2

    invoke-interface {v14, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    :cond_2
    const/16 v16, 0x1

    :goto_2
    if-nez v16, :cond_3

    if-eqz v17, :cond_a

    :cond_3
    const/16 v23, 0x1

    :goto_3
    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    if-eqz v16, :cond_b

    move-object/from16 v21, v18

    :goto_4
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    const/16 v23, -0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    const-class v23, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_4

    new-instance v23, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$7;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$7;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_4
    invoke-virtual {v15}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v23, "preference_key"

    invoke-virtual {v15}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "checked"

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v23, "title"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_5

    const v23, 0x7f0a0a29

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_5
    const-string v23, "summary"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_6

    const-string v23, "settings_title"

    const v24, 0x7f0a08ea

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "settings_component_name"

    new-instance v24, Landroid/content/ComponentName;

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-direct {v0, v13, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v23, "component_name"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v23, "com.samsung.android.universalswitch"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->MobilityCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->MobilityCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->MobilityCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_8
    const v23, 0x7f0a08dc

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_1

    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_2

    :cond_a
    const/16 v23, 0x0

    goto/16 :goto_3

    :cond_b
    const v23, 0x7f0a08ed

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_4

    :cond_c
    return-void
.end method

.method private isSinglePopupNeeded()Z
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "easy_interaction"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSingleTapMode:I

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "pref_assistant_noti"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assistant_menu"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    if-nez v1, :cond_0

    iget v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSingleTapMode:I

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private setTapAndHoldDelaySummary()V
    .locals 4

    const/16 v3, 0x1f4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "long_press_timeout"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    if-ne v0, v3, :cond_1

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayProvider;->getTimeOutText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayProvider;->getTimeOutText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x5dc

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayProvider;->getTimeOutText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayProvider;->getTimeOutText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    const/16 v2, 0x2bc

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showSingleTapModeDialog()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v6, 0x7f040166

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v6, 0x7f100324

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.samsung.android.app.assistantmenu"

    const-string v8, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mDialogTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a08d4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a08d3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    new-instance v8, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$5;

    invoke-direct {v8, p0, v2, v5, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$5;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;Landroid/content/Intent;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0a0166

    new-instance v8, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$4;

    invoke-direct {v8, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$4;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSingleTapModeDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSingleTapModeDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$6;

    invoke-direct {v7, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$6;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private updateAllPreferences()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->updateMobilityPreferences()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->updateRecognitionPreferences()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->initializeUniversalSwitchPreference()V

    return-void
.end method

.method private updateExclusiveTalkback()V
    .locals 4

    const-string v1, "AccessibilitySettings_Mobility"

    const-string v2, "TalkbackOnChagne "

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "AccessibilitySettings_Mobility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings.Secure.ACCESSIBILITY_ENABLED,  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_use"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private updateMobilityPreferences()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->setTapAndHoldDelaySummary()V

    return-void
.end method

.method private updateRecognitionPreferences()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->setTapAndHoldDelaySummary()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$3;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$3;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

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
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "AccessibilitySettings_Mobility"

    const-string v2, "Unable to retrieve configuration"

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f070005

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->initializeAllPreferences()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 11

    const/4 v10, 0x2

    const v9, 0x104000a

    const/high16 v8, 0x1040000

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/4 v2, 0x0

    goto :goto_0

    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a091c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a091d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$9;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$9;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v2, v9, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$8;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$8;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v2, v8, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    :pswitch_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a091e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a09b1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f0a090e

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x7f0a097d

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, 0x7f0a097d

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$11;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$11;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v2, v9, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$10;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$10;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v2, v8, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_2
    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_use"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v7, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0a0907

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0a090a

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$14;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$14;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v2, v9, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$13;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$13;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v2, v8, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$12;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$12;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_use"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v7, :cond_3

    const v2, 0x7f0a0909

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0a090c

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0a0908

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0a090b

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a091e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a09b1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f0a090e

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x7f0a09ba

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, 0x7f0a09ba

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$17;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$17;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v2, v9, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$16;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$16;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v2, v8, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$15;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$15;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a091e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a09b1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f0a090e

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x7f0a09bb

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, 0x7f0a09bb

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$20;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$20;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v2, v9, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$19;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$19;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v2, v8, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$18;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$18;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mTapAndHoldDelayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11

    const/4 v3, 0x0

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mOldSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v8, p2

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_press_timeout"

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mOldSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move v3, v10

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.app.assistantmenu"

    const-string v2, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_use"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->isSinglePopupNeeded()Z

    move-result v0

    if-ne v0, v10, :cond_2

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->showSingleTapModeDialog()V

    :goto_1
    move v3, v10

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v0, "AccessibilitySettings_Mobility"

    const-string v1, "AssistantMenu Service Start!!"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant_menu"

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->showDialog(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    const-string v0, "AccessibilitySettings_Mobility"

    const-string v1, "AssistantMenu Service Stop!!"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant_menu"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnAirMotionEngine(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_wake_up"

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v10}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->broadcastAirWakeupChanged(Z)V

    :goto_2
    move v3, v10

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_wake_up"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->broadcastAirWakeupChanged(Z)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->autoTurnOffAirMotionEngine(Landroid/content/Context;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant_menu"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v10, :cond_8

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->showDialog(I)V

    :goto_3
    move v3, v10

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isStalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->showDialog(I)V

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->showDialog(I)V

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_use"

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "AccessibilitySettings_Mobility"

    const-string v1, "Access Control Use : 1"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v10, :cond_c

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->showDialog(I)V

    goto :goto_3

    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_use"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "AccessibilitySettings_Mobility"

    const-string v1, "Access Control Use : 0"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const/16 v0, 0x2bc

    if-ne v9, v0, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a08dd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, p0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_4
    move v3, v10

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_press_timeout"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    const-string v0, "AccessibilitySettings_Mobility"

    const-string v1, "onPreferenceClick"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/PreferenceScreen;

    const-string v1, "com.android.settings.AssistantMenuPreferenceFragment"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->updateAllPreferences()V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->updateExclusiveTalkback()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_press_timeout"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mTapAndHoldDelayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
