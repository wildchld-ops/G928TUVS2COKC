.class Lcom/android/server/LockSettingsService$SdpHandler$1;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LockSettingsService$SdpHandler;->changePwd(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/LockSettingsService$SdpHandler;

.field final synthetic val$newPassword:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsService$SdpHandler;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/LockSettingsService$SdpHandler$1;->this$1:Lcom/android/server/LockSettingsService$SdpHandler;

    iput p2, p0, Lcom/android/server/LockSettingsService$SdpHandler$1;->val$userId:I

    iput-object p3, p0, Lcom/android/server/LockSettingsService$SdpHandler$1;->val$newPassword:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>>>>> SDP_USER_0 propogatePasswordToSdp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/LockSettingsService$SdpHandler$1;->val$userId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/LockSettingsService$SdpHandler$1;->this$1:Lcom/android/server/LockSettingsService$SdpHandler;

    iget-object v4, v4, Lcom/android/server/LockSettingsService$SdpHandler;->this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/server/LockSettingsService;->access$300(Lcom/android/server/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/LockSettingsService$SdpHandler$1;->val$newPassword:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/server/LockSettingsService$SdpHandler$1;->val$userId:I

    invoke-static {v4}, Lcom/sec/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v4

    if-nez v4, :cond_0

    const v4, 0x61000

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/sec/sdp/SdpUtil;->getInstance()Lcom/sec/sdp/SdpUtil;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/sdp/SdpUtil;->getEngineInfo(Ljava/lang/String;)Lcom/sec/sdp/engine/SdpEngineInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/sdp/engine/SdpEngine;->getInstance()Lcom/sec/sdp/engine/SdpEngine;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/LockSettingsService$SdpHandler$1;->val$newPassword:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lcom/sec/sdp/engine/SdpEngine;->setPassword(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SDP_USER_0 propogatePasswordToSdp success "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/LockSettingsService$SdpHandler$1;->val$userId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/sec/sdp/exception/SdpAccessDeniedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SDP_USER_0 propogatePasswordToSdp failed!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/LockSettingsService$SdpHandler$1;->val$userId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/sec/sdp/exception/SdpAccessDeniedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SDP_USER_0 propogatePasswordToSdp failed!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/LockSettingsService$SdpHandler$1;->val$userId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
