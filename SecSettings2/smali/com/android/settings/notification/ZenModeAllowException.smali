.class public Lcom/android/settings/notification/ZenModeAllowException;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ZenModeAllowException.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeAllowException$SettingsObserver;,
        Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback;
    }
.end annotation


# static fields
.field private static final PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAlarm:Landroid/preference/SwitchPreference;

.field private mCalls:Landroid/preference/SwitchPreference;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDisableListeners:Z

.field private mEvents:Landroid/preference/SwitchPreference;

.field private final mHandler:Landroid/os/Handler;

.field private mMessages:Landroid/preference/SwitchPreference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private final mSettingsObserver:Lcom/android/settings/notification/ZenModeAllowException$SettingsObserver;

.field private mStarred:Lcom/android/settings/notification/DropDownPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/settings/notification/ZenModeAllowException$1;

    const/4 v1, 0x1

    const-string v2, "zen_mode"

    const-string v3, "zen_mode"

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/ZenModeAllowException$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/ZenModeAllowException;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback;

    new-instance v0, Lcom/android/settings/notification/ZenModeAllowException$11;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenModeAllowException$11;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ZenModeAllowException;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/notification/ZenModeAllowException$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenModeAllowException$SettingsObserver;-><init>(Lcom/android/settings/notification/ZenModeAllowException;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mSettingsObserver:Lcom/android/settings/notification/ZenModeAllowException$SettingsObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/ZenModeAllowException;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mDisableListeners:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/ZenModeAllowException;)Landroid/service/notification/ZenModeConfig;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mConfig:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/notification/ZenModeAllowException;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAllowException;->updateControls()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/notification/ZenModeAllowException;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAllowException;->updateZenModeConfig()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/notification/ZenModeAllowException;Landroid/service/notification/ZenModeConfig;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeAllowException;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/notification/ZenModeAllowException;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAllowException;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/notification/ZenModeAllowException;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/notification/ZenModeAllowException;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/notification/ZenModeAllowException;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/notification/ZenModeAllowException;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/notification/ZenModeAllowException;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900()Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback;
    .locals 1

    sget-object v0, Lcom/android/settings/notification/ZenModeAllowException;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback;

    return-object v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v3, 0x7f0700cb

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/ZenModeAllowException;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    sget-object v3, Lcom/android/settings/notification/ZenModeAllowException;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback;

    invoke-virtual {v3, p0}, Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback;->init(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/preference/Preference;

    move-result-object v2

    sget-object v3, Lcom/android/settings/notification/ZenModeAllowException;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback;

    new-instance v4, Lcom/android/settings/notification/ZenModeAllowException$2;

    invoke-direct {v4, p0}, Lcom/android/settings/notification/ZenModeAllowException$2;-><init>(Lcom/android/settings/notification/ZenModeAllowException;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback;->setCallback(Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback$Callback;)V

    const-string v3, "important"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    const-string v3, "phone_calls"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mCalls:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mCalls:Landroid/preference/SwitchPreference;

    new-instance v4, Lcom/android/settings/notification/ZenModeAllowException$3;

    invoke-direct {v4, p0}, Lcom/android/settings/notification/ZenModeAllowException$3;-><init>(Lcom/android/settings/notification/ZenModeAllowException;)V

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_0
    const-string v3, "messages"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mMessages:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mMessages:Landroid/preference/SwitchPreference;

    new-instance v4, Lcom/android/settings/notification/ZenModeAllowException$4;

    invoke-direct {v4, p0}, Lcom/android/settings/notification/ZenModeAllowException$4;-><init>(Lcom/android/settings/notification/ZenModeAllowException;)V

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v3, "starred"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/notification/DropDownPreference;

    iput-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    const v4, 0x7f0a0e1a

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    const v4, 0x7f0a0e1c

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    const v4, 0x7f0a0e1b

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    new-instance v4, Lcom/android/settings/notification/ZenModeAllowException$5;

    invoke-direct {v4, p0}, Lcom/android/settings/notification/ZenModeAllowException$5;-><init>(Lcom/android/settings/notification/ZenModeAllowException;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/DropDownPreference;->setCallback(Lcom/android/settings/notification/DropDownPreference$Callback;)V

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    const-string v3, "events"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mEvents:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mEvents:Landroid/preference/SwitchPreference;

    new-instance v4, Lcom/android/settings/notification/ZenModeAllowException$6;

    invoke-direct {v4, p0}, Lcom/android/settings/notification/ZenModeAllowException$6;-><init>(Lcom/android/settings/notification/ZenModeAllowException;)V

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v3, "zen_mode"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/ZenModeAllowException;->removePreference(Ljava/lang/String;)V

    const-string v3, "alarm_switch"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/ZenModeAllowException;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mAlarm:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mAlarm:Landroid/preference/SwitchPreference;

    new-instance v4, Lcom/android/settings/notification/ZenModeAllowException$7;

    invoke-direct {v4, p0}, Lcom/android/settings/notification/ZenModeAllowException$7;-><init>(Lcom/android/settings/notification/ZenModeAllowException;)V

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mEvents:Landroid/preference/SwitchPreference;

    const v4, 0x7f0a0ecf

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    const-string v3, "app_notifications"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/ZenModeAllowException;->removePreference(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mAlarm:Landroid/preference/SwitchPreference;

    const v4, 0x7f0a0edc

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAllowException;->updateControls()V

    return-object v1

    :cond_4
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mCalls:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mCalls:Landroid/preference/SwitchPreference;

    goto/16 :goto_0
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

    const-string v2, "ZenModeSettings"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig;-><init>()V

    goto :goto_0
.end method

.method private setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    .locals 6

    const-string v3, "notification"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAllowException;->mConfig:Landroid/service/notification/ZenModeConfig;

    const-string v3, "ZenModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saved mConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeAllowException;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAllowException;->updateStarredEnabled()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v3, "ZenModeSettings"

    const-string v4, "Error calling NoMan"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateControls()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mDisableListeners:Z

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAllowException;->mCalls:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAllowException;->mCalls:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v3, v3, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAllowException;->mMessages:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v3, v3, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAllowException;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v3, v3, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAllowException;->mEvents:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v3, v3, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAllowException;->updateStarredEnabled()V

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAllowException;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAllowException;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dnd_allowexception"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mAlarm:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAllowException;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v2, v2, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iput-boolean v1, p0, Lcom/android/settings/notification/ZenModeAllowException;->mDisableListeners:Z

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->updateEnable()V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private updateStarredEnabled()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAllowException;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/notification/DropDownPreference;->setEnabled(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateZenModeConfig()V
    .locals 4

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAllowException;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mConfig:Landroid/service/notification/ZenModeConfig;

    const-string v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateZenModeConfig mConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAllowException;->updateControls()V

    goto :goto_0
.end method


# virtual methods
.method protected cancelDialog(I)V
    .locals 2

    sget-object v0, Lcom/android/settings/notification/ZenModeAllowException;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAllowException;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback;->setValueWithoutCallback(Landroid/content/Context;I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeAllowException;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAllowException;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAllowException;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dnd_allowexception"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAllowException;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mPM:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mConfig:Landroid/service/notification/ZenModeConfig;

    const-string v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded mConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAllowException;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAllowException;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mSettingsObserver:Lcom/android/settings/notification/ZenModeAllowException$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeAllowException$SettingsObserver;->unregister()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAllowException;->updateControls()V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mSettingsObserver:Lcom/android/settings/notification/ZenModeAllowException$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeAllowException$SettingsObserver;->register()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mDisableListeners:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dnd_allowexception"

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->updateZenMode()V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->updateEnable()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected putZenModeSetting(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method protected showConditionSelection(I)V
    .locals 7

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeAllowException;->mDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v3, Lcom/android/settings/notification/ZenModeConditionSelection;

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeAllowException;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/settings/notification/ZenModeConditionSelection;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/settings/notification/ZenModeAllowException$8;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/notification/ZenModeAllowException$8;-><init>(Lcom/android/settings/notification/ZenModeAllowException;Lcom/android/settings/notification/ZenModeConditionSelection;)V

    sget-object v4, Lcom/android/settings/notification/ZenModeAllowException;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback;

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeAllowException;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback;->getValue(Landroid/content/Context;)I

    move-result v0

    new-instance v2, Landroid/widget/ScrollView;

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeAllowException;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/android/settings/notification/ZenModeAllowException;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback;->getCaption(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0169

    invoke-virtual {v4, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0167

    new-instance v6, Lcom/android/settings/notification/ZenModeAllowException$10;

    invoke-direct {v6, p0, v0}, Lcom/android/settings/notification/ZenModeAllowException$10;-><init>(Lcom/android/settings/notification/ZenModeAllowException;I)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/notification/ZenModeAllowException$9;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/notification/ZenModeAllowException$9;-><init>(Lcom/android/settings/notification/ZenModeAllowException;I)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/notification/ZenModeAllowException;->mDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeAllowException;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public updateEnable()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dnd_allowexception"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAllowException;->mCalls:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAllowException;->mCalls:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAllowException;->mMessages:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAllowException;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/DropDownPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAllowException;->mEvents:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAllowException;->mAlarm:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAllowException;->updateStarredEnabled()V

    :cond_2
    return-void
.end method

.method public updateZenMode()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeAllowException;->putZenModeSetting(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeAllowException;->putZenModeSetting(I)V

    goto :goto_0
.end method
