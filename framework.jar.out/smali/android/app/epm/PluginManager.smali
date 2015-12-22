.class public final Landroid/app/epm/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/epm/PluginManager$IStatusListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEBUG_ELASTIC:Z = true

.field private static TAG:Ljava/lang/String;

.field private static mInstance:Landroid/app/epm/PluginManager;

.field private static sService:Lcom/samsung/android/thememanager/IThemeManager;


# instance fields
.field private mCallback:Landroid/app/epm/IPluginManagerCallback;

.field private mClientCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/epm/PluginManager$IStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mComponentPackageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private pluginDetails:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "PluginManager"

    sput-object v0, Landroid/app/epm/PluginManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/app/epm/PluginManager;->mContext:Landroid/content/Context;

    iput-object v1, p0, Landroid/app/epm/PluginManager;->pluginDetails:Ljava/util/HashMap;

    new-instance v1, Landroid/app/epm/PluginManager$1;

    invoke-direct {v1, p0}, Landroid/app/epm/PluginManager$1;-><init>(Landroid/app/epm/PluginManager;)V

    iput-object v1, p0, Landroid/app/epm/PluginManager;->mConnection:Landroid/content/ServiceConnection;

    new-instance v1, Landroid/app/epm/PluginManager$2;

    invoke-direct {v1, p0}, Landroid/app/epm/PluginManager$2;-><init>(Landroid/app/epm/PluginManager;)V

    iput-object v1, p0, Landroid/app/epm/PluginManager;->mCallback:Landroid/app/epm/IPluginManagerCallback;

    iput-object p1, p0, Landroid/app/epm/PluginManager;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/app/epm/PluginManager;->TAG:Ljava/lang/String;

    const-string v2, "PluginManager Constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.themecenter"

    const-string v3, "com.samsung.android.thememanager.ThemeManagerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Landroid/app/epm/PluginManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/epm/PluginManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/thememanager/IThemeManager;)Lcom/samsung/android/thememanager/IThemeManager;
    .locals 0

    sput-object p0, Landroid/app/epm/PluginManager;->sService:Lcom/samsung/android/thememanager/IThemeManager;

    return-object p0
.end method

