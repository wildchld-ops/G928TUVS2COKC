.class Lcom/android/server/LockSettingsService$SdpHandler;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method private constructor <init>(Lcom/android/server/LockSettingsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/LockSettingsService$SdpHandler;->this$0:Lcom/android/server/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LockSettingsService;Lcom/android/server/LockSettingsService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService$SdpHandler;-><init>(Lcom/android/server/LockSettingsService;)V

    return-void
.end method


# virtual methods
.method changePwd(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/LockSettingsService$SdpHandler$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/LockSettingsService$SdpHandler$1;-><init>(Lcom/android/server/LockSettingsService$SdpHandler;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method lock(I)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/LockSettingsService$SdpHandler$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/LockSettingsService$SdpHandler$3;-><init>(Lcom/android/server/LockSettingsService$SdpHandler;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method unlock(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/LockSettingsService$SdpHandler;->unlock(Ljava/lang/String;IZ)V

    return-void
.end method

.method unlock(Ljava/lang/String;IZ)V
    .locals 4

    iget-object v2, p0, Lcom/android/server/LockSettingsService$SdpHandler;->this$0:Lcom/android/server/LockSettingsService;

    # invokes: Lcom/android/server/LockSettingsService;->isPwdChangeRequested()Z
    invoke-static {v2}, Lcom/android/server/LockSettingsService;->access$700(Lcom/android/server/LockSettingsService;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    :goto_1
    iget-object v2, p0, Lcom/android/server/LockSettingsService$SdpHandler;->this$0:Lcom/android/server/LockSettingsService;

    # invokes: Lcom/android/server/LockSettingsService;->zeroOut([B)V
    invoke-static {v2, v0}, Lcom/android/server/LockSettingsService;->access$800(Lcom/android/server/LockSettingsService;[B)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/LockSettingsService$SdpHandler$2;

    invoke-direct {v3, p0, p2, p3, v1}, Lcom/android/server/LockSettingsService$SdpHandler$2;-><init>(Lcom/android/server/LockSettingsService$SdpHandler;IZLjava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
