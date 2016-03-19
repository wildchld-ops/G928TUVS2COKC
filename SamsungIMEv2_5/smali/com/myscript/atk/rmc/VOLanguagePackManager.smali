.class public Lcom/myscript/atk/rmc/VOLanguagePackManager;
.super Ljava/lang/Object;
.source "VOLanguagePackManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/myscript/atk/rmc/VOLanguagePackManager;


# instance fields
.field private languagelistlistener:Lcom/touchtype_fluency/util/RefreshListener;

.field private mAvailableListUpdate:Z

.field public mContext:Landroid/content/Context;

.field private mDownloadingListUpdate:Z

.field private mInstalledListUpdate:Z

.field private mIsRegisterReceiver:Z

.field private mLanguagePacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/myscript/atk/rmc/VOLanguagePack;",
            ">;"
        }
    .end annotation
.end field

.field public mOnDelete:Lcom/myscript/atk/rmc/receiver/RMDeleteReceiver;

.field public mOnProgress:Lcom/myscript/atk/rmc/receiver/RMProgressReceiver;

.field public mOnUpdate:Lcom/myscript/atk/rmc/receiver/RMUpdateReceiver;

.field public rmHelper:Lcom/myscript/atk/rmc/RMHelper;

.field public rmLauncher:Lcom/myscript/atk/rmc/RMLauncher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/myscript/atk/rmc/VOLanguagePackManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/myscript/atk/rmc/RMHelper;

    invoke-direct {v3, p1, p0}, Lcom/myscript/atk/rmc/RMHelper;-><init>(Landroid/content/Context;Lcom/myscript/atk/rmc/VOLanguagePackManager;)V

    iput-object v3, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->rmHelper:Lcom/myscript/atk/rmc/RMHelper;

    new-instance v3, Lcom/myscript/atk/rmc/RMLauncher;

    invoke-direct {v3, p1}, Lcom/myscript/atk/rmc/RMLauncher;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->rmLauncher:Lcom/myscript/atk/rmc/RMLauncher;

    invoke-static {p0}, Lcom/myscript/atk/rmc/VOLanguagePack;->setLanguagePacksManager(Lcom/myscript/atk/rmc/VOLanguagePackManager;)V

    iget-object v3, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->rmHelper:Lcom/myscript/atk/rmc/RMHelper;

    invoke-virtual {v3}, Lcom/myscript/atk/rmc/RMHelper;->getAvailableList()V

    iget-object v3, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->rmHelper:Lcom/myscript/atk/rmc/RMHelper;

    invoke-virtual {v3}, Lcom/myscript/atk/rmc/RMHelper;->getInstalledLangList()V

    iget-object v3, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->rmHelper:Lcom/myscript/atk/rmc/RMHelper;

    invoke-virtual {v3}, Lcom/myscript/atk/rmc/RMHelper;->getDownloadingLangList()V

    new-instance v1, Landroid/content/IntentFilter;

    sget-object v3, Lcom/myscript/atk/rmc/ResourceManagerIntent;->ACTION_UPDATE_LANG_RESULT:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/myscript/atk/rmc/receiver/RMUpdateReceiver;

    invoke-direct {v3, p0}, Lcom/myscript/atk/rmc/receiver/RMUpdateReceiver;-><init>(Lcom/myscript/atk/rmc/VOLanguagePackManager;)V

    iput-object v3, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mOnUpdate:Lcom/myscript/atk/rmc/receiver/RMUpdateReceiver;

    iget-object v3, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mOnUpdate:Lcom/myscript/atk/rmc/receiver/RMUpdateReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, Lcom/myscript/atk/rmc/ResourceManagerIntent;->ACTION_UPDATE_LANG_PROGRESS:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/myscript/atk/rmc/receiver/RMProgressReceiver;

    invoke-direct {v3, p0}, Lcom/myscript/atk/rmc/receiver/RMProgressReceiver;-><init>(Lcom/myscript/atk/rmc/VOLanguagePackManager;)V

    iput-object v3, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mOnProgress:Lcom/myscript/atk/rmc/receiver/RMProgressReceiver;

    iget-object v3, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mOnProgress:Lcom/myscript/atk/rmc/receiver/RMProgressReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    sget-object v3, Lcom/myscript/atk/rmc/ResourceManagerIntent;->ACTION_DELETE_LANG_RESULT:Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/myscript/atk/rmc/receiver/RMDeleteReceiver;

    invoke-direct {v3, p0}, Lcom/myscript/atk/rmc/receiver/RMDeleteReceiver;-><init>(Lcom/myscript/atk/rmc/VOLanguagePackManager;)V

    iput-object v3, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mOnDelete:Lcom/myscript/atk/rmc/receiver/RMDeleteReceiver;

    iget-object v3, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mOnDelete:Lcom/myscript/atk/rmc/receiver/RMDeleteReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mIsRegisterReceiver:Z

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/myscript/atk/rmc/VOLanguagePackManager;
    .locals 1

    sget-object v0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mInstance:Lcom/myscript/atk/rmc/VOLanguagePackManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/myscript/atk/rmc/VOLanguagePackManager;

    invoke-direct {v0, p0}, Lcom/myscript/atk/rmc/VOLanguagePackManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mInstance:Lcom/myscript/atk/rmc/VOLanguagePackManager;

    :cond_0
    sget-object v0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mInstance:Lcom/myscript/atk/rmc/VOLanguagePackManager;

    return-object v0