.method static synthetic access$100(Landroid/app/epm/PluginManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/app/epm/PluginManager;->mClientCallback:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/app/epm/PluginManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getActiveAppliedPackage()Ljava/lang/String;
    .locals 5

    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v3

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    :try_start_0
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/thememanager/IThemeManager;->getActiveComponents()[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v1, v0, v3

    if-eqz v1, :cond_0

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/app/epm/PluginManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Landroid/app/epm/PluginManager;->mInstance:Landroid/app/epm/PluginManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/epm/PluginManager;

    invoke-direct {v0, p0}, Landroid/app/epm/PluginManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/app/epm/PluginManager;->mInstance:Landroid/app/epm/PluginManager;

    :cond_0
    sget-object v0, Landroid/app/epm/PluginManager;->mInstance:Landroid/app/epm/PluginManager;

    return-object v0
.end method

.method private getLanguagePackList(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method private getPluginDetailsList(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static getService()Lcom/samsung/android/thememanager/IThemeManager;
    .locals 3

    sget-object v0, Landroid/app/epm/PluginManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getService -- sService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/app/epm/PluginManager;->sService:Lcom/samsung/android/thememanager/IThemeManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/app/epm/PluginManager;->sService:Lcom/samsung/android/thememanager/IThemeManager;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/app/epm/PluginManager;->sService:Lcom/samsung/android/thememanager/IThemeManager;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/app/epm/PluginManager;->sService:Lcom/samsung/android/thememanager/IThemeManager;

    goto :goto_0
.end method

.method private getTitleFromPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget-object v3, p0, Landroid/app/epm/PluginManager;->mComponentPackageMap:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    sget-object v3, Landroid/app/epm/PluginManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "components = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/epm/PluginManager;->mComponentPackageMap:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/app/epm/PluginManager;->mComponentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v4, "themes"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    :goto_0
    return-object v3

    :cond_1
    const-string v3, "Default"

    goto :goto_0
.end method

.method private showThemeProgress(Ljava/lang/String;ZI)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.themecenter"

    const-string v3, "com.samsung.android.thememanager.ShowDialogService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "PACKAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "isTrial"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "why"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "TITLE"

    invoke-direct {p0, p1}, Landroid/app/epm/PluginManager;->getTitleFromPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Landroid/app/epm/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public applyThemePackage(Ljava/lang/String;Z)Z
    .locals 3

    sget-object v0, Landroid/app/epm/PluginManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PluginManager applyThemePackage -- packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    invoke-direct {p0, p1, p2, v0}, Landroid/app/epm/PluginManager;->showThemeProgress(Ljava/lang/String;ZI)V

    const/4 v0, 0x1

    return v0
.end method

.method public changeThemeState(Ljava/lang/String;IZ)Z
    .locals 3

    sget-object v0, Landroid/app/epm/PluginManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PluginManager changeThemeState -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/thememanager/IThemeManager;->changeThemeState(Ljava/lang/String;IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteThemePackage(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/thememanager/IThemeManager;->removeThemePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getActiveComponents()[Ljava/lang/String;
    .locals 3

    sget-object v0, Landroid/app/epm/PluginManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PluginManager getThemeList -- SERVICE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/thememanager/IThemeManager;->getActiveComponents()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActiveMyEvents()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/app/epm/PluginManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveMyEvents PluginManager getThemeList -- SERVICE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/thememanager/IThemeManager;->getActiveMyEvents()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCategory(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/epm/PluginManager;->pluginDetails:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCategoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/thememanager/IThemeManager;->getCategoryList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChineseFestivalList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Landroid/app/epm/PluginManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PluginManager getThemeList -- SERVICE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/thememanager/IThemeManager;->getChineseFestivalList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getComponentPackageMap()V
    .locals 4

    sget-object v1, Landroid/app/epm/PluginManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PluginManager getThemeList -- SERVICE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/thememanager/IThemeManager;->getComponentPackageMap()Ljava/util/Map;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, p0, Landroid/app/epm/PluginManager;->mComponentPackageMap:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurrentThemePackage()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/thememanager/IThemeManager;->getCurrentThemePackage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/epm/PluginManager;->pluginDetails:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v1, v2

    :cond_0
    return-object v0
.end method

.method public getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/app/epm/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getListByCategory(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/thememanager/IThemeManager;->getListByCategory(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPluginPackageList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/app/epm/PluginManager;->getPluginDetailsList(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/epm/PluginManager;->pluginDetails:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getStateThemePackage(Ljava/lang/String;)I
    .locals 3

    const/4 v1, -0x1

    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/samsung/android/thememanager/IThemeManager;->getStateThemePackage(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getStatus(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/epm/PluginManager;->pluginDetails:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getThemesForComponent(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/app/epm/PluginManager;->mComponentPackageMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/epm/PluginManager;->mComponentPackageMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/epm/PluginManager;->mComponentPackageMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :cond_0
    return-object v0
.end method

.method public getTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/epm/PluginManager;->pluginDetails:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v1, v2

    :cond_0
    return-object v0
.end method

.method public getVersionForMaster(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/app/epm/PluginManager;->mComponentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v4, "themes"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/app/epm/PluginManager;->mComponentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v4, "themes"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v2, v3, v4

    :cond_1
    return-object v2
.end method

.method public getVersionForThemeFramework()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0.0"

    return-object v0
.end method

.method public installThemePackage(Landroid/net/Uri;Z)V
    .locals 1

    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/thememanager/IThemeManager;->installThemePackage(Landroid/net/Uri;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isOnTrialMode(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/thememanager/IThemeManager;->isOnTrialMode(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeThemePackage(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x66

    invoke-direct {p0, p1, v0, v1}, Landroid/app/epm/PluginManager;->showThemeProgress(Ljava/lang/String;ZI)V

    return-void
.end method

.method public setDeleteMyEvents(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/thememanager/IThemeManager;->setDeleteMyEvents(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setStateThemePackage(Ljava/lang/String;I)I
    .locals 3

    const/4 v1, -0x1

    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/thememanager/IThemeManager;->setStateThemePackage(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setStatusListener(Landroid/app/epm/PluginManager$IStatusListener;)V
    .locals 3

    iget-object v0, p0, Landroid/app/epm/PluginManager;->mClientCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/epm/PluginManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PluginManager setStatusListener -- callback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setTimeForMyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/epm/PluginManager;->getService()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/thememanager/IThemeManager;->setTimeForMyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopTrialThemePackage()Z
    .locals 2

    sget-object v0, Landroid/app/epm/PluginManager;->TAG:Ljava/lang/String;

    const-string v1, "PluginManager stopTrialThemePackage --"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/app/epm/PluginManager;->getActiveAppliedPackage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/epm/PluginManager;->applyThemePackage(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
