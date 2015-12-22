.class Lcom/android/systemui/twscreenmanager/TwSwitchModeView$5;
.super Ljava/lang/Object;
.source "TwSwitchModeView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->stopTwScreenManagerServiceWithMoveToScrren(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

.field final synthetic val$d:I


# direct methods
.method constructor <init>(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$5;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    iput p2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$5;->val$d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$5;->val$d:I

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v2}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$5;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    # getter for: Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTaskInfoMain:Lcom/samsung/android/dualscreen/TaskInfo;
    invoke-static {v1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->access$200(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)Lcom/samsung/android/dualscreen/TaskInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$5;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    # getter for: Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreMain:Z
    invoke-static {v1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->access$300(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "dualscreen:noanim"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$5;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    # getter for: Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTaskInfoMain:Lcom/samsung/android/dualscreen/TaskInfo;
    invoke-static {v1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->access$200(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)Lcom/samsung/android/dualscreen/TaskInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/TaskInfo;->getTaskId()I

    move-result v1

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/dualscreen/DualScreenManager;->moveTaskToScreen(ILcom/samsung/android/dualscreen/DualScreen;ILandroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$5;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    # invokes: Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->stopTwScreenManagerService(Z)V
    invoke-static {v1, v3}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->access$400(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$5;->val$d:I

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v2}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$5;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    # getter for: Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTaskInfoSub:Lcom/samsung/android/dualscreen/TaskInfo;
    invoke-static {v1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->access$500(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)Lcom/samsung/android/dualscreen/TaskInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$5;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    # getter for: Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreSub:Z
    invoke-static {v1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->access$600(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "dualscreen:noanim"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$5;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    # getter for: Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTaskInfoSub:Lcom/samsung/android/dualscreen/TaskInfo;
    invoke-static {v1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->access$500(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)Lcom/samsung/android/dualscreen/TaskInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/TaskInfo;->getTaskId()I

    move-result v1

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/dualscreen/DualScreenManager;->moveTaskToScreen(ILcom/samsung/android/dualscreen/DualScreen;ILandroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$5;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    # invokes: Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->stopTwScreenManagerService(Z)V
    invoke-static {v1, v3}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->access$400(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;Z)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
