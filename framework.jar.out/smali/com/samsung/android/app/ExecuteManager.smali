.class public Lcom/samsung/android/app/ExecuteManager;
.super Ljava/lang/Object;
.source "ExecuteManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExecuteManager"

.field private static mService:Lcom/samsung/android/app/IExecuteManager;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/ExecuteManager;->mContext:Landroid/content/Context;

    const-string v0, "execute"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/IExecuteManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/IExecuteManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/ExecuteManager;->mService:Lcom/samsung/android/app/IExecuteManager;

    return-void
.end method


# virtual methods
.method public getExecutableInfo(Ljava/lang/String;)Lcom/samsung/android/app/ExecutableInfo;
    .locals 4

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/ExecuteManager;->mService:Lcom/samsung/android/app/IExecuteManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/IExecuteManager;->getExecutableInfo(Ljava/lang/String;)Lcom/samsung/android/app/ExecutableInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "ExecuteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExecutableInfo() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getExecutableInfos()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/ExecutableInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/ExecuteManager;->mService:Lcom/samsung/android/app/IExecuteManager;

    invoke-interface {v1}, Lcom/samsung/android/app/IExecuteManager;->getExecutableInfos()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "ExecuteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExecutableInfo() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method
