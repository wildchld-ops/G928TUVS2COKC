.class public Lcom/android/settings/AssistantMenuPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AssistantMenuPreferenceFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;,
        Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;
    }
.end annotation


# instance fields
.field private bSupportHoverZoom:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mAssistantMenuEnabler:Lcom/android/settings/AssistantMenuEnabler;

.field private mAssistantMenuObserver:Landroid/database/ContentObserver;

.field private mAssistantPlus:Landroid/preference/Preference;

.field private mCursor:Landroid/preference/PreferenceCategory;

.field private mDominantHand:Lcom/android/settings/DropDownPreference;

.field private mEditMenu:Landroid/preference/Preference;

.field private mFmMagnifierObserver:Landroid/database/ContentObserver;

.field mMagnifierImage:Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;

.field private mMagnifierSize:Lcom/android/settings/DropDownPreference;

.field mMagnifierZoom:Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

.field private mMagnifier_settings:Landroid/preference/PreferenceCategory;

.field private mPadSize:Lcom/android/settings/DropDownPreference;

.field private mPointerSize:Lcom/android/settings/DropDownPreference;

.field private mPointerSpeed:Lcom/android/settings/DropDownPreference;

.field private mPreferenceFragmentActivity:Landroid/app/Activity;

.field private mSearchStartMenu:Z

.field private mSearchTargetKey:Ljava/lang/String;

.field private mSearchTargetValue:I

.field protected mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field protected mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-boolean v1, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mSearchStartMenu:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mSearchTargetKey:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mSearchTargetValue:I

    iput-boolean v1, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->bSupportHoverZoom:Z

    new-instance v0, Lcom/android/settings/AssistantMenuPreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AssistantMenuPreferenceFragment$1;-><init>(Lcom/android/settings/AssistantMenuPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/AssistantMenuPreferenceFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AssistantMenuPreferenceFragment$2;-><init>(Lcom/android/settings/AssistantMenuPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mFmMagnifierObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AssistantMenuPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->updateAssistantMenuSaving()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/AssistantMenuPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->updatePointerSizeMenuStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/AssistantMenuPreferenceFragment;)Lcom/android/settings/DropDownPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mDominantHand:Lcom/android/settings/DropDownPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/AssistantMenuPreferenceFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/AssistantMenuPreferenceFragment;)Lcom/android/settings/DropDownPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/DropDownPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/AssistantMenuPreferenceFragment;)Lcom/android/settings/DropDownPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/DropDownPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/AssistantMenuPreferenceFragment;)Lcom/android/settings/DropDownPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/DropDownPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/AssistantMenuPreferenceFragment;)Lcom/android/settings/DropDownPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/DropDownPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/AssistantMenuPreferenceFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/AssistantMenuPreferenceFragment;->refreshImageView(I)V

    return-void
.end method

.method private installSwitchBarToggleSwitch()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void
.end method

.method private refreshImageView(I)V
    .locals 3

    const-string v0, "AssistantMenuPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshImageView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierImage:Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierImage:Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;

    invoke-virtual {v0, p1}, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->setHoverZoomImageLevel(I)V

    const-string v0, "AssistantMenuPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMagnifierImage.setMagnifierLevel(level) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeSwitchBarToggleSwitch()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method

