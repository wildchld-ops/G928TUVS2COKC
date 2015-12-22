.class public Lcom/android/settings/DisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field static mDualFolderType:Z

.field static mSupportFolderType:Z


# instance fields
.field private MAX_BRIGHTNESS_CHANGED:Ljava/lang/String;

.field protected MESSAGE_DELAY:I

.field private isDeviceLockTime:Z

.field private isSecuredLock:Z

.field private mAccessControlObserver:Landroid/database/ContentObserver;

.field private mAutoKeyBacklightPreference:Landroid/preference/SwitchPreference;

.field private mAutoLockmode:Landroid/preference/SwitchPreference;

.field private final mBrightnessMaxReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDozePreference:Landroid/preference/SwitchPreference;

.field private mFontPreview:Landroid/preference/PreferenceScreen;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsKioskModeEnabled:I

.field private mIsLowBattery:Z

.field private mKeyBacklightPreference:Landroid/preference/PreferenceScreen;

.field private mKeyBacklightmode:Landroid/preference/SwitchPreference;

.field private mLiftToWakePreference:Landroid/preference/SwitchPreference;

.field private mOneHand:Landroid/preference/Preference;

.field private mOutdoorMode:Landroid/preference/SwitchPreference;

.field private mOutdoorObserver:Landroid/database/ContentObserver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mRotate:Lcom/android/settings/notification/DropDownPreference;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenMode:Landroid/preference/PreferenceScreen;

.field private mScreenModeObserver:Landroid/database/ContentObserver;

.field private mScreenSaverPreference:Landroid/preference/PreferenceScreen;

.field private mScreenTimeDialog:Landroid/app/AlertDialog;

.field private mScreenTimeoutObserver:Landroid/database/ContentObserver;

.field private mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

.field private mSecBrightness:Lcom/android/settings/BrightnessSeekBarPreference;

.field private mSmartStay:Landroid/preference/PreferenceScreen;

.field private mSmartStayObserver:Landroid/database/ContentObserver;

.field private mTouchKeyLight:Landroid/preference/ListPreference;

.field private mWallpaper:Landroid/preference/PreferenceScreen;

.field private mWifiDisplayPreference:Landroid/preference/Preference;

.field private mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    sput-boolean v0, Lcom/android/settings/DisplaySettings;->mDualFolderType:Z

    new-instance v0, Lcom/android/settings/DisplaySettings$11;

    invoke-direct {v0}, Lcom/android/settings/DisplaySettings$11;-><init>()V

    sput-object v0, Lcom/android/settings/DisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/DisplaySettings;->MESSAGE_DELAY:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/DisplaySettings;->mIsKioskModeEnabled:I

    const-string v0, "com.sec.intent.action.MAX_BRIGHTNESS_CHANGED"

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->MAX_BRIGHTNESS_CHANGED:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/DisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$1;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/DisplaySettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$2;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mOutdoorObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/DisplaySettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$3;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightnessMaxReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/DisplaySettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$4;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/DisplaySettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$5;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    new-instance v0, Lcom/android/settings/DisplaySettings$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$6;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/DisplaySettings$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$7;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/DisplaySettings$10;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$10;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DisplaySettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->is1ATAused()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/BrightnessSeekBarPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSecBrightness:Lcom/android/settings/BrightnessSeekBarPreference;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/DisplaySettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mIsLowBattery:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/DisplaySettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/DisplaySettings;->mIsLowBattery:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/DisplaySettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/DisplaySettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->MAX_BRIGHTNESS_CHANGED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/DisplaySettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/SettingsListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/DisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateScreenModeSummary()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/DisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateSmartStaySummary()V

    return-void
.end method

