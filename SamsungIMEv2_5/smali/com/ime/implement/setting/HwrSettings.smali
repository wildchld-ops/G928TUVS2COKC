.class public Lcom/ime/implement/setting/HwrSettings;
.super Landroid/preference/PreferenceActivity;
.source "HwrSettings.java"


# instance fields
.field private final OPTION_MENU_BACK:I

.field hwrRecogTimeChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field hwrRecogTypeChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field hwrSchTchSwitchChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field hwrWritingStyleChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mHandwritingRecogTypeEntries:[Ljava/lang/CharSequence;

.field private mHwrRecogTime:Landroid/preference/ListPreference;

.field private mHwrRecogType:Landroid/preference/ListPreference;

.field private mHwrSChToTChSwitch:Landroid/preference/ListPreference;

.field private mHwrWritingStyle:Landroid/preference/ListPreference;

.field protected mInputManager:Lcom/ime/framework/common/InputManager;

.field private mIsKeypadGuideInHelpApp:Z

.field protected mRepository:Lcom/ime/framework/repository/Repository;

.field private mXt9HwrMode:Landroid/preference/ListPreference;

.field private mXt9HwrRecogType:Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;

.field private sharedPref:Landroid/content/SharedPreferences;

.field xt9HwrModeChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field xt9HwrRecogTypeChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ime/implement/setting/HwrSettings;->OPTION_MENU_BACK:I

    new-instance v0, Lcom/ime/implement/setting/HwrSettings$1;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/HwrSettings$1;-><init>(Lcom/ime/implement/setting/HwrSettings;)V

    iput-object v0, p0, Lcom/ime/implement/setting/HwrSettings;->hwrRecogTimeChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/ime/implement/setting/HwrSettings$2;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/HwrSettings$2;-><init>(Lcom/ime/implement/setting/HwrSettings;)V

    iput-object v0, p0, Lcom/ime/implement/setting/HwrSettings;->hwrRecogTypeChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/ime/implement/setting/HwrSettings$3;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/HwrSettings$3;-><init>(Lcom/ime/implement/setting/HwrSettings;)V

    iput-object v0, p0, Lcom/ime/implement/setting/HwrSettings;->xt9HwrModeChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/ime/implement/setting/HwrSettings$4;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/HwrSettings$4;-><init>(Lcom/ime/implement/setting/HwrSettings;)V

    iput-object v0, p0, Lcom/ime/implement/setting/HwrSettings;->xt9HwrRecogTypeChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/ime/implement/setting/HwrSettings$5;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/HwrSettings$5;-><init>(Lcom/ime/implement/setting/HwrSettings;)V

    iput-object v0, p0, Lcom/ime/implement/setting/HwrSettings;->hwrWritingStyleChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/ime/implement/setting/HwrSettings$6;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/HwrSettings$6;-><init>(Lcom/ime/implement/setting/HwrSettings;)V

    iput-object v0, p0, Lcom/ime/implement/setting/HwrSettings;->hwrSchTchSwitchChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/ime/implement/setting/HwrSettings;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/HwrSettings;->mHwrRecogTime:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ime/implement/setting/HwrSettings;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/HwrSettings;->mHwrRecogType:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ime/implement/setting/HwrSettings;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/HwrSettings;->mXt9HwrMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ime/implement/setting/HwrSettings;)[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/HwrSettings;->mHandwritingRecogTypeEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ime/implement/setting/HwrSettings;)Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/HwrSettings;->mXt9HwrRecogType:Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ime/implement/setting/HwrSettings;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/HwrSettings;->sharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ime/implement/setting/HwrSettings;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/HwrSettings;->mHwrWritingStyle:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/ime/implement/setting/HwrSettings;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/HwrSettings;->mHwrSChToTChSwitch:Landroid/preference/ListPreference;

    return-object v0
.end method

