.class Lcom/android/server/LockSettingsService$3;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LockSettingsService;->checkFingerprintPasswordForKeystore(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsService;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/LockSettingsService$3;->this$0:Lcom/android/server/LockSettingsService;

    iput p2, p0, Lcom/android/server/LockSettingsService$3;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v4, "LockSettingsService"

    const-string/jumbo v5, "start checkFingerprintPassword for keystore"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/LockSettingsService$3;->this$0:Lcom/android/server/LockSettingsService;

    monitor-enter v5

    :try_start_0
    const-string v4, "LockSettingsService"

    const-string/jumbo v6, "working checkFingerprintPassword for keystore"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/LockSettingsService$3;->this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/server/LockSettingsService;->access$300(Lcom/android/server/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v1, "_nullPassword012"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/LockSettingsService$3;->this$0:Lcom/android/server/LockSettingsService;

    const-string v6, "2.0"

    # invokes: Lcom/android/server/LockSettingsService;->checkKnoxSupported(Ljava/lang/String;)Z
    invoke-static {v4, v6}, Lcom/android/server/LockSettingsService;->access$400(Lcom/android/server/LockSettingsService;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/LockSettingsService$3;->this$0:Lcom/android/server/LockSettingsService;

    # invokes: Lcom/android/server/LockSettingsService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;
    invoke-static {v4}, Lcom/android/server/LockSettingsService;->access$500(Lcom/android/server/LockSettingsService;)Lcom/android/server/pm/PersonaManagerService;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v4, p0, Lcom/android/server/LockSettingsService$3;->val$userId:I

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/server/LockSettingsService$3;->val$userId:I

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v2

    iget-boolean v4, v2, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v4, :cond_6

    iget-boolean v4, v2, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/server/LockSettingsService$3;->val$userId:I

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PersonaManagerService;->getEncodedPassword(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v4, "LockSettingsService"

    const-string v6, "KNOX :: Failed to retrieve CMK"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    :goto_0
    return-void

    :cond_0
    move-object v1, v0

    :cond_1
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfSupported()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "LockSettingsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_null_checkFinger_isMdfSupported, userId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/LockSettingsService$3;->val$userId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    iget v6, p0, Lcom/android/server/LockSettingsService$3;->val$userId:I

    invoke-virtual {v4, v1, v6}, Landroid/security/KeyStore;->checkPassword(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "LockSettingsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_null_checkFinger_maybeUpdateKeystore, userId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/LockSettingsService$3;->val$userId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    iget v6, p0, Lcom/android/server/LockSettingsService$3;->val$userId:I

    invoke-virtual {v4, v6}, Landroid/security/KeyStore;->resetUid(I)Z

    iget-object v4, p0, Lcom/android/server/LockSettingsService$3;->this$0:Lcom/android/server/LockSettingsService;

    iget v6, p0, Lcom/android/server/LockSettingsService$3;->val$userId:I

    # invokes: Lcom/android/server/LockSettingsService;->maybeUpdateKeystore(Ljava/lang/String;I)V
    invoke-static {v4, v1, v6}, Lcom/android/server/LockSettingsService;->access$600(Lcom/android/server/LockSettingsService;Ljava/lang/String;I)V

    :cond_4
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "LockSettingsService"

    const-string v5, "end checkFingerprintPassword for keystore"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    :try_start_1
    const-string v4, "LockSettingsService"

    const-string v6, "KNOX :: Password requred to retrieve CMK"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_6
    :try_start_2
    const-string v4, "LockSettingsService"

    const-string v6, "KNOX :: Password requred to retrieve PWD-HASH"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto/16 :goto_0

    :cond_7
    iget-object v4, p0, Lcom/android/server/LockSettingsService$3;->this$0:Lcom/android/server/LockSettingsService;

    iget v6, p0, Lcom/android/server/LockSettingsService$3;->val$userId:I

    # invokes: Lcom/android/server/LockSettingsService;->maybeUpdateKeystore(Ljava/lang/String;I)V
    invoke-static {v4, v1, v6}, Lcom/android/server/LockSettingsService;->access$600(Lcom/android/server/LockSettingsService;Ljava/lang/String;I)V

    goto :goto_1

    :cond_8
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "LockSettingsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_null_checkFinger_maybeUpdateKeystore, userId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/LockSettingsService$3;->val$userId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v4, p0, Lcom/android/server/LockSettingsService$3;->this$0:Lcom/android/server/LockSettingsService;

    iget v6, p0, Lcom/android/server/LockSettingsService$3;->val$userId:I

    # invokes: Lcom/android/server/LockSettingsService;->maybeUpdateKeystore(Ljava/lang/String;I)V
    invoke-static {v4, v1, v6}, Lcom/android/server/LockSettingsService;->access$600(Lcom/android/server/LockSettingsService;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
