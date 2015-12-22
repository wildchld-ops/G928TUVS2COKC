.class public Lcom/android/phone/callsettings/SwisSettings;
.super Landroid/preference/PreferenceActivity;
.source "SwisSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/SwisSettings$CoreAppsConfig;
    }
.end annotation


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mConnManager:Landroid/net/ConnectivityManager;

.field private mDataEnabledObserver:Landroid/database/ContentObserver;

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field private mRegiInfo:Landroid/preference/PreferenceScreen;

.field private mResolution:Landroid/preference/PreferenceScreen;

.field private mSubAppBarOnffTextview:Landroid/widget/TextView;

.field private mSubAppBarSwitch:Landroid/widget/Switch;

.field private mSubAppBarView:Landroid/view/View;

.field private resolutionEntry:[Ljava/lang/String;

.field private updateDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Lcom/android/phone/callsettings/SwisSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/SwisSettings$1;-><init>(Lcom/android/phone/callsettings/SwisSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/SwisSettings;->mDataEnabledObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private ShowResolutionDialog()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SwisSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "layout_inflater"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v5, 0x7f0400b7

    invoke-virtual {v2, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v5, 0x102000a

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    new-instance v5, Landroid/widget/ArrayAdapter;

    const v6, 0x7f0400b2

    iget-object v7, p0, Lcom/android/phone/callsettings/SwisSettings;->resolutionEntry:[Ljava/lang/String;

    invoke-direct {v5, p0, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v5, p0, Lcom/android/phone/callsettings/SwisSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "swis_swys_resolution"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1, v8}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setSelection(I)V

    new-instance v5, Lcom/android/phone/callsettings/SwisSettings$3;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/SwisSettings$3;-><init>(Lcom/android/phone/callsettings/SwisSettings;)V

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a077d

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a008e

    invoke-virtual {v5, v6, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/callsettings/SwisSettings;->updateDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/SwisSettings;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SwisSettings;->mConnManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/SwisSettings;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SwisSettings;->mSubAppBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/SwisSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/SwisSettings;->updateLayout(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/SwisSettings;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SwisSettings;->resolutionEntry:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/SwisSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SwisSettings;->mResolution:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method private initLayout()V
    .locals 2

    const v0, 0x7f10001a

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/SwisSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/callsettings/SwisSettings;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    const v0, 0x7f10001b

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/SwisSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/phone/callsettings/SwisSettings;->mSubAppBarSwitch:Landroid/widget/Switch;

    const v0, 0x7f100019

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/SwisSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/SwisSettings;->mSubAppBarView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/callsettings/SwisSettings;->mSubAppBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SwisSettings;->mSubAppBarView:Landroid/view/View;

    new-instance v1, Lcom/android/phone/callsettings/SwisSettings$2;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/SwisSettings$2;-><init>(Lcom/android/phone/callsettings/SwisSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private startCoreAppsActivity()V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.coreapps.easysignup.ACTION_REQ_AUTH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "service_id"

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "AuthRequestFrom"

    const-string v3, "contact"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/phone/callsettings/SwisSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "SwisSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityNotFoundException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateLayout(Z)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SwisSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/callsettings/SwisSettings$CoreAppsConfig;->serviceOn(Landroid/content/Context;)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/callsettings/SwisSettings;->mResolution:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SwisSettings;->mResolution:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/SwisSettings;->mRegiInfo:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/SwisSettings;->mRegiInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SwisSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/callsettings/SwisSettings$CoreAppsConfig;->serviceOff(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private updateSubAppBar()V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SwisSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v4, 0x9

    invoke-static {v1, v4}, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->getServiceStatus(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SwisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "swis_swys_enable"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/phone/callsettings/SwisSettings;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/SwisSettings;->mSubAppBarSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/phone/callsettings/SwisSettings;->mSubAppBarSwitch:Landroid/widget/Switch;

    if-ne v0, v2, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/phone/callsettings/SwisSettings;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SwisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a0771

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-ne v0, v2, :cond_3

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/SwisSettings;->updateLayout(Z)V

    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SwisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a0772

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method


# virtual methods
.method public bindSettingsLayout()V
    .locals 2

    const v0, 0x7f0400b8

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/SwisSettings;->setContentView(I)V

    const v0, 0x7f070041

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/SwisSettings;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/SwisSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Lcom/android/phone/callsettings/SwisSettings;->initLayout()V

    const-string v0, "button_swis_swys_resolution"

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/SwisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/callsettings/SwisSettings;->mResolution:Landroid/preference/PreferenceScreen;

    const-string v0, "button_registered_info"

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/SwisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/callsettings/SwisSettings;->mRegiInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SwisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/SwisSettings;->resolutionEntry:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SwisSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/SwisSettings;->mActionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/android/phone/callsettings/SwisSettings;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SwisSettings;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const-string v0, "config_hide_status_bar"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setHideLandscapeIndicatorBar(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "SwisSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/callsettings/SwisSettings;->updateSubAppBar()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SwisSettings;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 v1, 0x1

    const-string v0, "SwisSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged isChecked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SwisSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/callsettings/SwisSettings$CoreAppsConfig;->isEasySignupRegistered(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/callsettings/SwisSettings;->startCoreAppsActivity()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/SwisSettings;->mSubAppBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/phone/callsettings/SwisSettings;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SwisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0771

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SwisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "swis_swys_enable"

    if-eqz p2, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, p2}, Lcom/android/phone/callsettings/SwisSettings;->updateLayout(Z)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SwisSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.phone"

    const-string v3, "SWSV"

    if-eqz p2, :cond_3

    const-string v0, "on"

    :goto_3
    invoke-static {v1, v2, v3, v0}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SwisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0772

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    const-string v0, "off"

    goto :goto_3
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "config_hide_status_bar"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setHideLandscapeIndicatorBar(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "SwisSettings"

    const-string v1, "onCreate"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/SwisSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/phone/callsettings/SwisSettings;->mConnManager:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/SwisSettings;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SwisSettings;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SwisSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/callsettings/SwisSettings$CoreAppsConfig;->isEasySignupRegistered(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isUltraPowerSavingMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/phone/callsettings/SwisSettings;->startCoreAppsActivity()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SwisSettings;->bindSettingsLayout()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onDismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SwisSettings;->updateDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SwisSettings;->updateDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SwisSettings;->finish()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SwisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SwisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/SwisSettings;->mDataEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    iget-object v2, p0, Lcom/android/phone/callsettings/SwisSettings;->mResolution:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/phone/callsettings/SwisSettings;->ShowResolutionDialog()V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/SwisSettings;->mRegiInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.coreapps.easysignup.ACTION_LAUNCH_EASY_SIGNUP_BY_SETTING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "extra_setting_access_agent"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/SwisSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :catch_0
    move-exception v0

    const-string v2, "SwisSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityNotFoundException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const-string v1, "SwisSettings"

    const-string v2, "onResume"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SwisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/SwisSettings;->mDataEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/SwisSettings;->updateSubAppBar()V

    iget-object v1, p0, Lcom/android/phone/callsettings/SwisSettings;->mResolution:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/SwisSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "swis_swys_resolution"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/callsettings/SwisSettings;->mResolution:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/phone/callsettings/SwisSettings;->resolutionEntry:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/SwisSettings;->mRegiInfo:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/SwisSettings;->mRegiInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SwisSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/callsettings/SwisSettings$CoreAppsConfig;->getEasySignupAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
