.class Lcom/android/server/LockSettingsService$SdpHandler$2;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LockSettingsService$SdpHandler;->unlock(Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/LockSettingsService$SdpHandler;

.field final synthetic val$isFMMPLockEnabled:Z

.field final synthetic val$password2:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsService$SdpHandler;IZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/LockSettingsService$SdpHandler$2;->this$1:Lcom/android/server/LockSettingsService$SdpHandler;

    iput p2, p0, Lcom/android/server/LockSettingsService$SdpHandler$2;->val$userId:I

    iput-boolean p3, p0, Lcom/android/server/LockSettingsService$SdpHandler$2;->val$isFMMPLockEnabled:Z

    iput-object p4, p0, Lcom/android/server/LockSettingsService$SdpHandler$2;->val$password2:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/LockSettingsService$SdpHandler$2;->this$1:Lcom/android/server/LockSettingsService$SdpHandler;

    iget-object v5, v5, Lcom/android/server/LockSettingsService$SdpHandler;->this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v5}, Lcom/android/server/LockSettingsService;->access$300(Lcom/android/server/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    const-string v5, "LockSettingsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>>>> SDP_USER_0 unlockSdp "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/LockSettingsService$SdpHandler$2;->val$userId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isFMMPLockEnabled "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/LockSettingsService$SdpHandler$2;->val$isFMMPLockEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/android/server/LockSettingsService$SdpHandler$2;->val$userId:I

    invoke-static {v5}, Lcom/sec/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v5

    if-nez v5, :cond_0

    const v5, 0x61000

    if-ne v3, v5, :cond_2

    :cond_0
    iget-object v5, p0, Lcom/android/server/LockSettingsService$SdpHandler$2;->val$password2:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/LockSettingsService$SdpHandler$2;->val$password2:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->clear()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/sec/sdp/SdpUtil;->getInstance()Lcom/sec/sdp/SdpUtil;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sec/sdp/SdpUtil;->getEngineInfo(Ljava/lang/String;)Lcom/sec/sdp/engine/SdpEngineInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-boolean v5, p0, Lcom/android/server/LockSettingsService$SdpHandler$2;->val$isFMMPLockEnabled:Z

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/sec/sdp/engine/SdpEngine;->getInstance()Lcom/sec/sdp/engine/SdpEngine;

    move-result-object v5

    const-string v6, "_nullPassword012"

    invoke-virtual {v5, v0, v6}, Lcom/sec/sdp/engine/SdpEngine;->unlock(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v4, 0x1

    const-string v5, "LockSettingsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SDP_USER_0 unlockSdp success. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/LockSettingsService$SdpHandler$2;->val$userId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/sec/sdp/exception/SdpAccessDeniedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-nez v4, :cond_1

    iget-object v5, p0, Lcom/android/server/LockSettingsService$SdpHandler$2;->val$password2:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/LockSettingsService$SdpHandler$2;->val$password2:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->clear()V

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-static {}, Lcom/sec/sdp/engine/SdpEngine;->getInstance()Lcom/sec/sdp/engine/SdpEngine;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/LockSettingsService$SdpHandler$2;->val$password2:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Lcom/sec/sdp/engine/SdpEngine;->unlock(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sec/sdp/exception/SdpAccessDeniedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v5, "LockSettingsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SDP_USER_0 unlockSdp failed!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/LockSettingsService$SdpHandler$2;->val$userId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/sec/sdp/exception/SdpAccessDeniedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_1

    iget-object v5, p0, Lcom/android/server/LockSettingsService$SdpHandler$2;->val$password2:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/LockSettingsService$SdpHandler$2;->val$password2:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->clear()V

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_3
    const-string v5, "LockSettingsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SDP_USER_0 unlockSdp failed!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/LockSettingsService$SdpHandler$2;->val$userId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_1

    iget-object v5, p0, Lcom/android/server/LockSettingsService$SdpHandler$2;->val$password2:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/LockSettingsService$SdpHandler$2;->val$password2:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->clear()V

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    if-nez v4, :cond_5

    iget-object v6, p0, Lcom/android/server/LockSettingsService$SdpHandler$2;->val$password2:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/LockSettingsService$SdpHandler$2;->val$password2:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->clear()V

    :cond_5
    throw v5
.end method
