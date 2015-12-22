.class public Lcom/android/settings/easymode/EasyModeApp;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "EasyModeApp.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mPackageName:[Ljava/lang/String;


# instance fields
.field private EXTRA_LARGE_FONT_SCALE:F

.field private LARGE_FONT_SCALE:F

.field private bEnableTab:Z

.field private easy_mode_apps:Landroid/preference/PreferenceScreen;

.field private easy_mode_camera:Landroid/preference/SwitchPreference;

.field private easy_mode_email:Landroid/preference/SwitchPreference;

.field private easy_mode_gallery:Landroid/preference/SwitchPreference;

.field private easy_mode_internet:Landroid/preference/SwitchPreference;

.field private easy_mode_messages:Landroid/preference/SwitchPreference;

.field private easy_mode_music:Landroid/preference/SwitchPreference;

.field private easy_mode_phone:Landroid/preference/SwitchPreference;

.field private easy_mode_select_all:Landroid/preference/SwitchPreference;

.field private easy_mode_splanner:Landroid/preference/SwitchPreference;

.field private easy_mode_video:Landroid/preference/SwitchPreference;

.field private isEnabledShowBtnBg:Z

.field private isSharedDevice:Z

.field private list:Landroid/widget/ListView;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mChangeFont:Z

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mEasyModeClickListener:Landroid/view/View$OnClickListener;

.field private mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

.field private mEasyModeLayout:Landroid/widget/LinearLayout;

.field private mEasyModeRadio:Landroid/widget/RadioButton;

.field private mExtraLargeFontIndex:I

.field private mHelpTextView:Landroid/widget/TextView;

.field private mIsFont11Level:Z

.field private mListdividerInsetSize:I

.field private mModeRadioGroup:Landroid/widget/LinearLayout;

.field private mModeState:I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPreviewImage:Landroid/graphics/drawable/Drawable;

.field private mPreviewImageView:Landroid/widget/ImageView;

.field private mSaveButton:Landroid/widget/Button;

.field private mStandardModeClickListener:Landroid/view/View$OnClickListener;

.field private mStandardModeLayout:Landroid/widget/LinearLayout;

.field private mStandardModeRadio:Landroid/widget/RadioButton;

.field private mTempView:Landroid/view/View;

.field private mcancelButton:Landroid/widget/Button;

.field private objValue:Ljava/lang/Object;

.field private previousIndex:I