.method static synthetic access$900(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static allowAllRotations(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private disableUnusableTimeouts(Lcom/android/settings/SettingsListPreference;)V
    .locals 27

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    const-string v24, "device_policy"

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    if-eqz v4, :cond_3

    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v14

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v23

    if-eqz v23, :cond_0

    :cond_0
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v23, "ro.csc.sales_code"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-wide/16 v12, -0x1

    const-wide/32 v12, 0x927c0

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    const-wide/16 v24, 0x1

    cmp-long v23, v14, v24

    if-gez v23, :cond_1

    move-wide v14, v12

    :cond_1
    const/4 v8, -0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DisplaySettings;->isDeviceLockTime:Z

    move/from16 v23, v0

    if-eqz v23, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0e000c

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0e000d

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    :goto_1
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_2
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v7, v0, :cond_6

    aget-object v23, v22, v7

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    cmp-long v23, v20, v14

    if-gtz v23, :cond_2

    aget-object v23, v5, v7

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v23, v22, v7

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/SettingsListPreference;->getValue()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v23

    if-nez v23, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/SettingsListPreference;->getValue()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    cmp-long v23, v24, v20

    if-gez v23, :cond_2

    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v8, v0, :cond_2

    move v8, v7

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    const-wide/16 v14, 0x0

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0e000a

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0e000b

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0e0008

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0e0009

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_1

    :cond_6
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/SettingsListPreference;->getValue()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v8, v0, :cond_7

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/SettingsListPreference;->getValue()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_7
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-eqz v23, :cond_8

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-nez v23, :cond_a

    :cond_8
    const v23, 0x7f0a1032

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/SettingsListPreference;->getValue()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v24, v0

    cmp-long v23, v24, v14

    if-gtz v23, :cond_b

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsListPreference;->setValue(Ljava/lang/String;)V

    :goto_4
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-lez v23, :cond_d

    const/16 v23, 0x1

    :goto_5
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsListPreference;->setEnabled(Z)V

    return-void

    :cond_a
    const-string v23, "DisplaySettings"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "revisedValues.size() : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/CharSequence;

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    sub-long v10, v14, v24

    const-string v23, "DisplaySettings"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "last_timeout : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v24, 0x0

    cmp-long v23, v10, v24

    if-lez v23, :cond_9

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    aget-object v23, v22, v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    cmp-long v23, v14, v24

    if-gez v23, :cond_9

    const v23, 0x7f0a1032

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_b
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-lez v23, :cond_c

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/CharSequence;

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    cmp-long v23, v24, v14

    if-nez v23, :cond_c

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_c
    const-string v23, "DisplaySettings"

    const-string v24, "mLockAfter.setValueIndex(revisedValues.size()-1)"

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsListPreference;->setValueIndex(I)V

    goto/16 :goto_4

    :cond_d
    const/16 v23, 0x0

    goto/16 :goto_5
.end method

.method private getFontName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string v2, ""

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "theme_font_system"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "persist.sys.flipfontpath"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Theme"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a158c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/settings/Utils;->getFontName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    goto :goto_0
.end method

.method private getTimeoutNewEntry(J)Ljava/lang/String;
    .locals 13

    const-wide/16 v8, 0x3e8

    div-long v6, p1, v8

    const-wide/16 v8, 0x3c

    div-long v2, v6, v8

    const-wide/16 v8, 0x3c

    div-long v0, v2, v8

    const-wide/16 v8, 0x3c

    rem-long/2addr v6, v8

    const-string v4, ""

    const-wide/16 v8, 0x0

    cmp-long v5, v0, v8

    if-lez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f11000a

    long-to-int v9, v0

    invoke-virtual {v5, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    long-to-int v10, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v8, 0x3c

    rem-long/2addr v2, v8

    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v5, v0, v8

    if-lez v5, :cond_1

    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-lez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-lez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f11000b

    long-to-int v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    long-to-int v11, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-lez v5, :cond_3

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f11000c

    long-to-int v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    long-to-int v11, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_4
    const-string v5, "DisplaySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getTimeoutNewEntry : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method private is1ATAused()Z
    .locals 2

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gt58"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "gt5note8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isDozeAvailable(Landroid/content/Context;)Z
    .locals 3

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_1

    const-string v1, "debug.doze.component"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isInDefaultTimeoutList(J)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/android/settings/DisplaySettings;->isDeviceLockTime:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    :cond_0
    :goto_1
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_2
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private static isLiftToWakeAvailable(Landroid/content/Context;)Z
    .locals 2

    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshScreenTimeoutList(Lcom/android/settings/SettingsListPreference;)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v6, "device_policy"

    invoke-virtual {v3, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "screen_off_timeout"

    const-wide/16 v8, 0x7530

    invoke-static {v3, v6, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

    invoke-direct {p0, v3}, Lcom/android/settings/DisplaySettings;->disableUnusableTimeouts(Lcom/android/settings/SettingsListPreference;)V

    const-string v3, "DisplaySettings"

    const-string v6, "refreshScreenTimeoutList() : screen Time out for edm"

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method private updateBackKeyLightSummary()V
    .locals 9

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mKeyBacklightPreference:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e00e8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e00e7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "key_backlight_timeout"

    const/16 v7, 0xbb8

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v4, :cond_0

    array-length v5, v4

    if-lez v5, :cond_0

    aget-object v5, v4, v8

    if-eqz v5, :cond_0

    aget-object v3, v4, v8

    :cond_0
    const/4 v2, 0x0

    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    aget-object v5, v1, v2

    if-eqz v5, :cond_3

    aget-object v5, v1, v2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    aget-object v3, v4, v2

    :cond_1
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mKeyBacklightPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateFontPreviewSummary()V
    .locals 13

    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mFontPreview:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->getSelectedFontSize(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x0

    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    const-string v10, "prefs"

    invoke-virtual {v9, v10, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->getFontPathFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    if-lez v9, :cond_0

    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    aget-object v7, v8, v9

    :cond_0
    const-string v9, "monotype"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "default"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, ""

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_1
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a1003

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :goto_0
    const-string v6, ""

    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v9

    if-eqz v9, :cond_5

    packed-switch v3, :pswitch_data_0

    :goto_1
    const-string v1, ", "

    const-string v0, "ar"

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v1, "\u060c "

    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mFontPreview:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v6}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    :cond_4
    invoke-direct {p0, v7}, Lcom/android/settings/DisplaySettings;->getFontName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :pswitch_0
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0967

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a15f5

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0966

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_1

    :cond_5
    packed-switch v3, :pswitch_data_1

    goto :goto_1

    :pswitch_3
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0968

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_1

    :pswitch_4
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0969

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_5
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0967

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_6
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a096c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_7
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0966

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_8
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a096a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_9
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0965

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_a
    const v9, 0x7f0a096d

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :pswitch_b
    const v9, 0x7f0a096d

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :pswitch_c
    const v9, 0x7f0a096d

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :pswitch_d
    const v9, 0x7f0a096d

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private updateOutdoorModeSummary()V
    .locals 5

    const v1, 0x7f0a0ee7

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateScreenModeSummary()V
    .locals 8

    const v7, 0x7f0a100f

    const v6, 0x7f0a100e

    const v5, 0x7f0a100b

    const v4, 0x7f0a100d

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_automatic_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0a1007

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_automatic_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private updateScreenSaverSummary()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateSmartStaySummary()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartStay:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "intelligent_sleep_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartStay:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0a0e2d

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartStay:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0a0e2e

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private updateState()V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateOutdoorModeSummary()V

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateFontPreviewSummary()V

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateSmartStaySummary()V

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateTouchKeyLightSummary()V

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateScreenSaverSummary()V

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateBackKeyLightSummary()V

    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "wake_gesture_enabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "doze_enabled"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateScreenModeSummary()V

    sget-boolean v2, Lcom/android/settings/DisplaySettings;->mDualFolderType:Z

    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "sub_lcd_auto_lock"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportLightSensor(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "key_auto_keyboard_backlight"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mAutoKeyBacklightPreference:Landroid/preference/SwitchPreference;

    if-ne v0, v3, :cond_6

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mKeyBacklightPreference:Landroid/preference/PreferenceScreen;

    if-eq v0, v3, :cond_7

    :goto_4
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_2
    :goto_5
    return-void

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_1

    :cond_5
    move v2, v4

    goto :goto_2

    :cond_6
    move v2, v4

    goto :goto_3

    :cond_7
    move v3, v4

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "key_night_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_9

    :goto_6
    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_5

    :cond_9
    move v3, v4

    goto :goto_6
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 25

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const-string v20, "device_policy"

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/admin/DevicePolicyManager;

    if-eqz v7, :cond_2

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    :goto_0
    const-wide/16 v14, -0x1

    const-wide/16 v20, 0x0

    cmp-long v19, p1, v20

    if-gez v19, :cond_3

    const-string v13, ""

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "lock_screen_lock_after_timeout"

    const-wide/16 v22, 0x1388

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v20, 0x0

    cmp-long v19, v4, v20

    if-eqz v19, :cond_0

    cmp-long v19, v4, v8

    if-gez v19, :cond_0

    move-wide v8, v4

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DisplaySettings;->isDeviceLockTime:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DisplaySettings;->isSecuredLock:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    cmp-long v19, v14, v8

    if-lez v19, :cond_f

    const v19, 0x7f0a1034

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/android/settings/SettingsListPreference;->setSummary(I)V

    const-wide/16 v20, 0x0

    cmp-long v19, v8, v20

    if-nez v19, :cond_1

    invoke-virtual {v12, v13}, Lcom/android/settings/SettingsListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_3
    invoke-direct/range {p0 .. p2}, Lcom/android/settings/DisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v19

    if-nez v19, :cond_4

    cmp-long v19, p1, v4

    if-gtz v19, :cond_4

    const v19, 0x7f0a05b2

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {p0 .. p2}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :cond_4
    invoke-virtual {v12}, Lcom/android/settings/SettingsListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v12}, Lcom/android/settings/SettingsListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v18

    if-eqz v10, :cond_5

    array-length v0, v10

    move/from16 v19, v0

    if-nez v19, :cond_6

    :cond_5
    const-string v13, ""

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_3
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v11, v0, :cond_8

    aget-object v19, v18, v11

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    cmp-long v19, p1, v16

    if-ltz v19, :cond_7

    move v6, v11

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_8
    array-length v0, v10

    move/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    if-nez v19, :cond_a

    :cond_9
    const v19, 0x7f0a05b2

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    :cond_a
    aget-object v19, v18, v6

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v19, v20, v4

    if-gez v19, :cond_b

    cmp-long v19, v4, p1

    if-gez v19, :cond_b

    const-string v19, "DisplaySettings"

    const-string v20, "updateLockAfterPreferenceSummary, Long.valueOf(values[best].toString()) < maxTimeout && maxTimeout < currentTimeout"

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const v19, 0x7f0a05b2

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-wide v14, v4

    goto/16 :goto_1

    :cond_b
    invoke-direct/range {p0 .. p2}, Lcom/android/settings/DisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v19

    if-eqz v19, :cond_d

    cmp-long v19, p1, v4

    if-ltz v19, :cond_c

    const-wide/16 v20, 0x0

    cmp-long v19, v4, v20

    if-nez v19, :cond_d

    :cond_c
    const v20, 0x7f0a05b2

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v19, v10, v6

    check-cast v19, Ljava/lang/String;

    aput-object v19, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    aget-object v19, v18, v6

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    goto/16 :goto_1

    :cond_d
    const-wide/16 v20, 0x0

    cmp-long v19, v4, v20

    if-nez v19, :cond_e

    const v19, 0x7f0a05b2

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {p0 .. p2}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-wide/from16 v14, p1

    goto/16 :goto_1

    :cond_e
    const v19, 0x7f0a05b2

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-wide v14, v4

    goto/16 :goto_1

    :cond_f
    invoke-virtual {v12, v13}, Lcom/android/settings/SettingsListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private updateTouchKeyLightSummary()V
    .locals 5

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "button_key_light"

    const/16 v4, 0x1770

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/DisplaySettings$9;

    invoke-direct {v1, p0}, Lcom/android/settings/DisplaySettings$9;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSecBrightness:Lcom/android/settings/BrightnessSeekBarPreference;

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v0, v1}, Lcom/android/settings/BrightnessSeekBarPreference;->setFlipCloseStatus(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 27

    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    const v22, 0x7f070039

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->addPreferencesFromResource(I)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v22

    const/16 v23, 0x64

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_12

    const/4 v11, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v10

    const-string v22, "screen_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    const-string v22, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v23

    const-string v24, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/DisplaySettings;->isDeviceLockTime:Z

    new-instance v20, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/DisplaySettings;->isSecuredLock:Z

    const-string v22, "screensaver"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    if-eqz v22, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x1120064

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v22

    if-eqz v22, :cond_0

    if-eqz v11, :cond_13

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    :goto_1
    const-string v22, "smartscreen_stay"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mSmartStay:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v22

    if-eqz v22, :cond_2

    const-string v22, "smartscreen_stay"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_2
    const-string v22, "secbrightness"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Lcom/android/settings/BrightnessSeekBarPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mSecBrightness:Lcom/android/settings/BrightnessSeekBarPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v22

    if-eqz v22, :cond_3

    const-string v22, "screen_brightness_mode"

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mSecBrightness:Lcom/android/settings/BrightnessSeekBarPreference;

    move-object/from16 v23, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v14, v0, :cond_14

    const v22, 0x7f020291

    :goto_2
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/BrightnessSeekBarPreference;->setIcon(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mSecBrightness:Lcom/android/settings/BrightnessSeekBarPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/BrightnessSeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mSecBrightness:Lcom/android/settings/BrightnessSeekBarPreference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/BrightnessSeekBarPreference;->brightnessNotifyChange()V

    :cond_3
    const-string v22, "screen_timeout"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Lcom/android/settings/SettingsListPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

    const-string v22, "screen_off_timeout"

    const-wide/16 v24, 0x7530

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v22

    if-eqz v22, :cond_4

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DisplaySettings;->isDeviceLockTime:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

    move-object/from16 v22, v0

    const v23, 0x7f0e000c

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/SettingsListPreference;->setEntries(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

    move-object/from16 v22, v0

    const v23, 0x7f0e000d

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/SettingsListPreference;->setEntryValues(I)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

    move-object/from16 v22, v0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/SettingsListPreference;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->disableUnusableTimeouts(Lcom/android/settings/SettingsListPreference;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v22

    if-eqz v22, :cond_6

    const-string v22, "screen_timeout"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_6
    invoke-static {v4}, Lcom/android/settings/DisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_15

    const-string v22, "lift_to_wake"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_3
    invoke-static {v4}, Lcom/android/settings/DisplaySettings;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_16

    const-string v22, "doze"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_4
    const-string v22, "touch_key_light"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/ListPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x1120060

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v22

    if-nez v22, :cond_7

    const-string v22, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    :cond_7
    const-string v22, "touch_key_light"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_8
    const-string v22, "auto_rotate"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Lcom/android/settings/notification/DropDownPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mRotate:Lcom/android/settings/notification/DropDownPreference;

    invoke-static {v4}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_1a

    const-string v22, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mRotate:Lcom/android/settings/notification/DropDownPreference;

    move-object/from16 v22, v0

    const v23, 0x7f0a0e40

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Lcom/android/settings/notification/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/android/settings/DisplaySettings;->allowAllRotations(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_17

    const v18, 0x7f0a0e43

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mRotate:Lcom/android/settings/notification/DropDownPreference;

    move-object/from16 v22, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Lcom/android/settings/notification/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mRotate:Lcom/android/settings/notification/DropDownPreference;

    move-object/from16 v23, v0

    invoke-static {v4}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_19

    const/16 v22, 0x1

    :goto_6
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/DropDownPreference;->setSelectedItem(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mRotate:Lcom/android/settings/notification/DropDownPreference;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/settings/DisplaySettings$8;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/settings/DisplaySettings$8;-><init>(Lcom/android/settings/DisplaySettings;Landroid/app/Activity;)V

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/notification/DropDownPreference;->setCallback(Lcom/android/settings/notification/DropDownPreference$Callback;)V

    :cond_9
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    const-string v23, "display"

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    const-string v22, "wifi_display"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v22

    if-eqz v22, :cond_1b

    const/4 v12, 0x1

    :goto_8
    if-eqz v12, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    const-string v22, "screen_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v22, "DisplaySettings"

    const-string v23, "remove Screen mode"

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_9
    const/4 v5, 0x1

    :try_start_0
    const-string v22, "window"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    if-nez v22, :cond_1d

    const/4 v5, 0x1

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    const-string v23, "com.sec.feature.folder_type"

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    const-string v23, "com.sec.feature.dual_lcd"

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1e

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v22

    if-eqz v22, :cond_1e

    const/16 v22, 0x1

    :goto_b
    sput-boolean v22, Lcom/android/settings/DisplaySettings;->mDualFolderType:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    const-string v23, "com.sec.feature.folder_type"

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v22

    sput-boolean v22, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v11, :cond_b

    const-string v22, "font_preview"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_b
    const-string v22, "onehand_operation_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mOneHand:Landroid/preference/Preference;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v22

    if-nez v22, :cond_c

    if-eqz v10, :cond_d

    :cond_c
    const-string v22, "onehand_operation_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_d
    const-string v22, "font_preview"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mFontPreview:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v22

    if-eqz v22, :cond_e

    const-string v22, "font_preview"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_e
    const-string v22, "sub_lcd_auto_lock"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/SwitchPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    const-string v22, "sub_lcd_auto_lock"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    if-eqz v22, :cond_1f

    const/16 v22, 0x1

    :goto_c
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string v22, "key_backlight"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mKeyBacklightPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mKeyBacklightPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v22, "key_night_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/SwitchPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    const-string v22, "key_night_mode"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    if-eqz v22, :cond_20

    const/16 v22, 0x1

    :goto_d
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string v22, "auto_key_backlight"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mAutoKeyBacklightPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mAutoKeyBacklightPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    sget-boolean v22, Lcom/android/settings/DisplaySettings;->mDualFolderType:Z

    if-eqz v22, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/SwitchPreference;

    move-object/from16 v22, v0

    const v23, 0x7f0a15e9

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x5

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const/16 v26, 0x7

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->isSupportLightSensor(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    const-string v23, "content://com.sec.knox.provider2/KioskMode"

    const-string v24, "isKioskModeEnabled"

    invoke-static/range {v22 .. v24}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/DisplaySettings;->mIsKioskModeEnabled:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/DisplaySettings;->mIsKioskModeEnabled:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    const-string v22, "screensaver"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    const-string v22, "wallpaper"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mWallpaper:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mWallpaper:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    if-eqz v22, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mWallpaper:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_f
    const-string v22, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->getWallpaperVersionCode(Landroid/content/Context;)I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    :cond_10
    const-string v22, "wallpaper"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_11
    const-string v22, "outdoor_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->isSupportLightSensor(Landroid/content/Context;)Z

    move-result v22

    if-nez v22, :cond_24

    const/4 v15, 0x1

    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_25

    if-nez v15, :cond_25

    const-string v22, "outdoor_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f070039

    const-string v24, "UPSM"

    invoke-static/range {v22 .. v24}, Lcom/android/settings/Utils;->getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    if-eqz v16, :cond_26

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_26

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto :goto_11

    :cond_12
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1

    :cond_14
    const v22, 0x7f020290

    goto/16 :goto_2

    :cond_15
    const-string v22, "lift_to_wake"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_16
    const-string v22, "doze"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_17
    invoke-static {v4}, Lcom/android/internal/view/RotationPolicy;->getRotationLockOrientation(Landroid/content/Context;)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    const v18, 0x7f0a0e41

    goto/16 :goto_5

    :cond_18
    const v18, 0x7f0a0e42

    goto/16 :goto_5

    :cond_19
    const/16 v22, 0x0

    goto/16 :goto_6

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mRotate:Lcom/android/settings/notification/DropDownPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_9

    const-string v22, "auto_rotate"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1b
    const/4 v12, 0x0

    goto/16 :goto_8

    :cond_1c
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v22

    if-eqz v22, :cond_a

    const-string v22, "screen_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceScreen;

    const v22, 0x7f0401a3

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setWidgetLayoutResource(I)V

    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v22

    if-eqz v22, :cond_a

    const-string v22, "screen_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_1d
    const/4 v5, 0x0

    goto/16 :goto_a

    :catch_0
    move-exception v8

    const-string v22, "DisplaySettings"

    const-string v23, "Failing checking whether status bar can hide"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x0

    goto/16 :goto_a

    :cond_1e
    const/16 v22, 0x0

    goto/16 :goto_b

    :cond_1f
    const/16 v22, 0x0

    goto/16 :goto_c

    :cond_20
    const/16 v22, 0x0

    goto/16 :goto_d

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mAutoKeyBacklightPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_e

    :cond_22
    sget-boolean v22, Lcom/android/settings/DisplaySettings;->mDualFolderType:Z

    if-nez v22, :cond_23

    sget-boolean v22, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v22, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mAutoKeyBacklightPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_e

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mKeyBacklightPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mAutoKeyBacklightPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_e

    :cond_24
    const/4 v15, 0x0

    goto/16 :goto_f

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_10

    :cond_26
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mBrightnessMaxReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSecBrightness:Lcom/android/settings/BrightnessSeekBarPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSecBrightness:Lcom/android/settings/BrightnessSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/BrightnessSeekBarPreference;->unRregisterBrightnessObserver()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mOutdoorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 14

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v9, "screen_timeout"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    move-object/from16 v9, p2

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-long v10, v8

    invoke-direct {p0, v10, v11}, Lcom/android/settings/DisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "DisplaySettings"

    const-string v10, "isInDefaultTimeoutList = true"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "screen_off_timeout_rollback"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "screen_off_timeout"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

    int-to-long v10, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/settings/SettingsListPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

    invoke-direct {p0, v9}, Lcom/android/settings/DisplaySettings;->refreshScreenTimeoutList(Lcom/android/settings/SettingsListPreference;)V

    int-to-long v10, v8

    invoke-direct {p0, v10, v11}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "device_policy"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    if-eqz v2, :cond_6

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v6

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_lock_after_timeout"

    const-wide/16 v12, 0x1388

    invoke-static {v9, v10, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-eqz v9, :cond_2

    cmp-long v9, v6, v0

    if-gez v9, :cond_2

    move-wide v0, v6

    :cond_2
    const-string v9, "DisplaySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "DisplaySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "currentDeviceLockTimeout: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v9, p0, Lcom/android/settings/DisplaySettings;->isDeviceLockTime:Z

    if-eqz v9, :cond_3

    iget-boolean v9, p0, Lcom/android/settings/DisplaySettings;->isSecuredLock:Z

    if-eqz v9, :cond_3

    const-wide/16 v10, 0x0

    cmp-long v9, v0, v10

    if-eqz v9, :cond_3

    int-to-long v10, v8

    cmp-long v9, v10, v0

    if-lez v9, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->showScreenTimeDialog()V

    :cond_3
    :goto_3
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-ne p1, v9, :cond_4

    move-object/from16 v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "wake_gesture_enabled"

    if-eqz v8, :cond_15

    const/4 v9, 0x1

    :goto_4
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-ne p1, v9, :cond_5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "doze_enabled"

    if-eqz v8, :cond_16

    const/4 v9, 0x1

    :goto_5
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    const/4 v9, 0x1

    return v9

    :catch_0
    move-exception v3

    const-string v9, "DisplaySettings"

    const-string v10, "could not persist screen timeout setting"

    invoke-static {v9, v10, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_1
    move-exception v3

    const-string v9, "DisplaySettings"

    const-string v10, "could not persist screen timeout setting"

    invoke-static {v9, v10, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_6
    const-wide/16 v6, 0x0

    goto/16 :goto_2

    :cond_7
    const-string v9, "screensaver"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    move-object/from16 v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v8, 0x1

    :goto_6
    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "desk_home_screen_display"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v9, Lcom/android/settings/DreamBackend;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/settings/DreamBackend;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/settings/DreamBackend;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateScreenSaverSummary()V

    goto :goto_3

    :cond_8
    const/4 v8, 0x0

    goto :goto_6

    :cond_9
    new-instance v9, Lcom/android/settings/DreamBackend;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/settings/DreamBackend;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings/DreamBackend;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateScreenSaverSummary()V

    goto/16 :goto_3

    :cond_a
    const-string v9, "touch_key_light"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    move-object/from16 v9, p2

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "button_key_light"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_7
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateTouchKeyLightSummary()V

    goto/16 :goto_3

    :catch_2
    move-exception v3

    const-string v9, "DisplaySettings"

    const-string v10, "could not persist Touch key light setting"

    invoke-static {v9, v10, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :cond_b
    const-string v9, "sub_lcd_auto_lock"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    move-object/from16 v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "sub_lcd_auto_lock"

    if-eqz v8, :cond_c

    const/4 v9, 0x1

    :goto_8
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_c
    const/4 v9, 0x0

    goto :goto_8

    :cond_d
    const-string v9, "key_night_mode"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    move-object/from16 v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "key_night_mode"

    if-eqz v8, :cond_e

    const/4 v9, 0x1

    :goto_9
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_e
    const/4 v9, 0x0

    goto :goto_9

    :cond_f
    const-string v9, "auto_key_backlight"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    move-object/from16 v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "key_auto_keyboard_backlight"

    if-eqz v8, :cond_10

    const/4 v9, 0x1

    :goto_a
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v9, "DisplaySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "keyboard backlight auto mode:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mKeyBacklightPreference:Landroid/preference/PreferenceScreen;

    if-nez v8, :cond_11

    const/4 v9, 0x1

    :goto_b
    invoke-virtual {v10, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_10
    const/4 v9, 0x0

    goto :goto_a

    :cond_11
    const/4 v9, 0x0

    goto :goto_b

    :cond_12
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    if-ne p1, v9, :cond_3

    move-object/from16 v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "display_outdoor_mode"

    if-eqz v8, :cond_13

    const/4 v9, 0x1

    :goto_c
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-boolean v9, p0, Lcom/android/settings/DisplaySettings;->mIsLowBattery:Z

    if-nez v9, :cond_3

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mSecBrightness:Lcom/android/settings/BrightnessSeekBarPreference;

    if-nez v8, :cond_14

    const/4 v9, 0x1

    :goto_d
    invoke-virtual {v10, v9}, Lcom/android/settings/BrightnessSeekBarPreference;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_13
    const/4 v9, 0x0

    goto :goto_c

    :cond_14
    const/4 v9, 0x0

    goto :goto_d

    :cond_15
    const/4 v9, 0x0

    goto/16 :goto_4

    :cond_16
    const/4 v9, 0x0

    goto/16 :goto_5
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.settings.ModePreviewTablet"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.settings.NewModePreview"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mFontPreview:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.settings.FontPreviewTablet"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.settings.FontPreview"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 12

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DisplaySettings;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "screen_off_timeout"

    const-wide/16 v10, 0x7530

    invoke-static {v6, v9, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/settings/SettingsListPreference;->setValue(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

    invoke-direct {p0, v6}, Lcom/android/settings/DisplaySettings;->disableUnusableTimeouts(Lcom/android/settings/SettingsListPreference;)V

    invoke-direct {p0, v2, v3}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateState()V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v6, v9}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    const-string v6, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mRotate:Lcom/android/settings/notification/DropDownPreference;

    if-eqz v6, :cond_1

    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mRotate:Lcom/android/settings/notification/DropDownPreference;

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Lcom/android/settings/notification/DropDownPreference;->setSelectedItem(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "screen_off_timeout"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v9, v7, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "screen_mode_setting"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mScreenModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v9, v7, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "com.android.settings.action.FONT_SIZE_CLOSE"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->MAX_BRIGHTNESS_CHANGED:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v9, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mBrightnessMaxReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v9, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v6, "DisplaySettings"

    const-string v9, "onResume() : registerReceiver Intent.ACTION_BATTERY_CHANGED"

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "access_control_enabled"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v9, v8, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->updateAccessControlCheckbox()V

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "access_control_enabled"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_7

    move v0, v7

    :goto_1
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "easy_mode_switch"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_8

    move v1, v7

    :goto_2
    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    move v4, v7

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "intelligent_sleep_mode"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v9, v7, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mSecBrightness:Lcom/android/settings/BrightnessSeekBarPreference;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mSecBrightness:Lcom/android/settings/BrightnessSeekBarPreference;

    invoke-virtual {v6}, Lcom/android/settings/BrightnessSeekBarPreference;->registerBrightnessObserver()V

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mSecBrightness:Lcom/android/settings/BrightnessSeekBarPreference;

    invoke-virtual {v6}, Lcom/android/settings/BrightnessSeekBarPreference;->onBrightnessChanged()V

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mSecBrightness:Lcom/android/settings/BrightnessSeekBarPreference;

    invoke-virtual {v6}, Lcom/android/settings/BrightnessSeekBarPreference;->onBrightnessModeChanged()V

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mSecBrightness:Lcom/android/settings/BrightnessSeekBarPreference;

    invoke-virtual {v6}, Lcom/android/settings/BrightnessSeekBarPreference;->brightnessNotifyChange()V

    :cond_2
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "display_outdoor_mode"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_3

    move v8, v7

    :cond_3
    invoke-virtual {v6, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "display_outdoor_mode"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mOutdoorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_4
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

    invoke-direct {p0, v6}, Lcom/android/settings/DisplaySettings;->refreshScreenTimeoutList(Lcom/android/settings/SettingsListPreference;)V

    :cond_5
    return-void

    :cond_6
    move v6, v8

    goto/16 :goto_0

    :cond_7
    move v0, v8

    goto :goto_1

    :cond_8
    move v1, v8

    goto :goto_2

    :cond_9
    move v4, v8

    goto :goto_3
.end method

.method public showScreenTimeDialog()V
    .locals 14

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "device_policy"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_2

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v6

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_lock_after_timeout"

    const-wide/16 v12, 0x1388

    invoke-static {v9, v10, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-eqz v9, :cond_0

    cmp-long v9, v6, v2

    if-gez v9, :cond_0

    move-wide v2, v6

    :cond_0
    const-string v9, "DisplaySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "maxTimeout: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "DisplaySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "currentDeviceLockTimeout: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {p0, v9}, Lcom/android/settings/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v9, 0x7f04015b

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v9, 0x7f1002f4

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0a1005

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0a05b0

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v9, 0x104000a

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_2
    const-wide/16 v6, 0x0

    goto/16 :goto_0
.end method

.method public updateAccessControlCheckbox()V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "access_control_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "easy_mode_switch"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v1, v2

    :goto_1
    return-void

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1
.end method
