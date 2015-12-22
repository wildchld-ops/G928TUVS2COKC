.class public Lcom/android/settings/location/LocationModeEnabler;
.super Lcom/android/settings/location/LocationSettingsBase;
.source "LocationModeEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActive:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentMode:I

.field private mSwitch:Landroid/widget/Switch;

.field private mValidListener:Z


# direct methods
.method static synthetic access$000(Lcom/android/settings/location/LocationModeEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/location/LocationModeEnabler;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private isRestricted()Z
    .locals 8

    iget-object v5, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    const-string v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    const-string v5, "no_share_location"

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    const-string v6, "enterprise_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getLocationPolicy()Landroid/app/enterprise/LocationPolicy;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v5, "gps"

    invoke-virtual {v2, v5}, Landroid/app/enterprise/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "network"

    invoke-virtual {v2, v5}, Landroid/app/enterprise/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    const-string v5, "LocationModeEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isRestricted()   mdmRestricted= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " UserRestricted = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz p2, :cond_3

    if-nez v0, :cond_3

    const-string v1, "DCM"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/settings/location/LocationModeEnabler;->setLocationMode(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    if-nez p2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/settings/location/LocationModeEnabler;->setLocationMode(I)V

    goto :goto_1
.end method

.method public onModeChanged(IZ)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez p2, :cond_3

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mValidListener:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-boolean v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mValidListener:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    const-string v1, "LocationModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onModeChanged : mSwitch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public setLocationMode(I)V
    .locals 4

    invoke-direct {p0}, Lcom/android/settings/location/LocationModeEnabler;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "LocationModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRestricted() = true, mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "LocationModeEnabler"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LocationModeEnabler"

    const-string v2, "Restricted user, not setting location mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-boolean v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mActive:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/location/LocationModeEnabler;->onModeChanged(IZ)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.location.MODE_CHANGING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "CURRENT_MODE"

    iget v2, p0, Lcom/android/settings/location/LocationModeEnabler;->mCurrentMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "NEW_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/settings/location/LocationModeEnabler;->updateVerizonProvider(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/location/LocationModeEnabler;->refreshLocationMode()V

    goto :goto_0
.end method
