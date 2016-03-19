.class public Lcom/android/phone/MobileNetworkSettingsTab;
.super Landroid/app/TabActivity;
.source "MobileNetworkSettingsTab.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field public static mActiveSimId:I

.field public static mNetworkSettingStatus1:Z

.field public static mNetworkSettingStatus2:Z

.field private static mTabHost:Landroid/widget/TabHost;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mIsNetworkSetting:Z

.field private mIsPreferredNetworks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/MobileNetworkSettingsTab;->mNetworkSettingStatus1:Z

    sput-boolean v0, Lcom/android/phone/MobileNetworkSettingsTab;->mNetworkSettingStatus2:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    iput-boolean v0, p0, Lcom/android/phone/MobileNetworkSettingsTab;->mIsPreferredNetworks:Z

    iput-boolean v0, p0, Lcom/android/phone/MobileNetworkSettingsTab;->mIsNetworkSetting:Z

    return-void
.end method

.method private addPreferredNetwork()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getPreferredNetworksListCount()I

    move-result v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/PreferredNetworkDetailView;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type_action"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "index"

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "name"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "id"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "act_gsm"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "act_gsm_compact"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "act_utran"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "new_item"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettingsTab;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private getSimImage(I)I
    .locals 1

    const/16 v0, 0x65

    invoke-static {p1, v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimImage(II)I

    move-result v0

    return v0
.end method

.method private setupTab(I)V
    .locals 10

    const v9, 0x1020006

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v2, "MobileNetworkSettingsTab"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupTab : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-boolean v2, p0, Lcom/android/phone/MobileNetworkSettingsTab;->mIsPreferredNetworks:Z

    if-eqz v2, :cond_0

    const-string v2, "SIM_SLOT"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.PreferredNetworks"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    if-nez p1, :cond_2

    const-string v2, "sim_id"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v2, Lcom/android/phone/MobileNetworkSettingsTab;->mTabHost:Landroid/widget/TabHost;

    sget-object v3, Lcom/android/phone/MobileNetworkSettingsTab;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "tab_slot1"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {p0, v7}, Lcom/android/phone/MobileNetworkSettingsTab;->getSimImage(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    sget-object v2, Lcom/android/phone/MobileNetworkSettingsTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v7}, Lcom/android/phone/MobileNetworkSettingsTab;->getSimImage(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/android/phone/MobileNetworkSettingsTab;->mIsNetworkSetting:Z

    if-eqz v2, :cond_1

    const-string v2, "sim_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.NetworkSetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.MobileNetworkSettings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    if-ne p1, v8, :cond_3

    const-string v2, "sim_id"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v2, Lcom/android/phone/MobileNetworkSettingsTab;->mTabHost:Landroid/widget/TabHost;

    sget-object v3, Lcom/android/phone/MobileNetworkSettingsTab;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "tab_slot2"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v8}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {p0, v8}, Lcom/android/phone/MobileNetworkSettingsTab;->getSimImage(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    sget-object v2, Lcom/android/phone/MobileNetworkSettingsTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v8}, Lcom/android/phone/MobileNetworkSettingsTab;->getSimImage(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const-string v2, "MobileNetworkSettingsTab"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong Tab index!! : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettingsTab;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "PreferredNetworks"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/MobileNetworkSettingsTab;->mIsPreferredNetworks:Z

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettingsTab;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "NetworkSetting"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/MobileNetworkSettingsTab;->mIsNetworkSetting:Z

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettingsTab;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "phoneId"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "MobileNetworkSettingsTab"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsPreferredNetworks : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/MobileNetworkSettingsTab;->mIsPreferredNetworks:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mIsNetworkSetting : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/MobileNetworkSettingsTab;->mIsNetworkSetting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettingsTab;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MobileNetworkSettingsTab;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettingsTab;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettingsTab;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-boolean v1, p0, Lcom/android/phone/MobileNetworkSettingsTab;->mIsPreferredNetworks:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettingsTab;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04e8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettingsTab;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    sput-object v1, Lcom/android/phone/MobileNetworkSettingsTab;->mTabHost:Landroid/widget/TabHost;

    sget-object v1, Lcom/android/phone/MobileNetworkSettingsTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    invoke-direct {p0, v4}, Lcom/android/phone/MobileNetworkSettingsTab;->setupTab(I)V

    invoke-direct {p0, v5}, Lcom/android/phone/MobileNetworkSettingsTab;->setupTab(I)V

    sput v0, Lcom/android/phone/MobileNetworkSettingsTab;->mActiveSimId:I

    sget-object v1, Lcom/android/phone/MobileNetworkSettingsTab;->mTabHost:Landroid/widget/TabHost;

    sget v2, Lcom/android/phone/MobileNetworkSettingsTab;->mActiveSimId:I

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/phone/MobileNetworkSettingsTab;->mIsNetworkSetting:Z

    if-eqz v1, :cond_2

    sput-boolean v5, Lcom/android/phone/MobileNetworkSettingsTab;->mNetworkSettingStatus1:Z

    sput-boolean v5, Lcom/android/phone/MobileNetworkSettingsTab;->mNetworkSettingStatus2:Z

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettingsTab;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettingsTab;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget-boolean v0, p0, Lcom/android/phone/MobileNetworkSettingsTab;->mIsPreferredNetworks:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a04f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v2, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020007

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettingsTab;->finish()V

    :goto_0
    return v1

    :cond_0
    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettingsTab;->addPreferredNetwork()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/TabActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget-boolean v0, p0, Lcom/android/phone/MobileNetworkSettingsTab;->mIsPreferredNetworks:Z

    if-eqz v0, :cond_0

    const-string v0, "chn_cdma_network_on_all_rat"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/phone/MobileNetworkSettingsTab;->mActiveSimId:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCHN;->isCTCSIM(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, v1, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    sget v0, Lcom/android/phone/MobileNetworkSettingsTab;->mActiveSimId:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_0

    :cond_2
    invoke-interface {p1, v1, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/phone/MobileNetworkSettingsTab;->mTabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/MobileNetworkSettingsTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    sput v0, Lcom/android/phone/MobileNetworkSettingsTab;->mActiveSimId:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettingsTab;->invalidateOptionsMenu()V

    const-string v0, "MobileNetworkSettingsTab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabChanged() : mActiveSimId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/MobileNetworkSettingsTab;->mActiveSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "tab_slot1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput v0, Lcom/android/phone/MobileNetworkSettingsTab;->mActiveSimId:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    sput v0, Lcom/android/phone/MobileNetworkSettingsTab;->mActiveSimId:I

    goto :goto_0
.end method