.end method

.method private getLanguageCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static getLanguagePackManager(Landroid/content/Context;)Lcom/myscript/atk/rmc/VOLanguagePackManager;
    .locals 1

    invoke-static {p0}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->getInstance(Landroid/content/Context;)Lcom/myscript/atk/rmc/VOLanguagePackManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearInstance()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mInstance:Lcom/myscript/atk/rmc/VOLanguagePackManager;

    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/myscript/atk/rmc/VOLanguagePack;
    .locals 3

    sget-object v0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check VOLanguagePack size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/rmc/VOLanguagePack;

    return-object v0
.end method

.method public getEnginePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->rmHelper:Lcom/myscript/atk/rmc/RMHelper;

    invoke-virtual {v0}, Lcom/myscript/atk/rmc/RMHelper;->getEnginePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResources(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->rmHelper:Lcom/myscript/atk/rmc/RMHelper;

    invoke-virtual {v0, p1, p2}, Lcom/myscript/atk/rmc/RMHelper;->getResources(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVOlangaueName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "ar"

    const-string v1, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public initRMHelper()Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mAvailableListUpdate:Z

    iget-object v0, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->rmHelper:Lcom/myscript/atk/rmc/RMHelper;

    invoke-virtual {v0}, Lcom/myscript/atk/rmc/RMHelper;->initHelper()Z

    move-result v0

    return v0
.end method

.method public registerReceiver()V
    .locals 5

    iget-object v3, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mIsRegisterReceiver:Z

    if-nez v3, :cond_0

    new-instance v1, Landroid/content/IntentFilter;

    sget-object v3, Lcom/myscript/atk/rmc/ResourceManagerIntent;->ACTION_UPDATE_LANG_RESULT:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/myscript/atk/rmc/receiver/RMUpdateReceiver;

    invoke-direct {v3, p0}, Lcom/myscript/atk/rmc/receiver/RMUpdateReceiver;-><init>(Lcom/myscript/atk/rmc/VOLanguagePackManager;)V

    iput-object v3, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mOnUpdate:Lcom/myscript/atk/rmc/receiver/RMUpdateReceiver;

    iget-object v3, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mOnUpdate:Lcom/myscript/atk/rmc/receiver/RMUpdateReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, Lcom/myscript/atk/rmc/ResourceManagerIntent;->ACTION_UPDATE_LANG_PROGRESS:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/myscript/atk/rmc/receiver/RMProgressReceiver;

    invoke-direct {v3, p0}, Lcom/myscript/atk/rmc/receiver/RMProgressReceiver;-><init>(Lcom/myscript/atk/rmc/VOLanguagePackManager;)V

    iput-object v3, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mOnProgress:Lcom/myscript/atk/rmc/receiver/RMProgressReceiver;

    iget-object v3, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mOnProgress:Lcom/myscript/atk/rmc/receiver/RMProgressReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    sget-object v3, Lcom/myscript/atk/rmc/ResourceManagerIntent;->ACTION_DELETE_LANG_RESULT:Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/myscript/atk/rmc/receiver/RMDeleteReceiver;

    invoke-direct {v3, p0}, Lcom/myscript/atk/rmc/receiver/RMDeleteReceiver;-><init>(Lcom/myscript/atk/rmc/VOLanguagePackManager;)V

    iput-object v3, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mOnDelete:Lcom/myscript/atk/rmc/receiver/RMDeleteReceiver;

    iget-object v3, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mOnDelete:Lcom/myscript/atk/rmc/receiver/RMDeleteReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mIsRegisterReceiver:Z

    :cond_0
    return-void
.end method

.method public removeLanguage(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/rmc/VOLanguagePack;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/rmc/VOLanguagePack;->setState(I)V

    invoke-virtual {v0}, Lcom/myscript/atk/rmc/VOLanguagePack;->deleteLanguage()V

    :cond_0
    return-void
.end method

.method public setProgressLanguage(Ljava/lang/String;I)V
    .locals 2

    iget-object v1, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/rmc/VOLanguagePack;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/myscript/atk/rmc/VOLanguagePack;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public unregisterReceiver()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mOnUpdate:Lcom/myscript/atk/rmc/receiver/RMUpdateReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mOnProgress:Lcom/myscript/atk/rmc/receiver/RMProgressReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mOnDelete:Lcom/myscript/atk/rmc/receiver/RMDeleteReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mIsRegisterReceiver:Z

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/myscript/atk/rmc/VOLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receiver not registered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/myscript/atk/rmc/VOLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receiver not registered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v0

    sget-object v1, Lcom/myscript/atk/rmc/VOLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receiver not registered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public updateFailure(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/rmc/VOLanguagePack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/myscript/atk/rmc/VOLanguagePack;->notifyFailed()V

    invoke-virtual {v0}, Lcom/myscript/atk/rmc/VOLanguagePack;->getPrevState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/rmc/VOLanguagePack;->setState(I)V

    :cond_0
    return-void
.end method

.method public updateSuccess(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/rmc/VOLanguagePack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/myscript/atk/rmc/VOLanguagePack;->notifySuccess()V

    :cond_0
    return-void
.end method

.method public updateVOLanguagePackManager(Lcom/touchtype_fluency/util/RefreshListener;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mAvailableListUpdate:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->rmHelper:Lcom/myscript/atk/rmc/RMHelper;

    invoke-virtual {v0}, Lcom/myscript/atk/rmc/RMHelper;->RMisReady()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->rmHelper:Lcom/myscript/atk/rmc/RMHelper;

    invoke-virtual {v0}, Lcom/myscript/atk/rmc/RMHelper;->initHelper()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iput-object p1, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->languagelistlistener:Lcom/touchtype_fluency/util/RefreshListener;

    iput-boolean v2, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mAvailableListUpdate:Z

    iput-boolean v2, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mInstalledListUpdate:Z

    iput-boolean v2, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mDownloadingListUpdate:Z

    iget-object v0, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->rmHelper:Lcom/myscript/atk/rmc/RMHelper;

    invoke-virtual {v0}, Lcom/myscript/atk/rmc/RMHelper;->getAvailableList()V

    iget-object v0, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->rmHelper:Lcom/myscript/atk/rmc/RMHelper;

    invoke-virtual {v0}, Lcom/myscript/atk/rmc/RMHelper;->getInstalledLangList()V

    iget-object v0, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->rmHelper:Lcom/myscript/atk/rmc/RMHelper;

    invoke-virtual {v0}, Lcom/myscript/atk/rmc/RMHelper;->getDownloadingLangList()V

    goto :goto_0
.end method

.method public updateVOlangugaeList(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/myscript/atk/rmc/RMLanguageModel;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/myscript/atk/rmc/RMLanguageModel;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/myscript/atk/rmc/RMLanguageModel;",
            ">;)V"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v4

    if-eqz p1, :cond_1

    iget-object v6, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/myscript/atk/rmc/VOLanguagePack;

    invoke-direct {v5, v3}, Lcom/myscript/atk/rmc/VOLanguagePack;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Lcom/myscript/atk/rmc/VOLanguagePack;->setState(I)V

    iget-object v6, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-direct {p0, v3}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->getLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-boolean v9, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mAvailableListUpdate:Z

    :cond_1
    if-eqz p2, :cond_5

    iget-object v6, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->rmHelper:Lcom/myscript/atk/rmc/RMHelper;

    invoke-virtual {v6}, Lcom/myscript/atk/rmc/RMHelper;->getEngineVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/myscript/atk/rmc/VOLanguagePack;

    invoke-direct {v5, v3}, Lcom/myscript/atk/rmc/VOLanguagePack;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/myscript/atk/rmc/RMLanguageModel;

    invoke-virtual {v6}, Lcom/myscript/atk/rmc/RMLanguageModel;->getVersion()Lcom/myscript/atk/rmc/Version;

    move-result-object v6

    invoke-virtual {v6}, Lcom/myscript/atk/rmc/Version;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/myscript/atk/rmc/VOLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SamsungIME VO Language Name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  Version : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/myscript/atk/rmc/VOLanguagePack;->setState(I)V

    :goto_2
    iget-object v6, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-direct {p0, v3}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->getLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/myscript/atk/rmc/VOLanguagePack;->setState(I)V

    goto :goto_2

    :cond_3
    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->setAvailableHWRLanguage()V

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isWaitingforHWRResource()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->initHwrPanelWithVOHWRResource()V

    :cond_4
    iput-boolean v9, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mInstalledListUpdate:Z

    :cond_5
    if-eqz p3, :cond_8

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v6, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/myscript/atk/rmc/VOLanguagePack;

    if-eqz v5, :cond_6

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/myscript/atk/rmc/VOLanguagePack;->setState(I)V

    goto :goto_3

    :cond_7
    iput-boolean v9, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mDownloadingListUpdate:Z

    :cond_8
    iget-object v6, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->languagelistlistener:Lcom/touchtype_fluency/util/RefreshListener;

    if-eqz v6, :cond_9

    iget-boolean v6, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mAvailableListUpdate:Z

    if-eqz v6, :cond_9

    iget-boolean v6, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mInstalledListUpdate:Z

    if-eqz v6, :cond_9

    iget-boolean v6, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->mDownloadingListUpdate:Z

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->languagelistlistener:Lcom/touchtype_fluency/util/RefreshListener;

    sget-object v7, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->SUCCESS:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    invoke-interface {v6, v7}, Lcom/touchtype_fluency/util/RefreshListener;->onComplete(Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;)V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/myscript/atk/rmc/VOLanguagePackManager;->languagelistlistener:Lcom/touchtype_fluency/util/RefreshListener;

    :cond_9
    return-void
.end method