.method private getEntries(II)[Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lcom/ime/implement/setting/HwrSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ime/implement/setting/HwrSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    array-length v4, v2

    array-length v5, v3

    if-ne v4, v5, :cond_0

    array-length v0, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v4, v2, v1

    const-string v5, "%d"

    aget-object v6, v3, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private setEntries(Ljava/lang/String;II)V
    .locals 9

    invoke-virtual {p0, p1}, Lcom/ime/implement/setting/HwrSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_1

    instance-of v6, v3, Landroid/preference/ListPreference;

    if-eqz v6, :cond_1

    move-object v2, v3

    check-cast v2, Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/ime/implement/setting/HwrSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ime/implement/setting/HwrSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    array-length v6, v4

    array-length v7, v5

    if-ne v6, v7, :cond_1

    array-length v0, v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v6, v4, v1

    const-string v7, "%d"

    aget-object v8, v5, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 26

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/implement/setting/HwrSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/implement/setting/HwrSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v23

    if-eqz v23, :cond_c

    const v23, 0x7f03006b

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/HwrSettings;->addPreferencesFromResource(I)V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/HwrSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_1

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/ime/implement/resource/CustomResource;->init(Landroid/content/res/Resources;)V

    const-string v23, "SETTINGS_DEFAULT_HWR_RECOGNIZE_DELAY"

    const v24, 0x7f070003

    const v25, 0x7f070004

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/ime/implement/setting/HwrSettings;->setEntries(Ljava/lang/String;II)V

    const-string v23, "SETTINGS_DEFAULT_HWR_PENTHICKNESS"

    const v24, 0x7f070007

    const v25, 0x7f070008

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/ime/implement/setting/HwrSettings;->setEntries(Ljava/lang/String;II)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/HwrSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f07003e

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/implement/setting/HwrSettings;->mHandwritingRecogTypeEntries:[Ljava/lang/CharSequence;

    :try_start_0
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/implement/setting/HwrSettings;->sharedPref:Landroid/content/SharedPreferences;

    const-string v23, "SETTINGS_DEFAULT_HWR_RECOGNIZE_DELAY"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/HwrSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/ListPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/implement/setting/HwrSettings;->mHwrRecogTime:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->sharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    const-string v24, "SETTINGS_DEFAULT_HWR_RECOGNIZE_DELAY"

    const-string v25, "500"

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mHwrRecogTime:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mHwrRecogTime:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mHwrRecogTime:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v24

    aget-object v24, v24, v15

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mHwrRecogTime:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->hwrRecogTimeChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v23, "SETTINGS_DEFAULT_HWR_PENTHICKNESS"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/HwrSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/ime/implement/setting/Xt9HwrDialogPreference;

    const/4 v14, 0x0

    const-string v23, "pen_thickness_icons"

    invoke-static/range {v23 .. v23}, Lcom/ime/implement/resource/CustomResource;->getObtainTypedArray(Ljava/lang/String;)Landroid/content/res/TypedArray;

    move-result-object v14

    const v23, 0x7f070007

    const v24, 0x7f070008

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/ime/implement/setting/HwrSettings;->getEntries(II)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v14, v0}, Lcom/ime/implement/setting/Xt9HwrDialogPreference;->setEntries(Landroid/content/res/TypedArray;[Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/HwrSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f070009

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/ime/implement/setting/Xt9HwrDialogPreference;->setEntryValues([Ljava/lang/String;)V

    const-string v23, "SETTINGS_DEFAULT_HWR_PENTHICKNESS"

    const-string v24, "5"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Lcom/ime/implement/setting/Xt9HwrDialogPreference;->setSummary(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    const-string v23, "SETTINGS_DEFAULT_HWR_PENCOLOR"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/HwrSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/ime/implement/setting/Xt9HwrDialogPreference;

    const-string v23, "pen_color_icons"

    invoke-static/range {v23 .. v23}, Lcom/ime/implement/resource/CustomResource;->getObtainTypedArray(Ljava/lang/String;)Landroid/content/res/TypedArray;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/HwrSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f07000b

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v14, v0}, Lcom/ime/implement/setting/Xt9HwrDialogPreference;->setEntries(Landroid/content/res/TypedArray;[Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/HwrSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f07000c

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/ime/implement/setting/Xt9HwrDialogPreference;->setEntryValues([Ljava/lang/String;)V

    const-string v23, "SETTINGS_DEFAULT_HWR_PENCOLOR"

    const-string v24, "2"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Lcom/ime/implement/setting/Xt9HwrDialogPreference;->setSummary(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v23

    if-nez v23, :cond_2

    const-string v23, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/HwrSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/ListPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/implement/setting/HwrSettings;->mHwrRecogType:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->sharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    const-string v24, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    const-string v25, "0"

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mHwrRecogType:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mHwrRecogType:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mHwrRecogType:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v24

    aget-object v24, v24, v15

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mHwrRecogType:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->hwrRecogTypeChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v23

    if-eqz v23, :cond_3

    const-string v23, "SETTINGS_DEFAULT_XT9_HWR_MODE"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/HwrSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/ListPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/implement/setting/HwrSettings;->mXt9HwrMode:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->sharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    const-string v24, "SETTINGS_DEFAULT_XT9_HWR_MODE"

    const-string v25, "0"

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mXt9HwrMode:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mXt9HwrMode:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mXt9HwrMode:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v24

    aget-object v24, v24, v15

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mXt9HwrMode:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->xt9HwrModeChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v23, "SETTINGS_DEFAULT_XT9_HWR_RECOG_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/HwrSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/implement/setting/HwrSettings;->mXt9HwrRecogType:Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v23, v0

    const-string v24, "SETTINGS_DEFAULT_XT9_HWR_RECOG_TYPE"

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mXt9HwrRecogType:Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mHandwritingRecogTypeEntries:[Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    aget-object v24, v24, v15

    invoke-virtual/range {v23 .. v24}, Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mXt9HwrRecogType:Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->xt9HwrRecogTypeChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v23, "SETTINGS_DEFAULT_HWR_WRITING_STYLE"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/HwrSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/ListPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/implement/setting/HwrSettings;->mHwrWritingStyle:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->sharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    const-string v24, "SETTINGS_DEFAULT_HWR_WRITING_STYLE"

    const-string v25, "0"

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mHwrWritingStyle:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mHwrWritingStyle:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mHwrWritingStyle:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v24

    aget-object v24, v24, v15

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mHwrWritingStyle:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->hwrWritingStyleChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v23, "SETTINGS_DEFAULT_HWR_SCH_TCH_SWITCH"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/HwrSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/ListPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/implement/setting/HwrSettings;->mHwrSChToTChSwitch:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->sharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    const-string v24, "SETTINGS_DEFAULT_HWR_SCH_TCH_SWITCH"

    const-string v25, "0"

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mHwrSChToTChSwitch:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mHwrSChToTChSwitch:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mHwrSChToTChSwitch:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v24

    aget-object v24, v24, v15

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mHwrSChToTChSwitch:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->hwrSchTchSwitchChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isSupportFullHandwriting()Z

    move-result v21

    if-nez v21, :cond_4

    const-string v23, "SETTINGS_DEFAULT_USE_FULL_HANDWRITING"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/HwrSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/SwitchPreference;

    if-eqz v22, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/HwrSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    if-eqz v17, :cond_4

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    const-string v24, "com.samsung.helphub"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    const/16 v23, 0x0

    :goto_1
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ime/implement/setting/HwrSettings;->mIsKeypadGuideInHelpApp:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/setting/HwrSettings;->mIsKeypadGuideInHelpApp:Z

    move/from16 v23, v0

    if-nez v23, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v23

    if-eqz v23, :cond_7

    :cond_5
    const-string v23, "gesture_guide"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/HwrSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    const-string v23, "hwr_tutorial"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/HwrSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    if-eqz v18, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/HwrSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    if-eqz v19, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/HwrSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    if-eqz v17, :cond_7

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v23

    if-nez v23, :cond_8

    invoke-static/range {v16 .. v16}, Lcom/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v23

    if-eqz v23, :cond_8

    const-string v23, "DHWR"

    const-string v24, "VOHWRPANEL"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v23

    if-eqz v23, :cond_8

    :try_start_3
    const-string v23, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/HwrSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    if-eqz v5, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/HwrSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    if-eqz v17, :cond_8

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_8
    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v23

    if-eqz v23, :cond_9

    :try_start_5
    const-string v23, "about"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/HwrSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/DialogPreference;

    if-eqz v5, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/HwrSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    if-eqz v17, :cond_9

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_9
    :goto_4
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/setting/HwrSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v23

    if-nez v23, :cond_b

    const-string v23, "VOHWRPANEL"

    const-string v24, "VOHWRPANEL"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    move-result v23

    if-eqz v23, :cond_b

    :try_start_7
    const-string v23, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/HwrSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/DialogPreference;

    if-eqz v5, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/HwrSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    if-eqz v17, :cond_a

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_a
    :goto_5
    :try_start_8
    const-string v23, "about"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/HwrSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/DialogPreference;

    if-eqz v5, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/setting/HwrSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    if-eqz v17, :cond_b

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_b
    :goto_6
    return-void

    :cond_c
    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isSupportHwrTutorial()Z

    move-result v23

    if-eqz v23, :cond_d

    const v23, 0x7f030071

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/HwrSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    :cond_d
    const v23, 0x7f030072

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/HwrSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    :cond_e
    const/16 v23, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v12

    :try_start_9
    invoke-virtual {v12}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v13

    const-string v23, "SamsungIME"

    const-string v24, "HwrSettings - onCreate() : not found exception!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_2
    move-exception v13

    :try_start_a
    const-string v23, "SamsungIME"

    const-string v24, "HwrSettings - Recognition Type option can\'t be removed"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_3
    move-exception v13

    const-string v23, "SamsungIME"

    const-string v24, "HwrSettings - Recognition Type option can\'t be removed"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :catch_4
    move-exception v13

    const-string v23, "SamsungIME"

    const-string v24, "HwrSettings - Recognition Type option can\'t be removed"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_5
    move-exception v13

    const-string v23, "SamsungIME"

    const-string v24, "HwrSettings - Recognition Type option can\'t be removed"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_6
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/ime/implement/setting/HwrSettings;->setResult(I)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/HwrSettings;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/ime/implement/setting/HwrSettings;->finish()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
