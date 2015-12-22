.class public Lcom/android/services/utils/SSInfoManager;
.super Ljava/lang/Object;
.source "SSInfoManager.java"


# static fields
.field private static mInstance:Lcom/android/services/utils/SSInfoManager;


# instance fields
.field private mSSInfoService:Lcom/android/phone/SSInfoService;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SSInfoManager"

    const-string v1, "create..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getInstance()Lcom/android/services/utils/SSInfoManager;
    .locals 1

    sget-object v0, Lcom/android/services/utils/SSInfoManager;->mInstance:Lcom/android/services/utils/SSInfoManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/services/utils/SSInfoManager;

    invoke-direct {v0}, Lcom/android/services/utils/SSInfoManager;-><init>()V

    sput-object v0, Lcom/android/services/utils/SSInfoManager;->mInstance:Lcom/android/services/utils/SSInfoManager;

    :cond_0
    sget-object v0, Lcom/android/services/utils/SSInfoManager;->mInstance:Lcom/android/services/utils/SSInfoManager;

    return-object v0
.end method


# virtual methods
.method public onSSInfo(I)V
    .locals 3
    .param p1    # I

    const-string v0, "SSInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSSInfo : code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/services/utils/SSInfoManager;->mSSInfoService:Lcom/android/phone/SSInfoService;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/services/utils/SSInfoManager;->mSSInfoService:Lcom/android/phone/SSInfoService;

    invoke-virtual {v0, p1}, Lcom/android/phone/SSInfoService;->onSSInfo(I)V

    goto :goto_0
.end method

.method public setSSInfoService(Lcom/android/phone/SSInfoService;)V
    .locals 2
    .param p1    # Lcom/android/phone/SSInfoService;

    iput-object p1, p0, Lcom/android/services/utils/SSInfoManager;->mSSInfoService:Lcom/android/phone/SSInfoService;

    const-string v0, "SSInfoManager"

    const-string v1, "setSSInfoService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
