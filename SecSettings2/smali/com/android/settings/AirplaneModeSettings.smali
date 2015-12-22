.class public Lcom/android/settings/AirplaneModeSettings;
.super Landroid/app/Fragment;
.source "AirplaneModeSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field airplaneModeDesc:Landroid/widget/TextView;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/AirplaneModeSettings$2;

    invoke-direct {v0}, Lcom/android/settings/AirplaneModeSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/AirplaneModeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    new-instance v0, Lcom/android/settings/AirplaneModeSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AirplaneModeSettings$1;-><init>(Lcom/android/settings/AirplaneModeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AirplaneModeSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/AirplaneModeSettings;->setDescription()V

    return-void
.end method

.method private setDescription()V
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/AirplaneModeSettings;->airplaneModeDesc:Landroid/widget/TextView;

    const/4 v4, 0x2

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    const v1, 0x7f0a0eae

    const-string v3, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/AirplaneModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v3, "AirplaneModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bVolteEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/AirplaneModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    const v1, 0x7f0a0eb4

    :goto_1
    iget-object v2, p0, Lcom/android/settings/AirplaneModeSettings;->airplaneModeDesc:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const v1, 0x7f0a0eb2

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/AirplaneModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4

    const v1, 0x7f0a0eb3

    goto :goto_1

    :cond_4
    const v1, 0x7f0a0eb1

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_BT_EnableSeparateSettingWithAirplainMode"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/AirplaneModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    const v1, 0x7f0a0eaf

    goto :goto_1

    :cond_6
    const v1, 0x7f0a0eb8

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/AirplaneModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v2

    if-eqz v2, :cond_8

    const v1, 0x7f0a0eae

    goto :goto_1

    :cond_8
    const v1, 0x7f0a0eb5

    goto :goto_1

    :cond_9
    const v1, 0x7f0a0eb7

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/AirplaneModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AirplaneModeSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    new-instance v1, Lcom/android/settings/AirplaneModeSwitchEnabler;

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {v1, v0, v2}, Lcom/android/settings/AirplaneModeSwitchEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V

    iput-object v1, p0, Lcom/android/settings/AirplaneModeSettings;->mEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f040011

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100052

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/AirplaneModeSettings;->airplaneModeDesc:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/AirplaneModeSettings;->setDescription()V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/settings/AirplaneModeSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AirplaneModeSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/AirplaneModeSettings;->mEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->pause()V

    invoke-virtual {p0}, Lcom/android/settings/AirplaneModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/AirplaneModeSettings;->mEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->resume()V

    invoke-virtual {p0}, Lcom/android/settings/AirplaneModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/AirplaneModeSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
