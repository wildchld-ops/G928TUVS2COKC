.class Lcom/android/server/power/PowerManagerService$11;
.super Lcom/samsung/android/cover/CoverManager$CoverStateListener;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$CoverStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverAttachStateChanged(Z)V
    .locals 6

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mFeatureCoverSysfs:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$13300(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$13400(Lcom/android/server/power/PowerManagerService;)Lcom/samsung/android/cover/CoverManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    # setter for: Lcom/android/server/power/PowerManagerService;->mCoverType:I
    invoke-static {v1, v4}, Lcom/android/server/power/PowerManagerService;->access$10402(Lcom/android/server/power/PowerManagerService;I)I

    const-string v1, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCoverAttachStateChanged: attach: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  mCoverType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mCoverType:I
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->access$10400(Lcom/android/server/power/PowerManagerService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mlastSetCoverTypeTime:J
    invoke-static {v1, v2, v3}, Lcom/android/server/power/PowerManagerService;->access$10502(Lcom/android/server/power/PowerManagerService;J)J

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCoverAttachStateChanged = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mCoverType:I
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->access$10400(Lcom/android/server/power/PowerManagerService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverTypeReason:Ljava/lang/String;
    invoke-static {v1, v4}, Lcom/android/server/power/PowerManagerService;->access$10602(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PowerManagerService"

    const-string/jumbo v4, "onCoverAttachStateChanged: mCoverManager returns NULL."

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCoverSwitchStateChanged(Z)V
    .locals 0

    return-void
.end method
