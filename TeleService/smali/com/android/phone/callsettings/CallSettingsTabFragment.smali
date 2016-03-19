.class public Lcom/android/phone/callsettings/CallSettingsTabFragment;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "CallSettingsTabFragment.java"


# static fields
.field public static sim1Name:Ljava/lang/String;

.field public static sim2Name:Ljava/lang/String;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mMenuId:I

.field private mSelectedTabPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    return-void
.end method

.method private setupTab(Ljava/lang/String;I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    const-string v4, "CallSettingTab"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "CallSettingsTabFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setupTab "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    new-instance v1, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vcf"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;

    invoke-direct {v1, v4, v5, v6, v0}, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_0
    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x64

    invoke-static {p2, v4}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimImage(II)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    :cond_0
    invoke-virtual {v2, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    iget v4, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    if-ne v4, p2, :cond_a

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v2, v7}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;Z)V

    :goto_1
    return-void

    :cond_1
    iget v4, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    new-instance v1, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vdf"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;

    invoke-direct {v1, v4, v5, v6, v0}, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSIMNetworkCombinationType()I

    move-result v4

    if-ne v4, v7, :cond_3

    if-eqz p2, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSIMNetworkCombinationType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    if-ne p2, v7, :cond_5

    :cond_4
    new-instance v1, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/android/phone/CdmaAdditionalCallOptions;

    invoke-direct {v1, v4, v5, v6, v0}, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_2
    const v4, 0x7f0a00b9

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    new-instance v1, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-direct {v1, v4, v5, v6, v0}, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_6
    iget v4, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_7

    const-string v4, "is_voicemail_duos"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vom"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {v1, v4, v5, v6, v0}, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    const v4, 0x7f0a00b2

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    iget v4, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_8

    new-instance v1, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ipc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/android/phone/callsettings/IpCall;

    invoke-direct {v1, v4, v5, v6, v0}, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    const v4, 0x7f0a03a3

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    iget v4, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_9

    const-string v4, "is_ringtone_duos"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rtn"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    invoke-direct {v1, v4, v5, v6, v0}, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    const v4, 0x7f0a0247

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    const-string v4, "CallSettingsTabFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setupTab : no menu  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "CallSettingsTabFragment"

    const-string v3, "oncreate"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "TabTitleString"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const-string v2, "CallSettingMenu"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    if-eqz p1, :cond_3

    const-string v2, "selected_tab_position"

    invoke-virtual {p1, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    :goto_0
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimName(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim1Name:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimName(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim2Name:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim1Name:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim1Name:Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->setupTab(Ljava/lang/String;I)V

    :cond_1
    sget-object v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim2Name:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim2Name:Ljava/lang/String;

    invoke-direct {p0, v2, v5}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->setupTab(Ljava/lang/String;I)V

    :cond_2
    return-void

    :cond_3
    iput v6, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-gtz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "com.android.phone.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->finish()V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "selected_tab_position"

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
