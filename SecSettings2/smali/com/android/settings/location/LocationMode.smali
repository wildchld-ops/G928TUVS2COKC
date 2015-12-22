.class public Lcom/android/settings/location/LocationMode;
.super Lcom/android/settings/location/LocationSettingsBase;
.source "LocationMode.java"

# interfaces
.implements Lcom/android/settings/location/RadioButtonPreference$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/LocationMode$XTServiceConnection;
    }
.end annotation


# static fields
.field private static isDCM:Z


# instance fields
.field private izatConnResult:Z

.field private mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

.field private mCallback:Lcom/android/location/XT/IXTSrvCb;

.field private mHandler:Landroid/os/Handler;

.field private mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

.field private mIZat:Lcom/android/settings/location/WrappingIZatSwitchPreference;

.field private mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

.field private mServiceConn:Lcom/android/settings/location/LocationMode$XTServiceConnection;

.field private mXTService:Lcom/android/location/XT/IXTSrv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/location/LocationMode;->isDCM:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;-><init>()V

    iput-object v0, p0, Lcom/android/settings/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;

    iput-object v0, p0, Lcom/android/settings/location/LocationMode;->mServiceConn:Lcom/android/settings/location/LocationMode$XTServiceConnection;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/LocationMode;->izatConnResult:Z

    new-instance v0, Lcom/android/settings/location/LocationMode$1;

    invoke-direct {v0, p0}, Lcom/android/settings/location/LocationMode$1;-><init>(Lcom/android/settings/location/LocationMode;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationMode;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/location/LocationMode$2;

    invoke-direct {v0, p0}, Lcom/android/settings/location/LocationMode$2;-><init>(Lcom/android/settings/location/LocationMode;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationMode;->mCallback:Lcom/android/location/XT/IXTSrvCb;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/location/LocationMode;)Lcom/android/settings/location/WrappingIZatSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mIZat:Lcom/android/settings/location/WrappingIZatSwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/location/LocationMode;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/location/LocationMode;)Lcom/android/location/XT/IXTSrv;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/location/LocationMode;Lcom/android/location/XT/IXTSrv;)Lcom/android/location/XT/IXTSrv;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/location/LocationMode;)Lcom/android/location/XT/IXTSrvCb;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mCallback:Lcom/android/location/XT/IXTSrvCb;

    return-object v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 7

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v5, 0x7f070057

    invoke-virtual {p0, v5}, Lcom/android/settings/location/LocationMode;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "high_accuracy"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v5, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    const-string v5, "battery_saving"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v5, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    const-string v5, "sensors_only"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v5, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    const v6, 0x7f0a0719

    invoke-virtual {v5, v6}, Lcom/android/settings/location/RadioButtonPreference;->setTitle(I)V

    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    const v6, 0x7f0a071b

    invoke-virtual {v5, v6}, Lcom/android/settings/location/RadioButtonPreference;->setTitle(I)V

    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    const v6, 0x7f0a0f55

    invoke-virtual {v5, v6}, Lcom/android/settings/location/RadioButtonPreference;->setSummary(I)V

    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    const v6, 0x7f0a0f56

    invoke-virtual {v5, v6}, Lcom/android/settings/location/RadioButtonPreference;->setSummary(I)V

    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    const v6, 0x7f0a0f57

    invoke-virtual {v5, v6}, Lcom/android/settings/location/RadioButtonPreference;->setSummary(I)V

    :cond_1
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v5, p0}, Lcom/android/settings/location/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/location/RadioButtonPreference$OnClickListener;)V

    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v5, p0}, Lcom/android/settings/location/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/location/RadioButtonPreference$OnClickListener;)V

    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v5, p0}, Lcom/android/settings/location/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/location/RadioButtonPreference$OnClickListener;)V

    const-string v5, "enhanced_location"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    const-string v5, "location_izat"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/location/WrappingIZatSwitchPreference;

    iput-object v5, p0, Lcom/android/settings/location/LocationMode;->mIZat:Lcom/android/settings/location/WrappingIZatSwitchPreference;

    iget-boolean v5, p0, Lcom/android/settings/location/LocationMode;->izatConnResult:Z

    if-nez v5, :cond_4

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mIZat:Lcom/android/settings/location/WrappingIZatSwitchPreference;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mIZat:Lcom/android/settings/location/WrappingIZatSwitchPreference;

    new-instance v6, Lcom/android/settings/location/LocationMode$3;

    invoke-direct {v6, p0}, Lcom/android/settings/location/LocationMode$3;-><init>(Lcom/android/settings/location/LocationMode;)V

    invoke-virtual {v5, v6}, Lcom/android/settings/location/WrappingIZatSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->refreshLocationMode()V

    return-object v4

    :cond_4
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/location/XT/IXTSrv;->getText(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/android/location/XT/IXTSrv;->getText(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mIZat:Lcom/android/settings/location/WrappingIZatSwitchPreference;

    invoke-virtual {v5, v2}, Lcom/android/settings/location/WrappingIZatSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mIZat:Lcom/android/settings/location/WrappingIZatSwitchPreference;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/location/WrappingIZatSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mIZat:Lcom/android/settings/location/WrappingIZatSwitchPreference;

    iget-object v6, p0, Lcom/android/settings/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;

    invoke-interface {v6}, Lcom/android/location/XT/IXTSrv;->getStatus()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/settings/location/WrappingIZatSwitchPreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "LocationMode"

    const-string v6, "Service connection error!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initUserPrefService()V
    .locals 4

    new-instance v1, Lcom/android/settings/location/LocationMode$XTServiceConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/location/LocationMode$XTServiceConnection;-><init>(Lcom/android/settings/location/LocationMode;Lcom/android/settings/location/LocationMode$1;)V

    iput-object v1, p0, Lcom/android/settings/location/LocationMode;->mServiceConn:Lcom/android/settings/location/LocationMode$XTServiceConnection;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/location/XT/IXTSrv;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.qualcomm.location.XT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/location/LocationMode;->mServiceConn:Lcom/android/settings/location/LocationMode$XTServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/location/LocationMode;->izatConnResult:Z

    return-void
.end method

.method private updateRadioButtons(Lcom/android/settings/location/RadioButtonPreference;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    const v0, 0x7f0a0d4c

    return v0
.end method

.method public onModeChanged(IZ)V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    move v0, v5

    :goto_1
    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/android/settings/location/LocationMode;->mLocationPolicy:Landroid/app/enterprise/LocationPolicy;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/location/LocationMode;->mLocationPolicy:Landroid/app/enterprise/LocationPolicy;

    const-string v8, "gps"

    invoke-virtual {v7, v8}, Landroid/app/enterprise/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v1, v5

    :goto_2
    iget-object v7, p0, Lcom/android/settings/location/LocationMode;->mLocationPolicy:Landroid/app/enterprise/LocationPolicy;

    const-string v8, "network"

    invoke-virtual {v7, v8}, Landroid/app/enterprise/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    move v3, v5

    :goto_3
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "gps"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "network"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v4, v5

    :cond_0
    :goto_4
    iget-object v8, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    if-eqz v3, :cond_5

    move v7, v5

    :goto_5
    invoke-virtual {v8, v7}, Lcom/android/settings/location/RadioButtonPreference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    if-nez v4, :cond_6

    move v7, v5

    :goto_6
    invoke-virtual {v8, v7}, Lcom/android/settings/location/RadioButtonPreference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    :goto_7
    invoke-virtual {v7, v5}, Lcom/android/settings/location/RadioButtonPreference;->setEnabled(Z)V

    return-void

    :pswitch_0
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/settings/location/LocationMode;->updateRadioButtons(Lcom/android/settings/location/RadioButtonPreference;)V

    goto :goto_0

    :pswitch_1
    iget-object v7, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-direct {p0, v7}, Lcom/android/settings/location/LocationMode;->updateRadioButtons(Lcom/android/settings/location/RadioButtonPreference;)V

    goto :goto_0

    :pswitch_2
    iget-object v7, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-direct {p0, v7}, Lcom/android/settings/location/LocationMode;->updateRadioButtons(Lcom/android/settings/location/RadioButtonPreference;)V

    goto :goto_0

    :pswitch_3
    iget-object v7, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-direct {p0, v7}, Lcom/android/settings/location/LocationMode;->updateRadioButtons(Lcom/android/settings/location/RadioButtonPreference;)V

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_1

    :cond_2
    move v1, v6

    goto :goto_2

    :cond_3
    move v3, v6

    goto :goto_3

    :cond_4
    move v4, v6

    goto :goto_4

    :cond_5
    move v7, v6

    goto :goto_5

    :cond_6
    move v7, v6

    goto :goto_6

    :cond_7
    move v5, v6

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onPause()V

    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/location/RadioButtonPreference;)V
    .locals 11

    const v10, 0x7f0a0e5d

    const v9, 0x7f0a0e5c

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DCM"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sput-boolean v6, Lcom/android/settings/location/LocationMode;->isDCM:Z

    :cond_0
    iget-object v4, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v4, :cond_3

    const/4 v2, 0x3

    sget-boolean v4, Lcom/android/settings/location/LocationMode;->isDCM:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "location_mode"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_1

    const/4 v2, 0x2

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a13ce

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a13cf

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/android/settings/location/LocationMode$4;

    invoke-direct {v5, p0}, Lcom/android/settings/location/LocationMode$4;-><init>(Lcom/android/settings/location/LocationMode;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/android/settings/location/LocationMode$5;

    invoke-direct {v5, p0}, Lcom/android/settings/location/LocationMode$5;-><init>(Lcom/android/settings/location/LocationMode;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/settings/location/LocationMode;->setLocationMode(I)V

    sget-boolean v4, Lcom/android/settings/location/LocationMode;->isDCM:Z

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->onBackPressed()V

    :cond_2
    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v4, :cond_4

    const/4 v2, 0x2

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v4, :cond_1

    const/4 v2, 0x1

    sget-boolean v4, Lcom/android/settings/location/LocationMode;->isDCM:Z

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "location_mode"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_5

    const/4 v2, 0x2

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a13ce

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a13cf

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/android/settings/location/LocationMode$6;

    invoke-direct {v5, p0}, Lcom/android/settings/location/LocationMode$6;-><init>(Lcom/android/settings/location/LocationMode;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/android/settings/location/LocationMode$7;

    invoke-direct {v5, p0}, Lcom/android/settings/location/LocationMode$7;-><init>(Lcom/android/settings/location/LocationMode;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/location/LocationMode;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onStart()V

    invoke-direct {p0}, Lcom/android/settings/location/LocationMode;->initUserPrefService()V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onStop()V

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mServiceConn:Lcom/android/settings/location/LocationMode$XTServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
