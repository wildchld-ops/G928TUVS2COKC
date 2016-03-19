.class public Lcom/ime/framework/dbmanager/DbSettings;
.super Ljava/lang/Object;
.source "DbSettings.java"


# static fields
.field private static final ANDPY_CONFS_DATA_NOTICE_CHECK_KEY:Ljava/lang/String; = "dbupdate_usedatanoticecheckStatus"

.field private static final ANDPY_CONFS_DBLISTUPDATE_NETWORKALERT_KEY:Ljava/lang/String; = "samsungime_dblistupdateworkalert"

.field private static final ANDPY_CONFS_DBLISTUPDATE_WLANALERT_KEY:Ljava/lang/String; = "samsungime_dblistupdateshowwlanalert"

.field private static final ANDPY_CONFS_DBUPDATE_NETWORKALERT_KEY:Ljava/lang/String; = "samsungime_dbupdateshownetworkalert"

.field private static final ANDPY_CONFS_DBUPDATE_WLANALERT_KEY:Ljava/lang/String; = "samsungime_dbupdateshowwlanalert"

.field private static final ANDPY_CONFS_UPDATE_WLAN_ONLY_KEY:Ljava/lang/String; = "samsungupdate_wlanonly"

.field private static final ANDPY_CONFS_WLAN_NOTICE_CHECK_KEY:Ljava/lang/String; = "dbupdate_usewlannoticecheckStatus"

.field public static final DB_AUTO_UPDATE_COUNT:I = 0x4

.field public static final DB_AUTO_UPDATE_INIT_VALUE:I = 0x0

.field public static final DB_AUTO_UPDATE_MAX_INDEX:I = 0x4

.field public static final DB_AUTO_UPDATE_OFF:I = 0x0

.field public static final DB_AUTO_UPDATE_ONE_MONTH:I = 0x3

.field public static final DB_AUTO_UPDATE_ONE_WEEK:I = 0x1

.field public static final DB_AUTO_UPDATE_TWO_WEEK:I = 0x2

.field public static final DB_UPDATE_SETTING:Ljava/lang/String; = "DbSettings"

.field private static final PREFER_CONFS_ACSDK_INIT_KEY:Ljava/lang/String; = "samsungupdate_acsdk_init"

.field private static final PREFER_CONFS_HOTWORD_SOGOU_UPDATE_DATE:Ljava/lang/String; = "hotword_sogou_updatedate"

.field private static final PREFER_CONFS_HOTWORD_SOGOU_VERSION:Ljava/lang/String; = "hotword_sogou_version"

.field private static final PREFER_CONFS_UPDATEFREQUENCY_KEY:Ljava/lang/String; = "samsungupdate_frequency_info"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSharedPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/dbmanager/DbSettings;->mSharedPref:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/ime/framework/dbmanager/DbSettings;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/ime/framework/dbmanager/DbSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbSettings;->mContext:Landroid/content/Context;

    const-string v1, "DbSettings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/dbmanager/DbSettings;->mSharedPref:Landroid/content/SharedPreferences;

    return-void
.end method

.method private getUpdatableKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_updatable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getUpdateDateKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/ime/framework/dbmanager/DbID;->isSogouHotword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "hotword_sogou_updatedate"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_updateData"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getVersionKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/ime/framework/dbmanager/DbID;->isSogouHotword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "hotword_sogou_version"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/ime/framework/dbmanager/DbSettings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    :cond_0
    return v0

    :cond_1
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_2
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_3

    check-cast p2, Ljava/lang/String;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getACSDKInit()Z
    .locals 3

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "samsungupdate_acsdk_init"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getAutoUpdateFrequencyMode()I
    .locals 3

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "samsungupdate_frequency_info"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAutoUpdateWlanOnly()Z
    .locals 3

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "samsungupdate_wlanonly"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDbUpdateDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p1}, Lcom/ime/framework/dbmanager/DbSettings;->getUpdateDateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/framework/dbmanager/DbSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDbUpdateNetworkAlert()Z
    .locals 3

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "samsungime_dbupdateshownetworkalert"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDbUpdateWLANAlert()Z
    .locals 3

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "samsungime_dbupdateshowwlanalert"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDbVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p1}, Lcom/ime/framework/dbmanager/DbSettings;->getVersionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/framework/dbmanager/DbSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getShowCdbListWLANAlert()Z
    .locals 3

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "samsungime_dblistupdateshowwlanalert"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getShowCdbNetworkAlert()Z
    .locals 3

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "samsungime_dblistupdateworkalert"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getUpdatable(Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/ime/framework/dbmanager/DbSettings;->getUpdatableKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/framework/dbmanager/DbSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getUseDataCheckStatus()Z
    .locals 3

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "dbupdate_usedatanoticecheckStatus"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getUseWLANCheckStatus()Z
    .locals 3

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "dbupdate_usewlannoticecheckStatus"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public resetSetting()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "samsungupdate_frequency_info"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ime/framework/dbmanager/DbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "samsungupdate_wlanonly"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ime/framework/dbmanager/DbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "samsungime_dblistupdateworkalert"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ime/framework/dbmanager/DbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "samsungime_dblistupdateshowwlanalert"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ime/framework/dbmanager/DbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "samsungime_dbupdateshownetworkalert"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ime/framework/dbmanager/DbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "samsungime_dbupdateshowwlanalert"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ime/framework/dbmanager/DbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "dbupdate_usedatanoticecheckStatus"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ime/framework/dbmanager/DbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "dbupdate_usewlannoticecheckStatus"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ime/framework/dbmanager/DbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setACSDKInit(Z)V
    .locals 2

    const-string v0, "samsungupdate_acsdk_init"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ime/framework/dbmanager/DbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setAutoUpdateFrequencyMode(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    const-string v0, "samsungupdate_frequency_info"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ime/framework/dbmanager/DbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setAutoUpdateWlanOnly(Z)V
    .locals 2

    const-string v0, "samsungupdate_wlanonly"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ime/framework/dbmanager/DbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setDbUpdateDate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ime/framework/dbmanager/DbSettings;->getUpdateDateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/ime/framework/dbmanager/DbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setDbUpdateNetworkAlert(Z)V
    .locals 2

    const-string v0, "samsungime_dbupdateshownetworkalert"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ime/framework/dbmanager/DbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setDbUpdateWLANAlert(Z)V
    .locals 2

    const-string v0, "samsungime_dbupdateshowwlanalert"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ime/framework/dbmanager/DbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setDbVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ime/framework/dbmanager/DbSettings;->getVersionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/ime/framework/dbmanager/DbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setShowCdbListWLANAlert(Z)V
    .locals 2

    const-string v0, "samsungime_dblistupdateshowwlanalert"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ime/framework/dbmanager/DbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setShowCdbNetworkAlert(Z)V
    .locals 2

    const-string v0, "samsungime_dblistupdateworkalert"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ime/framework/dbmanager/DbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setUpdatable(Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/ime/framework/dbmanager/DbSettings;->getUpdatableKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ime/framework/dbmanager/DbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setUseDataCheckStatus(Z)V
    .locals 2

    const-string v0, "dbupdate_usedatanoticecheckStatus"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ime/framework/dbmanager/DbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setUseWLANCheckStatus(Z)V
    .locals 2

    const-string v0, "dbupdate_usewlannoticecheckStatus"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ime/framework/dbmanager/DbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method
