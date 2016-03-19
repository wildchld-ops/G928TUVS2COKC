.class public Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "DbUpdateSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$catDBListChangeCallback;
    }
.end annotation


# static fields
.field private static final CHECK_UPDATABLE_DBTYPE_COUNT:I = 0x2

.field private static final DEBUG:Z = true

.field private static final DIALOG_NO_NETWORK:I = 0x0

.field private static final DIALOG_REACHED_MAX:I = 0x1

.field private static final DIALOG_UPDATE_NOTIFICATION_ATTENTION:I = 0x2

.field private static final MENU_ID_DELETE:I = 0x1

.field private static final MENU_ID_UPDATE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DbUpdateFragment"


# instance fields
.field private bScanDBWhenStart:Z

.field private mAlertDialg:Landroid/app/AlertDialog;

.field private mAvailableDbs:Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;

.field private mCDBMgr:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;

.field private mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

.field private mCatDBListCallBack:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$catDBListChangeCallback;

.field private mCheckUpdatableCnt:I

.field private mDbSettings:Lcom/ime/framework/dbmanager/DbSettings;

.field private mDownloadedDbs:Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mSogouHotwordPrefrence:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

.field private mWLanOnlyPref:Landroid/preference/SwitchPreference;

.field private mXT9ChnHotwordPrefrence:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

.field private mXT9HKHotwordPrefrence:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

.field private mXT9TWHotwordPrefrence:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mAlertDialg:Landroid/app/AlertDialog;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->bScanDBWhenStart:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mCheckUpdatableCnt:I

    return-void
.end method

.method static synthetic access$000(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;)I
    .locals 1

    iget v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mCheckUpdatableCnt:I

    return v0
.end method

.method static synthetic access$008(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;)I
    .locals 2

    iget v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mCheckUpdatableCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mCheckUpdatableCnt:I

    return v0
.end method

.method static synthetic access$100(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;)Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mDownloadedDbs:Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->createAvailableDBGroup()V

    return-void
.end method

.method static synthetic access$200(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;)Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mAvailableDbs:Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->getDBFactor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->updateAvailableDBGroup()V

    return-void
.end method

