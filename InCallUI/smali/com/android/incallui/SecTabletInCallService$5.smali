.class Lcom/android/incallui/SecTabletInCallService$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecTabletInCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecTabletInCallService;->animateForSlideOut(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecTabletInCallService;

.field final synthetic val$src:F

.field final synthetic val$stop:Z


# direct methods
.method constructor <init>(Lcom/android/incallui/SecTabletInCallService;FZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletInCallService$5;->this$0:Lcom/android/incallui/SecTabletInCallService;

    iput p2, p0, Lcom/android/incallui/SecTabletInCallService$5;->val$src:F

    iput-boolean p3, p0, Lcom/android/incallui/SecTabletInCallService$5;->val$stop:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService$5;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # getter for: Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;
    invoke-static {v0}, Lcom/android/incallui/SecTabletInCallService;->access$800(Lcom/android/incallui/SecTabletInCallService;)Lcom/android/incallui/SecTabletRootView;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/SecTabletInCallService$5;->val$src:F

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecTabletRootView;->setY(F)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService$5;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # getter for: Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;
    invoke-static {v0}, Lcom/android/incallui/SecTabletInCallService;->access$800(Lcom/android/incallui/SecTabletInCallService;)Lcom/android/incallui/SecTabletRootView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecTabletRootView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService$5;->this$0:Lcom/android/incallui/SecTabletInCallService;

    const/4 v1, 0x0

    # setter for: Lcom/android/incallui/SecTabletInCallService;->mIsHideAnimationRunning:Z
    invoke-static {v0, v1}, Lcom/android/incallui/SecTabletInCallService;->access$1002(Lcom/android/incallui/SecTabletInCallService;Z)Z

    iget-boolean v0, p0, Lcom/android/incallui/SecTabletInCallService$5;->val$stop:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->hasIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService$5;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # getter for: Lcom/android/incallui/SecTabletInCallService;->forceRecreate:Z
    invoke-static {v0}, Lcom/android/incallui/SecTabletInCallService;->access$400(Lcom/android/incallui/SecTabletInCallService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService$5;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # setter for: Lcom/android/incallui/SecTabletInCallService;->mRecreateService:Z
    invoke-static {v0, v2}, Lcom/android/incallui/SecTabletInCallService;->access$002(Lcom/android/incallui/SecTabletInCallService;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService$5;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # setter for: Lcom/android/incallui/SecTabletInCallService;->mIsFinishing:Z
    invoke-static {v0, v2}, Lcom/android/incallui/SecTabletInCallService;->access$1102(Lcom/android/incallui/SecTabletInCallService;Z)Z

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService$5;->this$0:Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletInCallService;->stopSelf()V

    :cond_1
    return-void
.end method
