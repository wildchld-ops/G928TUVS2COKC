.class public Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DirectAccessFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private isDANotCheck:Z

.field private mAccessControlObserver:Landroid/database/ContentObserver;

.field private mAccessControlSwitch:Landroid/preference/SwitchPreference;

.field private mAccessibilitySwitch:Landroid/preference/SwitchPreference;

.field private mColorAdjustmentObserver:Landroid/database/ContentObserver;

.field private mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

.field private mDirectAccessCategory:Landroid/preference/PreferenceCategory;

.field private mDirectAccessEnabler:Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;

.field private mDirectAccessObserver:Landroid/database/ContentObserver;

.field private mGreyscaleSwitch:Landroid/preference/SwitchPreference;

.field private mMagnifierSwitch:Landroid/preference/SwitchPreference;

.field private mNegativeColorSwitch:Landroid/preference/SwitchPreference;

.field private mPageReaderObserver:Landroid/database/ContentObserver;

.field private mPageReaderSwitch:Landroid/preference/SwitchPreference;

.field private mSTalkbackSwitch:Landroid/preference/SwitchPreference;

.field protected mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTalkbackSwitch:Landroid/preference/SwitchPreference;

.field protected mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

.field private mUniversalInputSwitch:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->isDANotCheck:Z

    new-instance v0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$1;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$2;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$3;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$4;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method private installSwitchBarToggleSwitch()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->onInstallSwitchBarToggleSwitch()V

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void
.end method

.method private removeSwitchBarToggleSwitch()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "direct_access_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    const-string v0, "direct_accessibility"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/preference/SwitchPreference;

    const-string v0, "direct_talkback"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/preference/SwitchPreference;

    const-string v0, "direct_s_talkback"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/preference/SwitchPreference;

    const-string v0, "direct_universal_switch"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/preference/SwitchPreference;

    const-string v0, "direct_negative"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/preference/SwitchPreference;

    const-string v0, "direct_greyscale"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mGreyscaleSwitch:Landroid/preference/SwitchPreference;

    const-string v0, "direct_color_adjustment"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    const-string v0, "direct_accesscontrol"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    const-string v0, "direct_page_reader"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    const-string v0, "direct_magnifier"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mGreyscaleSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_accessibility"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_talkback"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_s_talkback"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_samsung_screen_reader"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    const v1, 0x7f0a09c1

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_samsung_screen_reader"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_universal_switch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_negative"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_6
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_greyscale"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mGreyscaleSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_7
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind_test"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    const v1, 0x7f0a09c0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :goto_8
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_color_adjustment"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_9
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_use"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    const v1, 0x7f0a09c3

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :goto_a
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_access_control"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_b
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_access_magnifier"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_c
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_4
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_4

    :cond_5
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_5

    :cond_6
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    :cond_7
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_6

    :cond_8
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mGreyscaleSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_7

    :cond_9
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_a
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_9

    :cond_b
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_c
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_b

    :cond_d
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_c
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "direct_access"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->installSwitchBarToggleSwitch()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f070002

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a09b6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->init()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->removeSwitchBarToggleSwitch()V

    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$5;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$5;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method

