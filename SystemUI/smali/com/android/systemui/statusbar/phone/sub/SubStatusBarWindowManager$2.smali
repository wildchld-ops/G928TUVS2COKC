.class Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SubStatusBarWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->applyHeight(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

.field final synthetic val$mSubStatusBar:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$2;->val$mSubStatusBar:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$2;->val$mSubStatusBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->access$200(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mBarHeight:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->access$300(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->access$500(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->access$400(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->access$200(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