.field private selected_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.incallui"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.sec.android.app.camera"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.samsung.android.email.ui"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.sec.android.gallery3d"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.sec.android.app.sbrowser"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.sec.android.app.music"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.android.calendar"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.samsung.android.video"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    new-instance v0, Lcom/android/settings/easymode/EasyModeApp$6;

    invoke-direct {v0}, Lcom/android/settings/easymode/EasyModeApp$6;-><init>()V

    sput-object v0, Lcom/android/settings/easymode/EasyModeApp;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    iput v1, p0, Lcom/android/settings/easymode/EasyModeApp;->previousIndex:I

    iput-boolean v1, p0, Lcom/android/settings/easymode/EasyModeApp;->isEnabledShowBtnBg:Z

    iput-boolean v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mChangeFont:Z

    iput-boolean v1, p0, Lcom/android/settings/easymode/EasyModeApp;->bEnableTab:Z

    iput-boolean v1, p0, Lcom/android/settings/easymode/EasyModeApp;->isSharedDevice:Z

    const v0, 0x3f9ae148    # 1.21f

    iput v0, p0, Lcom/android/settings/easymode/EasyModeApp;->LARGE_FONT_SCALE:F

    const v0, 0x3fc28f5c    # 1.52f

    iput v0, p0, Lcom/android/settings/easymode/EasyModeApp;->EXTRA_LARGE_FONT_SCALE:F

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mExtraLargeFontIndex:I

    iput v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mListdividerInsetSize:I

    new-instance v0, Lcom/android/settings/easymode/EasyModeApp$1;

    invoke-direct {v0, p0}, Lcom/android/settings/easymode/EasyModeApp$1;-><init>(Lcom/android/settings/easymode/EasyModeApp;)V

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mStandardModeClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/easymode/EasyModeApp$2;

    invoke-direct {v0, p0}, Lcom/android/settings/easymode/EasyModeApp$2;-><init>(Lcom/android/settings/easymode/EasyModeApp;)V

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/easymode/EasyModeApp;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/easymode/EasyModeApp;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/easymode/EasyModeApp;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->checkLeastOnEasyMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1102(Lcom/android/settings/easymode/EasyModeApp;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings/easymode/EasyModeApp;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/easymode/EasyModeApp;->startLauncher(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/easymode/EasyModeApp;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->applyEasyMode()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/easymode/EasyModeApp;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->saveEasyModeApps()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/easymode/EasyModeApp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/easymode/EasyModeApp;->bEnableTab:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/easymode/EasyModeApp;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/easymode/EasyModeApp;->bEnableTab:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/easymode/EasyModeApp;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->goToPersonal()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/easymode/EasyModeApp;)Lcom/android/settings/easymode/EasyModeEnabler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/easymode/EasyModeApp;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/easymode/EasyModeApp;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mModeState:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/easymode/EasyModeApp;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->isDefaultEasyLauncher()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/easymode/EasyModeApp;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/easymode/EasyModeApp;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method private applyEasyMode()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->saveEasyModeApps()V

    invoke-virtual {p0, v1}, Lcom/android/settings/easymode/EasyModeApp;->setDefaultLauncher(Z)V

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->setLargeFont()V

    iput v1, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/easymode/EasyModeEnabler;->startEasyMode()V

    invoke-direct {p0, v1}, Lcom/android/settings/easymode/EasyModeApp;->startLauncher(Z)V

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->finish()V

    return-void
.end method

.method private checkAllEasyModeApps()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "EasyModeApp"

    const-string v2, "KKK checkAllEasyModeApps"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_8
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_9
    const-string v0, "EasyModeApp"

    const-string v1, "KKK checkAllEasyModeApps return true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkLeastOnEasyMode()Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "EasyModeApp"

    const-string v2, "KKK checkLeastOnEasyMode"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_5
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_6
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_7
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_8
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_9
    const-string v0, "EasyModeApp"

    const-string v1, "KKK checkLeastOnEasyMode return false"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private goToPersonal()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->isKnoxmode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "persona"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PersonaManager;->launchPersonaHome(I)Z

    const-string v2, "EasyModeApp"

    const-string v3, "Current mode is knox. Go out to personal to change launcher"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private initPreference()V
    .locals 2

    const-string v0, "EasyModeApp"

    const-string v1, "KKK initPreference"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "easy_mode_apps"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps:Landroid/preference/PreferenceScreen;

    const-string v0, "easy_mode_select_all"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    const-string v0, "easy_mode_camera"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    const-string v0, "easy_mode_email"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    const-string v0, "easy_mode_gallery"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    const-string v0, "easy_mode_internet"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    const-string v0, "easy_mode_messages"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    const-string v0, "easy_mode_music"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    const-string v0, "easy_mode_phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    const-string v0, "easy_mode_splanner"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    const-string v0, "easy_mode_video"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private isDefaultEasyLauncher()Z
    .locals 5

    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.easylauncher"

    const-string v4, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isKnoxmode(Landroid/content/Context;)Z
    .locals 6

    const/4 v3, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v5, "com.android.internal.app"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private saveEasyModeApps()V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v5, "easy_mode_camera"

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    move v0, v2

    :goto_0
    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_camera"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v2

    :goto_1
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    if-eq v1, v0, :cond_0

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->sendChangeCameraIntent(Z)V

    :cond_0
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_email"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v2

    :goto_2
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    :cond_1
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_gallery"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_c

    move v4, v2

    :goto_3
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    :cond_2
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_internet"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_d

    move v4, v2

    :goto_4
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    :cond_3
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v5, "easy_mode_messages"

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_e

    move v0, v2

    :goto_5
    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_messages"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_f

    move v4, v2

    :goto_6
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    if-eq v1, v0, :cond_4

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->sendChangeMessageIntent(Z)V

    :cond_4
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v5, "easy_mode_music"

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_10

    move v0, v2

    :goto_7
    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_music"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_11

    move v4, v2

    :goto_8
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    if-eq v1, v0, :cond_5

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->sendChangeMusicIntent(Z)V

    :cond_5
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_6

    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_contacts"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_12

    move v4, v2

    :goto_9
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->sendChangeContactIntent(Z)V

    :cond_6
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v5, "easy_mode_splanner"

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_13

    move v0, v2

    :goto_a
    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_splanner"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_14

    move v4, v2

    :goto_b
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    if-eq v1, v0, :cond_7

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->sendChangeSplannerIntent(Z)V

    :cond_7
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v5, "easy_mode_video"

    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_15

    :goto_c
    invoke-virtual {v4, v5, v2}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    :cond_8
    return-void

    :cond_9
    move v0, v3

    goto/16 :goto_0

    :cond_a
    move v4, v3

    goto/16 :goto_1

    :cond_b
    move v4, v3

    goto/16 :goto_2

    :cond_c
    move v4, v3

    goto/16 :goto_3

    :cond_d
    move v4, v3

    goto/16 :goto_4

    :cond_e
    move v0, v3

    goto/16 :goto_5

    :cond_f
    move v4, v3

    goto/16 :goto_6

    :cond_10
    move v0, v3

    goto/16 :goto_7

    :cond_11
    move v4, v3

    goto/16 :goto_8

    :cond_12
    move v4, v3

    goto :goto_9

    :cond_13
    move v0, v3

    goto :goto_a

    :cond_14
    move v4, v3

    goto :goto_b

    :cond_15
    move v2, v3

    goto :goto_c
.end method

.method private startLauncher(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    invoke-virtual {v0, p1}, Lcom/android/settings/easymode/EasyModeEnabler;->startLauncher(Z)V

    return-void
.end method

.method private updateCheckBoxState(Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "EasyModeApp"

    const-string v3, "KKK updateCheckBoxState"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_camera"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_email"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_gallery"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_internet"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_messages"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_music"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_contacts"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_splanner"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_7
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_video"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_8
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->checkAllEasyModeApps()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    move v0, v2

    goto/16 :goto_0

    :cond_b
    move v0, v2

    goto/16 :goto_1

    :cond_c
    move v0, v2

    goto/16 :goto_2

    :cond_d
    move v0, v2

    goto/16 :goto_3

    :cond_e
    move v0, v2

    goto :goto_4

    :cond_f
    move v0, v2

    goto :goto_5

    :cond_10
    move v0, v2

    goto :goto_6

    :cond_11
    move v0, v2

    goto :goto_7

    :cond_12
    move v0, v2

    goto :goto_8

    :cond_13
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_9
.end method

.method private updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method private updatePreperenceStatus()V
    .locals 13

    const/4 v12, 0x0

    const-string v9, "EasyModeApp"

    const-string v10, "KKK updatePreperenceStatus"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    sget-object v9, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    array-length v6, v9

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v4, 0x0

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_14

    :try_start_0
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-string v9, "com.android.contacts"

    const-string v10, "com.android.dialer.DialtactsActivity"

    invoke-direct {v1, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Landroid/content/pm/ActivityInfo;

    invoke-direct {v5}, Landroid/content/pm/ActivityInfo;-><init>()V

    const-string v9, "com.android.incallui"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string v9, "com.sec.android.app.camera"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-direct {p0, v9, v0, v10}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v9, "com.sec.android.app.camera"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v12, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    goto :goto_1

    :cond_3
    :try_start_1
    const-string v9, "com.android.contacts"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    const/16 v10, 0x20

    invoke-virtual {v9, v1, v10}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v10}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    invoke-virtual {v9}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0xff

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_2
    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v4}, Landroid/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    const/16 v9, 0x80

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_2

    :cond_5
    const-string v9, "com.samsung.android.email.ui"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-direct {p0, v9, v0, v10}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const-string v9, "com.sec.android.gallery3d"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-direct {p0, v9, v0, v10}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string v9, "com.sec.android.app.sbrowser"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-direct {p0, v9, v0, v10}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v9, "com.android.mms"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-direct {p0, v9, v0, v10}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const-string v9, "com.sec.android.app.music"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-direct {p0, v9, v0, v10}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const-string v9, "com.android.calendar"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-direct {p0, v9, v0, v10}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    const-string v9, "com.samsung.android.video"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-direct {p0, v9, v0, v10}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_c
    const-string v9, "com.android.contacts"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v12, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    goto/16 :goto_1

    :cond_d
    const-string v9, "com.samsung.android.email.ui"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v12, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    goto/16 :goto_1

    :cond_e
    const-string v9, "com.sec.android.gallery3d"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v12, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    goto/16 :goto_1

    :cond_f
    const-string v9, "com.sec.android.app.sbrowser"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v12, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    goto/16 :goto_1

    :cond_10
    const-string v9, "com.android.mms"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v12, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    goto/16 :goto_1

    :cond_11
    const-string v9, "com.sec.android.app.music"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v12, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    goto/16 :goto_1

    :cond_12
    const-string v9, "com.android.calendar"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v12, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    goto/16 :goto_1

    :cond_13
    const-string v9, "com.samsung.android.video"

    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v12, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    goto/16 :goto_1

    :cond_14
    return-void
.end method


# virtual methods
.method initswitchBtn()V
    .locals 3

    const-string v1, "EasyModeApp"

    const-string v2, "KKK initswitchBtn"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    const v2, 0x7f040067

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    new-instance v1, Lcom/android/settings/easymode/EasyModeEnabler;

    invoke-direct {v1, v0}, Lcom/android/settings/easymode/EasyModeEnabler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    const/16 v5, 0xff

    const/16 v4, 0x80

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f100183

    if-ne v0, v1, :cond_2

    iput v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mModeState:I

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mPreviewImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iput v2, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperenceStatus()V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearFocus()V

    :cond_1
    const-string v0, "EasyModeApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged mModeState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mModeState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iput v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mModeState:I

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mPreviewImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iput v3, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    const v6, 0x7f100186

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "EasyModeApp"

    const-string v2, "onConfigurationChanged"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->initswitchBtn()V

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mTempView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    const-string v1, "EasyModeApp"

    const-string v2, "horizontal"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04009c

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mTempView:Landroid/view/View;

    const v1, 0x7f100181

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mModeRadioGroup:Landroid/widget/LinearLayout;

    const v1, 0x7f100182

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mStandardModeLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f100184

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f100183

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    const v1, 0x7f100185

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mPreviewImageView:Landroid/widget/ImageView;

    const v2, 0x7f02007c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mPreviewImage:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f100187

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->list:Landroid/widget/ListView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v3, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    const-string v1, "EasyModeApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KKK onConfigurationChanged selected_value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mStandardModeLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mStandardModeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v1, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_1
    iget-boolean v1, p0, Lcom/android/settings/easymode/EasyModeApp;->isSharedDevice:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    const-string v1, "EasyModeApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SharedDevice: disableButton "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/easymode/EasyModeApp;->isSharedDevice:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    const-string v1, "EasyModeApp"

    const-string v2, "vertical"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04009b

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v3, "EasyModeApp"

    const-string v6, "KKK onCreate"

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v6, "enterprise_policy"

    invoke-virtual {v3, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/easymode/EasyModeApp;->isSharedDevice:Z

    const-string v3, "EasyModeApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SharedDevice: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings/easymode/EasyModeApp;->isSharedDevice:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v3, 0x7f07003f

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->addPreferencesFromResource(I)V

    invoke-virtual {p0, v4}, Lcom/android/settings/easymode/EasyModeApp;->setHasOptionsMenu(Z)V

    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->initPreference()V

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->getFontSize(Landroid/content/Context;)F

    move-result v3

    float-to-int v1, v3

    const-string v3, "fontArraySize"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fontArraySize:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xb

    if-ne v1, v3, :cond_4

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mIsFont11Level:Z

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "show_button_background"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    :goto_1
    iput-boolean v4, p0, Lcom/android/settings/easymode/EasyModeApp;->isEnabledShowBtnBg:Z

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "font_size"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/easymode/EasyModeApp;->previousIndex:I

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v3

    iput v3, p0, Lcom/android/settings/easymode/EasyModeApp;->LARGE_FONT_SCALE:F

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v3

    iput v3, p0, Lcom/android/settings/easymode/EasyModeApp;->EXTRA_LARGE_FONT_SCALE:F

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/easymode/EasyModeApp;->EXTRA_LARGE_FONT_SCALE:F

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getFontIndex(Landroid/content/Context;F)I

    move-result v3

    iput v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mExtraLargeFontIndex:I

    iget-boolean v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mIsFont11Level:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x6

    iput v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mExtraLargeFontIndex:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v3

    iput v3, p0, Lcom/android/settings/easymode/EasyModeApp;->LARGE_FONT_SCALE:F

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v3

    iput v3, p0, Lcom/android/settings/easymode/EasyModeApp;->EXTRA_LARGE_FONT_SCALE:F

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/easymode/EasyModeApp;->EXTRA_LARGE_FONT_SCALE:F

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getFontIndex(Landroid/content/Context;F)I

    move-result v3

    iput v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mExtraLargeFontIndex:I

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_3

    const v3, 0x7f0d000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f0d001c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    const v4, 0x7f0d0017

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mListdividerInsetSize:I

    :cond_3
    return-void

    :cond_4
    move v3, v5

    goto/16 :goto_0

    :cond_5
    move v4, v5

    goto/16 :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 10

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Lcom/android/settings/easymode/EasyModeApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v8, 0x7f040161

    invoke-virtual {v1, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v8, 0x7f040160

    invoke-virtual {v1, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v8, 0x7f100165

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    const v8, 0x7f100312

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v8, 0x2

    if-ne p1, v8, :cond_0

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0a0fe6

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104000a

    new-instance v9, Lcom/android/settings/easymode/EasyModeApp$5;

    invoke-direct {v9, p0, v0, v5}, Lcom/android/settings/easymode/EasyModeApp$5;-><init>(Lcom/android/settings/easymode/EasyModeApp;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    const v5, 0x7f0202ed

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const v2, 0x7f100104

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mcancelButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mcancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/easymode/EasyModeApp$3;

    invoke-direct {v3, p0}, Lcom/android/settings/easymode/EasyModeApp$3;-><init>(Lcom/android/settings/easymode/EasyModeApp;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f100105

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    const v3, 0x7f0a0e60

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/easymode/EasyModeApp$4;

    invoke-direct {v3, p0}, Lcom/android/settings/easymode/EasyModeApp$4;-><init>(Lcom/android/settings/easymode/EasyModeApp;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v2, p0, Lcom/android/settings/easymode/EasyModeApp;->isEnabledShowBtnBg:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mcancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/easymode/EasyModeApp;->isSharedDevice:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    const-string v2, "EasyModeApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SharedDevice: disableButton "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/easymode/EasyModeApp;->isSharedDevice:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->initswitchBtn()V

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v9

    const-string v1, "EasyModeApp"

    const-string v2, "KKK onCreateView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "EasyModeApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KKK initPreference : mCurConfig.orientation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f04009c

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    :goto_1
    iput-object v7, p0, Lcom/android/settings/easymode/EasyModeApp;->mTempView:Landroid/view/View;

    const v1, 0x7f100181

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mModeRadioGroup:Landroid/widget/LinearLayout;

    const v1, 0x7f100182

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mStandardModeLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f100184

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f100183

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    const v1, 0x7f100185

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    const v1, 0x7f100187

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    const v1, 0x7f100186

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mPreviewImageView:Landroid/widget/ImageView;

    const v2, 0x7f02007c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    const v1, 0x7f100186

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mPreviewImage:Landroid/graphics/drawable/Drawable;

    const v1, 0x102000a

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->list:Landroid/widget/ListView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->list:Landroid/widget/ListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v7, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mListdividerInsetSize:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->list:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v2, "easy_mode_switch"

    invoke-virtual {v1, v2}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v8

    const-string v1, "EasyModeApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KKK onCreateView mEasyModeState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mStandardModeLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mStandardModeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    if-ne v8, v1, :cond_5

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mModeState:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_3
    const-string v1, "EasyModeApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KKK onCreateView mModeState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mModeState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/easymode/EasyModeApp;->updateCheckBoxState(Z)V

    iget-boolean v1, p0, Lcom/android/settings/easymode/EasyModeApp;->isSharedDevice:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    const-string v1, "EasyModeApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SharedDevice: disableButton "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/easymode/EasyModeApp;->isSharedDevice:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v9

    :catch_0
    move-exception v6

    const-string v1, "EasyModeApp"

    const-string v2, "Unable to retrieve orientation"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f04009b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    goto/16 :goto_1

    :cond_4
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mListdividerInsetSize:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_5
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mModeState:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_3
.end method

.method public onPause()V
    .locals 2

    const-string v0, "EasyModeApp"

    const-string v1, "KKK onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v2, "EasyModeApp"

    const-string v3, "KKK onPreferenceChange"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v5}, Lcom/android/settings/easymode/EasyModeApp;->setAllOptionCheck(Z)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_c

    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->checkAllEasyModeApps()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    :goto_1
    return v4

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/settings/easymode/EasyModeApp;->setAllOptionCheck(Z)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_9

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_a

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_b

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_c
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    const-string v0, "EasyModeApp"

    const-string v1, "onPreferenceClick"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "EasyModeApp"

    const-string v3, "KKK onPreferenceTreeClick"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, v2}, Lcom/android/settings/easymode/EasyModeApp;->setAllOptionCheck(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_1

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_2

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_3

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_4

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_5

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_6

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_7

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_7
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_8

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_8
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_9

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v1

    :goto_9
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_9
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->checkAllEasyModeApps()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_a
    :goto_a
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_b
    invoke-virtual {p0, v1}, Lcom/android/settings/easymode/EasyModeApp;->setAllOptionCheck(Z)V

    goto/16 :goto_0

    :cond_c
    move v0, v2

    goto/16 :goto_1

    :cond_d
    move v0, v2

    goto/16 :goto_2

    :cond_e
    move v0, v2

    goto/16 :goto_3

    :cond_f
    move v0, v2

    goto :goto_4

    :cond_10
    move v0, v2

    goto :goto_5

    :cond_11
    move v0, v2

    goto :goto_6

    :cond_12
    move v0, v2

    goto :goto_7

    :cond_13
    move v0, v2

    goto :goto_8

    :cond_14
    move v0, v2

    goto :goto_9

    :cond_15
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_a
.end method

.method public onResume()V
    .locals 2

    const-string v0, "EasyModeApp"

    const-string v1, "KKK onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mChangeFont:Z

    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperenceStatus()V

    return-void
.end method

.method public readFontSizePreference()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "EasyModeApp"

    const-string v2, "Unable to retrieve font size"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAllOptionCheck(Z)V
    .locals 3

    const-string v0, "EasyModeApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KKK setAllOptionCheck state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_7
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_8
    return-void
.end method

.method public setDefaultLauncher(Z)V
    .locals 14

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v10, "EasyModeApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "KKK setDefaultLauncher isEasy : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v10, "android.intent.category.HOME"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v10, "android.intent.category.DEFAULT"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v8, v10, [Landroid/content/ComponentName;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_3

    invoke-direct {p0, v2}, Lcom/android/settings/easymode/EasyModeApp;->isKnoxmode(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x2

    new-array v8, v10, [Landroid/content/ComponentName;

    const/4 v10, 0x0

    new-instance v11, Landroid/content/ComponentName;

    const-string v12, "com.sec.android.app.easylauncher"

    const-string v13, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v11, v8, v10

    invoke-static {v2}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v2}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_2

    const/4 v10, 0x1

    new-instance v11, Landroid/content/ComponentName;

    const-string v12, "com.sec.android.app.launcher"

    const-string v13, "com.android.launcher2.Launcher"

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v11, v8, v10

    :cond_0
    :goto_0
    new-instance v7, Landroid/content/ComponentName;

    const-string v10, "com.sec.android.app.launcher"

    const-string v11, "com.sec.android.app.launcher.activities.LauncherActivity"

    invoke-direct {v7, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.sec.android.app.launcher"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    new-instance v7, Landroid/content/ComponentName;

    const-string v10, "com.sec.android.app.easylauncher"

    const-string v11, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v7, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/high16 v11, 0x100000

    invoke-virtual {v10, v9, v11, v8, v7}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    return-void

    :cond_2
    const/4 v10, 0x1

    new-instance v11, Landroid/content/ComponentName;

    const-string v12, "com.sec.android.app.launcher"

    const-string v13, "com.sec.android.app.launcher.activities.LauncherActivity"

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v11, v8, v10

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v10, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v8, v5

    const-string v10, "EasyModeApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "make mHomeComponentSet ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] value : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.sec.android.app.easylauncher"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/settings/Utils;->isDCMhome(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_5

    new-instance v7, Landroid/content/ComponentName;

    const-string v10, "com.nttdocomo.android.dhome"

    const-string v11, "com.nttdocomo.android.dhome.HomeActivity"

    invoke-direct {v7, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-static {v2}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {v2}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_1

    new-instance v7, Landroid/content/ComponentName;

    const-string v10, "com.sec.android.app.launcher"

    const-string v11, "com.android.launcher2.Launcher"

    invoke-direct {v7, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public setLargeFont()V
    .locals 7

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "font_size"

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "font_size"

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/easymode/EasyModeApp;->LARGE_FONT_SCALE:F

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->getFontIndex(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "STANDARD_FONT_SIZE"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/easymode/EasyModeApp;->EXTRA_LARGE_FONT_SCALE:F

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getFontIndex(Landroid/content/Context;F)I

    move-result v3

    if-le v2, v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "large_font"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const-string v3, "EasyModeApp"

    const-string v4, "KKK android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v3, p0, Lcom/android/settings/easymode/EasyModeApp;->LARGE_FONT_SCALE:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->writeFontSizePreference(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->readFontSizePreference()V

    return-void

    :catch_0
    move-exception v0

    const-string v3, "EasyModeApp"

    const-string v4, "Unable to retrieve font size"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setStandardFont()V
    .locals 7

    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "STANDARD_FONT_SIZE"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->objValue:Ljava/lang/Object;

    const-string v3, "EasyModeApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KKK setStandardFont fontIndex : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " objValue : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->objValue:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "font_size"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "font_size"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-boolean v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mIsFont11Level:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mExtraLargeFontIndex:I

    if-le v0, v3, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "large_font"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "EasyModeApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->objValue:Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->writeFontSizePreference(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->readFontSizePreference()V

    return-void

    :cond_1
    iget v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mExtraLargeFontIndex:I

    if-gt v2, v3, :cond_2

    iget v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mExtraLargeFontIndex:I

    if-le v0, v3, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "large_font"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const-string v3, "EasyModeApp"

    const-string v4, "setStandardFont android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 1"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mExtraLargeFontIndex:I

    if-le v2, v3, :cond_0

    iget v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mExtraLargeFontIndex:I

    if-gt v0, v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "large_font"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const-string v3, "EasyModeApp"

    const-string v4, "setStandardFont android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v2

    iget-boolean v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mIsFont11Level:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v2

    :cond_0
    cmpl-float v3, v1, v2

    if-lez v3, :cond_1

    move v1, v2

    :cond_1
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    iput v1, v3, Landroid/content/res/Configuration;->fontScale:F

    const-string v3, "EasyModeApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeFontSizePreference : fontScale : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "EasyModeApp"

    const-string v4, "Unable to save font size"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
