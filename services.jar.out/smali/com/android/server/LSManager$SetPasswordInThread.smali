.class Lcom/android/server/LSManager$SetPasswordInThread;
.super Ljava/lang/Object;
.source "LSManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetPasswordInThread"
.end annotation


# instance fields
.field private pass:[B

.field final synthetic this$0:Lcom/android/server/LSManager;


# direct methods
.method constructor <init>(Lcom/android/server/LSManager;[B)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/LSManager$SetPasswordInThread;->pass:[B

    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/LSManager$SetPasswordInThread;->pass:[B

    iget-object v0, p0, Lcom/android/server/LSManager$SetPasswordInThread;->pass:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    const-string v1, "SetPasswordInThread.run()"

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->isReady()Z
    invoke-static {v0}, Lcom/android/server/LSManager;->access$1000(Lcom/android/server/LSManager;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->isLockedState()Z
    invoke-static {v0}, Lcom/android/server/LSManager;->access$400(Lcom/android/server/LSManager;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    const-string v1, "Not locked."

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LSManager$SetPasswordInThread;->pass:[B

    array-length v0, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    const-string v1, "Incomming null."

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->passwordIsProtected()Z
    invoke-static {v0}, Lcom/android/server/LSManager;->access$600(Lcom/android/server/LSManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    const-string/jumbo v1, "re_encrypt with def pass.."

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # getter for: Lcom/android/server/LSManager;->mDefaultPassword:[B
    invoke-static {}, Lcom/android/server/LSManager;->access$1100()[B

    move-result-object v1

    # invokes: Lcom/android/server/LSManager;->reEncryptSecretWithPassword([B)V
    invoke-static {v0, v1}, Lcom/android/server/LSManager;->access$1200(Lcom/android/server/LSManager;[B)V

    iget-object v0, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->setPasswordProtected(Z)V
    invoke-static {v0, v3}, Lcom/android/server/LSManager;->access$1300(Lcom/android/server/LSManager;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    const-string v1, "Incomming pass."

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->passwordIsReady()Z
    invoke-static {v0}, Lcom/android/server/LSManager;->access$1400(Lcom/android/server/LSManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->pass:[B

    # invokes: Lcom/android/server/LSManager;->reEncryptSecretWithPassword([B)V
    invoke-static {v0, v1}, Lcom/android/server/LSManager;->access$1200(Lcom/android/server/LSManager;[B)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->secretIsReady()Z
    invoke-static {v0}, Lcom/android/server/LSManager;->access$700(Lcom/android/server/LSManager;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    const-string v1, "Looks like first password."

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    # getter for: Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;
    invoke-static {}, Lcom/android/server/LSManager;->access$800()Landroid/os/storage/sensitive/SecureStorageLSM;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->pass:[B

    new-array v2, v3, [B

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/sensitive/SecureStorageLSM;->set_state([B[BI)I

    iget-object v0, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->generateSecret()V
    invoke-static {v0}, Lcom/android/server/LSManager;->access$1600(Lcom/android/server/LSManager;)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->passwordIsReady()Z
    invoke-static {v0}, Lcom/android/server/LSManager;->access$1400(Lcom/android/server/LSManager;)Z

    move-result v0

    if-nez v0, :cond_4

    # getter for: Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;
    invoke-static {}, Lcom/android/server/LSManager;->access$800()Landroid/os/storage/sensitive/SecureStorageLSM;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->pass:[B

    iget-object v2, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # getter for: Lcom/android/server/LSManager;->dkek:[B
    invoke-static {v2}, Lcom/android/server/LSManager;->access$1500(Lcom/android/server/LSManager;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/sensitive/SecureStorageLSM;->set_state([B[BI)I

    iget-object v0, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->setPasswordReady(Z)V
    invoke-static {v0, v4}, Lcom/android/server/LSManager;->access$500(Lcom/android/server/LSManager;Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->setPasswordProtected(Z)V
    invoke-static {v0, v4}, Lcom/android/server/LSManager;->access$1300(Lcom/android/server/LSManager;Z)V

    iget-object v0, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->setLockedState(Z)V
    invoke-static {v0, v3}, Lcom/android/server/LSManager;->access$300(Lcom/android/server/LSManager;Z)V

    :goto_2
    iget-object v0, p0, Lcom/android/server/LSManager$SetPasswordInThread;->pass:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/server/LSManager$SetPasswordInThread;->pass:[B

    array-length v0, v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    const-string v1, "First launch?.."

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->secretIsReady()Z
    invoke-static {v0}, Lcom/android/server/LSManager;->access$700(Lcom/android/server/LSManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->passwordIsProtected()Z
    invoke-static {v0}, Lcom/android/server/LSManager;->access$600(Lcom/android/server/LSManager;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    const-string v1, "Back to work!"

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    # getter for: Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;
    invoke-static {}, Lcom/android/server/LSManager;->access$800()Landroid/os/storage/sensitive/SecureStorageLSM;

    move-result-object v0

    # getter for: Lcom/android/server/LSManager;->mDefaultPassword:[B
    invoke-static {}, Lcom/android/server/LSManager;->access$1100()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # getter for: Lcom/android/server/LSManager;->dkek:[B
    invoke-static {v2}, Lcom/android/server/LSManager;->access$1500(Lcom/android/server/LSManager;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/sensitive/SecureStorageLSM;->set_state([B[BI)I

    iget-object v0, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->pass:[B

    # invokes: Lcom/android/server/LSManager;->reEncryptSecretWithPassword([B)V
    invoke-static {v0, v1}, Lcom/android/server/LSManager;->access$1200(Lcom/android/server/LSManager;[B)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # getter for: Lcom/android/server/LSManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/LSManager;->access$1700(Lcom/android/server/LSManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SS is not ready..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