.method public onPause()V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/16 v4, 0x64

    if-lt v1, v4, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "direct_accessibility"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "direct_talkback"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "direct_negative"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "direct_greyscale"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "direct_color_adjustment"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "color_blind_test"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "direct_samsung_screen_reader"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->isDANotCheck:Z

    iget-boolean v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->isDANotCheck:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "direct_s_talkback"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->isDANotCheck:Z

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->isDANotCheck:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "direct_universal_switch"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->isDANotCheck:Z

    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->isDANotCheck:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "direct_access_magnifier"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->isDANotCheck:Z

    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "direct_access"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_f

    move v0, v2

    :goto_5
    iget-boolean v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->isDANotCheck:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "direct_access"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v4, 0x7f0a09c6

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessEnabler:Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;->pause()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void

    :cond_3
    move v1, v3

    goto/16 :goto_0

    :cond_4
    move v1, v3

    goto/16 :goto_1

    :cond_5
    move v1, v3

    goto :goto_2

    :cond_6
    move v1, v3

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "direct_accessibility"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "direct_talkback"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "direct_negative"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "direct_greyscale"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "direct_color_adjustment"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "color_blind_test"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_b

    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "direct_access_control"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "access_control_use"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_b

    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "direct_samsung_screen_reader"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_6
    iput-boolean v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->isDANotCheck:Z

    iget-boolean v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->isDANotCheck:Z

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "direct_s_talkback"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_7
    iput-boolean v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->isDANotCheck:Z

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->isDANotCheck:Z

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "direct_universal_switch"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_8
    iput-boolean v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->isDANotCheck:Z

    :cond_a
    iget-boolean v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->isDANotCheck:Z

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "direct_access_magnifier"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_e

    move v1, v2

    :goto_9
    iput-boolean v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->isDANotCheck:Z

    goto/16 :goto_4

    :cond_b
    move v1, v3

    goto :goto_6

    :cond_c
    move v1, v3

    goto :goto_7

    :cond_d
    move v1, v3

    goto :goto_8

    :cond_e
    move v1, v3

    goto :goto_9

    :cond_f
    move v0, v3

    goto/16 :goto_5
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "direct_accessibility"

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "direct_talkback"

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "direct_negative"

    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mGreyscaleSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "direct_greyscale"

    if-eqz v0, :cond_6

    move v1, v2

    :cond_6
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_7
    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "direct_color_adjustment"

    if-eqz v0, :cond_8

    move v1, v2

    :cond_8
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_9
    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "direct_access_control"

    if-eqz v0, :cond_a

    move v1, v2

    :cond_a
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_b
    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "direct_s_talkback"

    if-eqz v0, :cond_c

    move v1, v2

    :cond_c
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_d
    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "direct_universal_switch"

    if-eqz v0, :cond_e

    move v1, v2

    :cond_e
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_f
    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "direct_samsung_screen_reader"

    if-eqz v0, :cond_10

    move v1, v2

    :cond_10
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_11
    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "direct_access_magnifier"

    if-eqz v0, :cond_12

    move v1, v2

    :cond_12
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_13
    move v2, v1

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    new-instance v0, Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessEnabler:Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->updateDirectAccessMenu()V

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessEnabler:Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;->resume()V

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_accessibility"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_talkback"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_s_talkback"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_samsung_screen_reader"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    const v1, 0x7f0a09c1

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_samsung_screen_reader"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_universal_switch"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_negative"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_6
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_greyscale"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mGreyscaleSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_7
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind_test"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    const v1, 0x7f0a09c0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :goto_8
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_color_adjustment"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_9
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_use"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    const v1, 0x7f0a09c3

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :goto_a
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_access_control"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_b
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_access_magnifier"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_c
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_access"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind_test"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_use"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_samsung_screen_reader"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_4

    :cond_6
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_5

    :cond_7
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_6

    :cond_8
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mGreyscaleSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_7

    :cond_9
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_a
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_9

    :cond_b
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_c
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_b

    :cond_d
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_c
.end method

.method public updateDirectAccessMenu()V
    .locals 14

    const v13, 0x7f0a09c1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v11, "DirectAccessFragment"

    const-string v12, "updateDirectAccessMenu"

    invoke-static {v11, v12}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "direct_access"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "powersaving_switch"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "blackgrey_powersaving_mode"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_9

    move v7, v9

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "com.samsung.android.app.colorblind"

    invoke-static {v11, v12}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "com.google.android.marvin.talkback"

    invoke-static {v11, v12}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "com.samsung.android.app.talkback"

    invoke-static {v11, v12}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "com.samsung.android.universalswitch"

    invoke-static {v11, v12}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "com.samsung.android.app.screenreader"

    invoke-static {v11, v12}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "com.samsung.android.app.accesscontrol"

    invoke-static {v11, v12}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v8, :cond_a

    iget-object v9, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v9, v10}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v9, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_0
    iget-object v9, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mGreyscaleSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v13}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :goto_1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    const/16 v10, 0x64

    if-ge v9, v10, :cond_1

    if-nez v0, :cond_2

    :cond_1
    iget-object v9, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    if-nez v6, :cond_3

    iget-object v9, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v9, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mGreyscaleSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v9, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    if-nez v1, :cond_4

    iget-object v9, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v9, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mGreyscaleSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    if-nez v4, :cond_5

    iget-object v9, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    if-nez v3, :cond_6

    iget-object v9, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    if-nez v5, :cond_7

    iget-object v9, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    if-nez v2, :cond_8

    iget-object v9, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    return-void

    :cond_9
    move v7, v10

    goto/16 :goto_0

    :cond_a
    iget-object v11, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v11, v9}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v11, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "enabled_accessibility_samsung_screen_reader"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_c

    iget-object v11, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v13}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_b
    iget-object v11, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    if-eqz v7, :cond_d

    iget-object v11, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mGreyscaleSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "color_blind_test"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_e

    iget-object v11, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    const v12, 0x7f0a09c0

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "access_control_use"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_f

    iget-object v11, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    const v11, 0x7f0a09c3

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :goto_5
    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_c
    iget-object v11, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2

    :cond_d
    iget-object v11, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mGreyscaleSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_3

    :cond_e
    iget-object v11, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/preference/SwitchPreference;

    const-string v12, ""

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_f
    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/preference/SwitchPreference;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method