.method static synthetic access$500(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->removeDownloadPrefrence(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;)Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    return-object v0
.end method

.method static synthetic access$700(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->setUpdateStatusByDownloadList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->updateScreenByNetworkStatus(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->showChinaModeTOSDialog()V

    return-void
.end method

.method private addDownloadedPrefreces(I)V
    .locals 11

    invoke-virtual {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->getInstance(Landroid/content/Context;)Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->getDownloadDBList(I)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;

    invoke-virtual {v1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBKey()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mDownloadedDbs:Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;

    new-instance v7, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    invoke-virtual {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-instance v9, Lcom/ime/framework/dbmanager/DbUpdateItem;

    invoke-direct {v9, v0, v2}, Lcom/ime/framework/dbmanager/DbUpdateItem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-byte v10, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->PREFRENCE_DOWNLOAD_STYLE:B

    invoke-direct {v7, v8, v9, v10}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;-><init>(Landroid/content/Context;Lcom/ime/framework/dbmanager/DbUpdateItem;B)V

    invoke-virtual {v6, v7}, Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createAvailableDBGroup()V
    .locals 8

    iget-object v6, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    invoke-virtual {v6}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->getAvailableDictList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->sortAvailableList(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-static {v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->isHotwowrdCDB(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getLanguage()I

    move-result v6

    const/16 v7, 0xe1

    if-ne v6, v7, :cond_0

    invoke-direct {p0, v1}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->createAvailableDBPref(Ljava/lang/String;)Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mAvailableDbs:Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;

    invoke-virtual {v6, v5}, Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createAvailableDBPref(Ljava/lang/String;)Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;
    .locals 6

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    new-instance v4, Lcom/ime/framework/dbmanager/DbUpdateItem;

    invoke-direct {v4, v1, p1}, Lcom/ime/framework/dbmanager/DbUpdateItem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-byte v5, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->PREFRENCE_AVAILABLE_STYLE:B

    invoke-direct {v2, v0, v4, v5}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;-><init>(Landroid/content/Context;Lcom/ime/framework/dbmanager/DbUpdateItem;B)V

    new-instance v4, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$2;

    invoke-direct {v4, p0, v2, v0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$2;-><init>(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;Landroid/app/Activity;)V

    invoke-virtual {v2, v4}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->setDbOperationCallBack(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$dbOperationCB;)V

    move-object v3, v2

    :cond_0
    return-object v3
.end method

.method private createDownloadDBGroup()V
    .locals 5

    invoke-virtual {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isXT9DBUpdateSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    invoke-virtual {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/ime/framework/dbmanager/DbUpdateItem;

    const-string v4, "225-hotwords-HotwordsCN"

    invoke-direct {v3, v0, v4}, Lcom/ime/framework/dbmanager/DbUpdateItem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-byte v4, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->PREFRENCE_DOWNLOAD_STYLE:B

    invoke-direct {v1, v2, v3, v4}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;-><init>(Landroid/content/Context;Lcom/ime/framework/dbmanager/DbUpdateItem;B)V

    iput-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mXT9ChnHotwordPrefrence:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mDownloadedDbs:Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mXT9ChnHotwordPrefrence:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    invoke-virtual {v1, v2}, Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    new-instance v1, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    invoke-virtual {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/ime/framework/dbmanager/DbUpdateItem;

    const-string v4, "225-hotwords-SogouCN"

    invoke-direct {v3, v0, v4}, Lcom/ime/framework/dbmanager/DbUpdateItem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-byte v4, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->PREFRENCE_DOWNLOAD_STYLE:B

    invoke-direct {v1, v2, v3, v4}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;-><init>(Landroid/content/Context;Lcom/ime/framework/dbmanager/DbUpdateItem;B)V

    iput-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mSogouHotwordPrefrence:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isXT9DBUpdateSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mSogouHotwordPrefrence:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    new-instance v2, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$1;

    invoke-direct {v2, p0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$1;-><init>(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;)V

    invoke-virtual {v1, v2}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->setDbOperationCallBack(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$dbOperationCB;)V

    :cond_1
    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mDownloadedDbs:Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mSogouHotwordPrefrence:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    invoke-virtual {v1, v2}, Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;->addPreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isXT9DBUpdateSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xe1

    invoke-direct {p0, v1}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->addDownloadedPrefreces(I)V

    :cond_2
    return-void
.end method

.method private destroyPrefrenceGroup(Landroid/preference/PreferenceGroup;)V
    .locals 4

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    instance-of v3, v1, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    if-eqz v3, :cond_0

    check-cast v1, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    invoke-virtual {v1}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->onDestroyView()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getDBFactor(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/ime/framework/dbmanager/DbID;->isXT9POI(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/ime/framework/dbmanager/DbID;->isXT9Dialect(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/ime/framework/dbmanager/DbID;->isXT9SportsEntertainment(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private removeDownloadPrefrence(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mDownloadedDbs:Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;

    invoke-virtual {v1, p1}, Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mDownloadedDbs:Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;

    invoke-virtual {v1, v0}, Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private scanDBPrefrence()V
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mDownloadedDbs:Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;

    invoke-virtual {v4}, Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v4, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mDownloadedDbs:Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;

    invoke-virtual {v4, v2}, Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    invoke-virtual {v3}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->isUpdatable()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mDownloadedDbs:Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;

    invoke-virtual {v4, v5}, Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;->setScanning(Z)V

    :cond_1
    const/4 v4, 0x0

    iput v4, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mCheckUpdatableCnt:I

    iget-object v4, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mSogouHotwordPrefrence:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    invoke-virtual {v4}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->isUpdatable()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mSogouHotwordPrefrence:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    invoke-virtual {v4}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->checkItemUpdatable()V

    :goto_1
    iget-object v4, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mAvailableDbs:Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;

    invoke-virtual {v4, v5}, Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;->setScanning(Z)V

    iget-object v4, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    invoke-virtual {v4}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->updateDBList()V

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iput v5, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mCheckUpdatableCnt:I

    goto :goto_1
.end method

.method private setUpdateStatusByDownloadList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mDownloadedDbs:Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;

    invoke-virtual {v2}, Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mDownloadedDbs:Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;

    invoke-virtual {v2, v1}, Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mSogouHotwordPrefrence:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->updateButtonStatus()Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method private showAlertDialog(I)V
    .locals 14

    invoke-virtual {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v12, 0x7f0d0336

    invoke-virtual {v3, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v12, 0x104000a

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const v12, 0x7f0d037d

    invoke-virtual {v3, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v12, 0x7f0d037c

    invoke-virtual {v3, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v12, 0x7f0d037f

    new-instance v13, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$5;

    invoke-direct {v13, p0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$5;-><init>(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;)V

    invoke-virtual {v1, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v12, 0x1040000

    new-instance v13, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$6;

    invoke-direct {v13, p0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$6;-><init>(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;)V

    invoke-virtual {v1, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_1
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    iput-object v12, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mAlertDialg:Landroid/app/AlertDialog;

    iget-object v12, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mAlertDialg:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :pswitch_1
    const v12, 0x7f0d0371

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v12, 0x104000a

    new-instance v13, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$7;

    invoke-direct {v13, p0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$7;-><init>(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;)V

    invoke-virtual {v1, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->getInstance()Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    move-result-object v0

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v12, 0x7f030061

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v12, 0x7f100033

    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v12, 0x7f100034

    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const v12, 0x7f0d0387

    invoke-virtual {p0, v12}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const v12, 0x7f0d0388

    invoke-virtual {p0, v12}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v12, 0x7f0d0389

    invoke-virtual {p0, v12}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Landroid/text/SpannableString;

    invoke-direct {v10, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v11, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget-object v12, v12, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v12}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    const-string v12, "CN"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v11, 0x68

    const/16 v5, 0x6d

    :goto_2
    new-instance v12, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$1TouchableSpan;

    invoke-direct {v12, p0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$1TouchableSpan;-><init>(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;)V

    const/16 v13, 0x21

    invoke-virtual {v10, v12, v11, v5, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v12, 0x7f0d038a

    invoke-virtual {p0, v12}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/high16 v12, 0x1040000

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v12, 0x7f0d038c

    new-instance v13, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$8;

    invoke-direct {v13, p0, v0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$8;-><init>(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;Lcom/ime/framework/acmanager/ACChineseDictionaryManager;)V

    invoke-virtual {v1, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    :cond_0
    const-string v12, "HK"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v11, 0x62

    const/16 v5, 0x67

    goto :goto_2

    :cond_1
    const-string v12, "TW"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/16 v11, 0x69

    const/16 v5, 0x6e

    goto :goto_2

    :cond_2
    const-string v12, "KR"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/16 v11, 0x93

    const/16 v5, 0x97

    goto :goto_2

    :cond_3
    const-string v12, "GB"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/16 v11, 0xf3

    const/16 v5, 0x107

    goto :goto_2

    :cond_4
    const/16 v11, 0xfd

    const/16 v5, 0x111

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showChinaModeTOSDialog()V
    .locals 5

    invoke-virtual {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;->getInstance()Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;

    move-result-object v2

    new-instance v3, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$4;

    invoke-direct {v3, p0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$4;-><init>(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;->getTosDialog(Landroid/content/Context;Lcom/ime/framework/dbmanager/DbUpdateXt9Tos$tosClickInterface;Z)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private sortAvailableList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$3;

    invoke-direct {v1, p0, v0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$3;-><init>(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;I)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private startRefresh(Z)V
    .locals 3

    invoke-static {}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->getInstance()Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->hasInit()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->isTosAccept()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->showAlertDialog(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    invoke-virtual {v2}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->initDownloadService()V

    :cond_3
    invoke-direct {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->createAvailableDBGroup()V

    invoke-static {}, Lcom/ime/framework/acmanager/ACDownloadManager;->newInstance()Lcom/ime/framework/acmanager/ACDownloadManager;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/ime/framework/acmanager/ACDownloadManager;->runLivingKoreanLanguage()V

    invoke-virtual {v0}, Lcom/ime/framework/acmanager/ACDownloadManager;->runLivingAlphaLanguage()V

    :cond_4
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->updateScreenByNetworkStatus(Z)V

    invoke-direct {p0, p1}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->updateScreenByNetworkStatus(Z)V

    goto :goto_0
.end method

.method private updateAvailableDBGroup()V
    .locals 7

    iget-object v5, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    invoke-virtual {v5}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->getAvailableDictList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mAvailableDbs:Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;

    invoke-virtual {v5}, Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;->removeAll()V

    invoke-direct {p0, v0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->sortAvailableList(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->isHotwowrdCDB(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getLanguage()I

    move-result v5

    const/16 v6, 0xe1

    if-ne v5, v6, :cond_0

    invoke-direct {p0, v1}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->createAvailableDBPref(Ljava/lang/String;)Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mAvailableDbs:Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;

    invoke-virtual {v5, v4}, Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateScreenByNetworkStatus(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isMobileNetWorkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->scanDBPrefrence()V

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isWLANConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->scanDBPrefrence()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->showAlertDialog(I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "DbUpdateFragment"

    const-string v1, "onActivityCreated called.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f050007

    invoke-virtual {p0, v2}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual {p0, v3}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lcom/ime/framework/dbmanager/DbSettings;

    invoke-direct {v2, v0}, Lcom/ime/framework/dbmanager/DbSettings;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mDbSettings:Lcom/ime/framework/dbmanager/DbSettings;

    invoke-virtual {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->clearActivePrefrecens()V

    const v2, 0x7f0d0392

    invoke-virtual {p0, v2}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;

    iput-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mDownloadedDbs:Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mDownloadedDbs:Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;

    invoke-virtual {v2, v3}, Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;->setOrderingAsAdded(Z)V

    const v2, 0x7f0d0390

    invoke-virtual {p0, v2}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;

    iput-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mAvailableDbs:Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mAvailableDbs:Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;

    invoke-virtual {v2, v3}, Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;->setOrderingAsAdded(Z)V

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isXT9DBUpdateSupported()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mAvailableDbs:Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    const v2, 0x7f0d038f

    invoke-virtual {p0, v2}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mWLanOnlyPref:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mWLanOnlyPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isHKTWBinaryByCSC()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mWLanOnlyPref:Landroid/preference/SwitchPreference;

    const v3, 0x7f0d0363

    invoke-virtual {p0, v3}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mWLanOnlyPref:Landroid/preference/SwitchPreference;

    const v3, 0x7f0d0362

    invoke-virtual {p0, v3}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-direct {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->createDownloadDBGroup()V

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isXT9DBUpdateSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->getInstance(Landroid/content/Context;)Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mCDBMgr:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mCDBMgr:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;

    invoke-virtual {v2}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->getCdbUpdate()Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    invoke-direct {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->createAvailableDBGroup()V

    new-instance v2, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$catDBListChangeCallback;

    invoke-direct {v2, p0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$catDBListChangeCallback;-><init>(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;)V

    iput-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mCatDBListCallBack:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$catDBListChangeCallback;

    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isXT9DBUpdateSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->getInstance()Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->hasInit()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f0d0382

    invoke-interface {p1, v3, v3, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0202c1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v1, 0x2

    const v2, 0x7f0d036d

    invoke-interface {p1, v3, v4, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02011b

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    const-string v0, "DbUpdateFragment"

    const-string v1, "onDestroy called.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    const-string v0, "DbUpdateFragment"

    const-string v1, "onDestroyView called.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isXT9DBUpdateSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->setDBListRefreshCb(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListRefreshCallBack;)V

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mDownloadedDbs:Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;

    invoke-direct {p0, v0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->destroyPrefrenceGroup(Landroid/preference/PreferenceGroup;)V

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mAvailableDbs:Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;

    invoke-direct {p0, v0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->destroyPrefrenceGroup(Landroid/preference/PreferenceGroup;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :pswitch_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->startRefresh(Z)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const v4, 0x7f0d038f

    invoke-virtual {p0, v4}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v4, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mDbSettings:Lcom/ime/framework/dbmanager/DbSettings;

    invoke-virtual {v4, v0}, Lcom/ime/framework/dbmanager/DbSettings;->setAutoUpdateWlanOnly(Z)V

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.android.inputmethod.setting.dbmanager.WLAN_ONLY_STATUS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "wlan.only.status"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->getInstance()Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    move-result-object v0

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mSogouHotwordPrefrence:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->hasInit()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    instance-of v2, p2, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    if-eqz v2, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mCDBMgr:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;

    invoke-virtual {v1}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->isMemoryFull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->showAlertDialog(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mSogouHotwordPrefrence:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->dbUpdatePrepare()V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->isTosAccept()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->showAlertDialog(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->dbUpdatePrepare()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isXT9DBUpdateSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mCDBMgr:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;

    const/16 v4, 0xe1

    invoke-virtual {v3, v4}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->getDeletableDBList(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    const-string v0, "DbUpdateFragment"

    const-string v1, "onStart called.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mWLanOnlyPref:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mDbSettings:Lcom/ime/framework/dbmanager/DbSettings;

    invoke-virtual {v1}, Lcom/ime/framework/dbmanager/DbSettings;->getAutoUpdateWlanOnly()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isXT9DBUpdateSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mCatDBListCallBack:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$catDBListChangeCallback;

    invoke-virtual {v0, v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->setDBListRefreshCb(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListRefreshCallBack;)V

    iget-boolean v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->bScanDBWhenStart:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->hasDownloadingDB()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v2}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->startRefresh(Z)V

    :cond_0
    iput-boolean v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->bScanDBWhenStart:Z

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    const-string v0, "DbUpdateFragment"

    const-string v1, "onStop called.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