.method private updateAssistantMenuSaving()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assistant_menu"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "FmMagnifier"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->bSupportHoverZoom:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierZoom:Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierZoom:Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v2, v4}, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->setEnabledZoomButton(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mDominantHand:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v2, v4}, Lcom/android/settings/DropDownPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mEditMenu:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mAssistantPlus:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v2, v4}, Lcom/android/settings/DropDownPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v2, v4}, Lcom/android/settings/DropDownPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v2, v4}, Lcom/android/settings/DropDownPreference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->bSupportHoverZoom:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierZoom:Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierZoom:Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v2, v5}, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->setEnabledZoomButton(Z)V

    :cond_2
    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v5}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mDominantHand:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v2, v5}, Lcom/android/settings/DropDownPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mEditMenu:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mAssistantPlus:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v2, v5}, Lcom/android/settings/DropDownPreference;->setEnabled(Z)V

    if-ne v1, v5, :cond_3

    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v2, v4}, Lcom/android/settings/DropDownPreference;->setEnabled(Z)V

    :goto_1
    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v2, v5}, Lcom/android/settings/DropDownPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v2, v5}, Lcom/android/settings/DropDownPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updatePointerSizeMenuStatus()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assistant_menu"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "FmMagnifier"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v5, :cond_0

    if-ne v1, v5, :cond_1

    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v2, v4}, Lcom/android/settings/DropDownPreference;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v2, v5}, Lcom/android/settings/DropDownPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "assistant_menu"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v1, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->installSwitchBarToggleSwitch()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    const v13, 0x7f0a099f

    const v12, 0x7f0a099e

    const/4 v11, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v4, "AssistantMenuPreferenceFragment"

    const-string v7, "onCreate()"

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v7, "com.sec.feature.overlaymagnifier"

    invoke-static {v4, v7}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->bSupportHoverZoom:Z

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    const v4, 0x7f070073

    invoke-virtual {p0, v4}, Lcom/android/settings/AssistantMenuPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v4, "dominant_hand_side"

    invoke-virtual {p0, v4}, Lcom/android/settings/AssistantMenuPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/DropDownPreference;

    iput-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mDominantHand:Lcom/android/settings/DropDownPreference;

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mDominantHand:Lcom/android/settings/DropDownPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mDominantHand:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v4}, Lcom/android/settings/DropDownPreference;->clearItems()V

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0e00e4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mDominantHand:Lcom/android/settings/DropDownPreference;

    const v7, 0x7f0a154c

    aget-object v8, v3, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mDominantHand:Lcom/android/settings/DropDownPreference;

    const v7, 0x7f0a154d

    aget-object v8, v3, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mDominantHand:Lcom/android/settings/DropDownPreference;

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "assistant_menu_dominant_hand_type"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/settings/DropDownPreference;->setSelectedItem(I)V

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mDominantHand:Lcom/android/settings/DropDownPreference;

    new-instance v7, Lcom/android/settings/AssistantMenuPreferenceFragment$3;

    invoke-direct {v7, p0}, Lcom/android/settings/AssistantMenuPreferenceFragment$3;-><init>(Lcom/android/settings/AssistantMenuPreferenceFragment;)V

    invoke-virtual {v4, v7}, Lcom/android/settings/DropDownPreference;->setCallback(Lcom/android/settings/DropDownPreference$Callback;)V

    :cond_0
    const-string v4, "menu_edit"

    invoke-virtual {p0, v4}, Lcom/android/settings/AssistantMenuPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mEditMenu:Landroid/preference/Preference;

    const-string v4, "eam_active"

    invoke-virtual {p0, v4}, Lcom/android/settings/AssistantMenuPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mAssistantPlus:Landroid/preference/Preference;

    const-string v4, "pointer_category"

    invoke-virtual {p0, v4}, Lcom/android/settings/AssistantMenuPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mCursor:Landroid/preference/PreferenceCategory;

    const-string v4, "fmpointer_speed"

    invoke-virtual {p0, v4}, Lcom/android/settings/AssistantMenuPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/DropDownPreference;

    iput-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/DropDownPreference;

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/DropDownPreference;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v4}, Lcom/android/settings/DropDownPreference;->clearItems()V

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0e00af

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/DropDownPreference;

    const v7, 0x7f0a0999

    aget-object v8, v3, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/DropDownPreference;

    const v7, 0x7f0a099a

    aget-object v8, v3, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/DropDownPreference;

    const v7, 0x7f0a099b

    aget-object v8, v3, v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/DropDownPreference;

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "assistant_menu_pointer_speed"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v7}, Lcom/android/settings/DropDownPreference;->setSelectedItem(I)V

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/DropDownPreference;

    new-instance v7, Lcom/android/settings/AssistantMenuPreferenceFragment$4;

    invoke-direct {v7, p0}, Lcom/android/settings/AssistantMenuPreferenceFragment$4;-><init>(Lcom/android/settings/AssistantMenuPreferenceFragment;)V

    invoke-virtual {v4, v7}, Lcom/android/settings/DropDownPreference;->setCallback(Lcom/android/settings/DropDownPreference$Callback;)V

    :cond_1
    const-string v4, "fmpointer_size"

    invoke-virtual {p0, v4}, Lcom/android/settings/AssistantMenuPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/DropDownPreference;

    iput-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/DropDownPreference;

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/DropDownPreference;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v4}, Lcom/android/settings/DropDownPreference;->clearItems()V

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0e00b1

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/DropDownPreference;

    const v7, 0x7f0a099c

    aget-object v8, v3, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/DropDownPreference;

    const v7, 0x7f0a099d

    aget-object v8, v3, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/DropDownPreference;

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "assistant_menu_pointer_size"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/settings/DropDownPreference;->setSelectedItem(I)V

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/DropDownPreference;

    new-instance v7, Lcom/android/settings/AssistantMenuPreferenceFragment$5;

    invoke-direct {v7, p0}, Lcom/android/settings/AssistantMenuPreferenceFragment$5;-><init>(Lcom/android/settings/AssistantMenuPreferenceFragment;)V

    invoke-virtual {v4, v7}, Lcom/android/settings/DropDownPreference;->setCallback(Lcom/android/settings/DropDownPreference$Callback;)V

    :cond_2
    const-string v4, "fmpad_size"

    invoke-virtual {p0, v4}, Lcom/android/settings/AssistantMenuPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/DropDownPreference;

    iput-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/DropDownPreference;

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/DropDownPreference;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v4}, Lcom/android/settings/DropDownPreference;->clearItems()V

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0e00b3

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/DropDownPreference;

    aget-object v7, v3, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v12, v7}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/DropDownPreference;

    aget-object v7, v3, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v13, v7}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/DropDownPreference;

    const v7, 0x7f0a09a0

    aget-object v8, v3, v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/DropDownPreference;

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "assistant_menu_pad_size"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/settings/DropDownPreference;->setSelectedItem(I)V

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/DropDownPreference;

    new-instance v7, Lcom/android/settings/AssistantMenuPreferenceFragment$6;

    invoke-direct {v7, p0}, Lcom/android/settings/AssistantMenuPreferenceFragment$6;-><init>(Lcom/android/settings/AssistantMenuPreferenceFragment;)V

    invoke-virtual {v4, v7}, Lcom/android/settings/DropDownPreference;->setCallback(Lcom/android/settings/DropDownPreference$Callback;)V

    :cond_3
    const/4 v0, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v7, "com.samsung.android.app.assistantmenu"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v7, "1.1.0"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mAssistantPlus:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mCursor:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const v7, 0x7f0a09e9

    invoke-virtual {v4, v7}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_5
    const-string v4, "magnifier_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings/AssistantMenuPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifier_settings:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0a155e

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a155f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {v4, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifier_settings:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->bSupportHoverZoom:Z

    if-eqz v4, :cond_8

    new-instance v7, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v9, "assistant_menu"

    invoke-static {v4, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_7

    move v4, v5

    :goto_1
    invoke-direct {v7, p0, v8, v4}, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;-><init>(Lcom/android/settings/AssistantMenuPreferenceFragment;Landroid/content/Context;Z)V

    iput-object v7, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierZoom:Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierZoom:Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    const/4 v7, -0x1

    invoke-virtual {v4, v7}, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->setOrder(I)V

    new-instance v4, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "hover_zoom_value"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-direct {v4, v7, v8}, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierImage:Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierImage:Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;

    const/4 v7, -0x2

    invoke-virtual {v4, v7}, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->setOrder(I)V

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifier_settings:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierImage:Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifier_settings:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierZoom:Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    const-string v4, "magnifier_size"

    invoke-virtual {p0, v4}, Lcom/android/settings/AssistantMenuPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/DropDownPreference;

    iput-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/DropDownPreference;

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/DropDownPreference;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v4}, Lcom/android/settings/DropDownPreference;->clearItems()V

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0e00b3

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/DropDownPreference;

    aget-object v7, v3, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v12, v7}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/DropDownPreference;

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v13, v5}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/DropDownPreference;

    const v5, 0x7f0a09a0

    aget-object v7, v3, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/DropDownPreference;

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "hover_zoom_magnifier_size"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/DropDownPreference;->setSelectedItem(I)V

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/DropDownPreference;

    new-instance v5, Lcom/android/settings/AssistantMenuPreferenceFragment$7;

    invoke-direct {v5, p0}, Lcom/android/settings/AssistantMenuPreferenceFragment$7;-><init>(Lcom/android/settings/AssistantMenuPreferenceFragment;)V

    invoke-virtual {v4, v5}, Lcom/android/settings/DropDownPreference;->setCallback(Lcom/android/settings/DropDownPreference$Callback;)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    move v4, v6

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifier_settings:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    invoke-direct {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->removeSwitchBarToggleSwitch()V

    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings/AssistantMenuPreferenceFragment$8;

    invoke-direct {v1, p0}, Lcom/android/settings/AssistantMenuPreferenceFragment$8;-><init>(Lcom/android/settings/AssistantMenuPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuEnabler:Lcom/android/settings/AssistantMenuEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AssistantMenuEnabler;->pause()V

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mFmMagnifierObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fmpointer_speed1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "AssistantMenuPreferenceFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changed speed value - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v2, 0x0

    return v2

    :cond_0
    const-string v2, "AssistantMenuPreferenceFragment"

    const-string v3, "onPreferenceChange"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mEditMenu:Landroid/preference/Preference;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mEditMenu:Landroid/preference/Preference;

    const-class v1, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mAssistantPlus:Landroid/preference/Preference;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mAssistantPlus:Landroid/preference/Preference;

    const-class v1, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    new-instance v0, Lcom/android/settings/AssistantMenuEnabler;

    iget-object v1, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/AssistantMenuEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuEnabler:Lcom/android/settings/AssistantMenuEnabler;

    invoke-direct {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->updateAssistantMenuSaving()V

    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuEnabler:Lcom/android/settings/AssistantMenuEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AssistantMenuEnabler;->resume()V

    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant_menu"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "FmMagnifier"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mFmMagnifierObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
