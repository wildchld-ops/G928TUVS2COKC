.class Lcom/android/systemui/qs/tiles/AutoRotateTile$1;
.super Landroid/content/BroadcastReceiver;
.source "AutoRotateTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/AutoRotateTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AutoRotateTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$1;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v2, 0x2

    const/4 v1, 0x1

    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$1;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    # invokes: Lcom/android/systemui/qs/tiles/AutoRotateTile;->isMobileKeyboardCovered()Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->access$000(Lcom/android/systemui/qs/tiles/AutoRotateTile;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$1;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    # invokes: Lcom/android/systemui/qs/tiles/AutoRotateTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v3}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->access$100(Lcom/android/systemui/qs/tiles/AutoRotateTile;Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$1;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    # getter for: Lcom/android/systemui/qs/tiles/AutoRotateTile;->mSupportFolderType:Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->access$500(Lcom/android/systemui/qs/tiles/AutoRotateTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$1;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$1;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    # invokes: Lcom/android/systemui/qs/tiles/AutoRotateTile;->getAutoRotation()Z
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->access$300(Lcom/android/systemui/qs/tiles/AutoRotateTile;)Z

    move-result v3

    # setter for: Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z
    invoke-static {v0, v3}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->access$202(Lcom/android/systemui/qs/tiles/AutoRotateTile;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$1;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$1;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    # getter for: Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->access$200(Lcom/android/systemui/qs/tiles/AutoRotateTile;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/AutoRotateTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->access$600(Lcom/android/systemui/qs/tiles/AutoRotateTile;Ljava/lang/Object;)V

    const-string v0, "STATUSBAR-AutoRotateTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_CONFIGURATION_CHANGED :: mAutoRotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$1;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    # getter for: Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->access$200(Lcom/android/systemui/qs/tiles/AutoRotateTile;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isFolderOpen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$1;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    # invokes: Lcom/android/systemui/qs/tiles/AutoRotateTile;->isFolderOpen()Z
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->access$700(Lcom/android/systemui/qs/tiles/AutoRotateTile;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$1;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$1;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    # invokes: Lcom/android/systemui/qs/tiles/AutoRotateTile;->getAutoRotation()Z
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->access$300(Lcom/android/systemui/qs/tiles/AutoRotateTile;)Z

    move-result v3

    # setter for: Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z
    invoke-static {v0, v3}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->access$202(Lcom/android/systemui/qs/tiles/AutoRotateTile;Z)Z

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$1;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mQsAnimationIcon:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    # invokes: Lcom/android/systemui/qs/tiles/AutoRotateTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v3, v0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->access$400(Lcom/android/systemui/qs/tiles/AutoRotateTile;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$1;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    # getter for: Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->access$200(Lcom/android/systemui/qs/tiles/AutoRotateTile;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_1
.end method
