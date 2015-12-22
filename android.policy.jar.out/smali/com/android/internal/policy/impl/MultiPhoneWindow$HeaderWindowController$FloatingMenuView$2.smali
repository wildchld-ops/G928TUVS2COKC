.class Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$2;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->animateFloatingMenuClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$2;->this$2:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$2;->this$2:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$2;->this$2:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->access$8800(Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$2;->this$2:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mPenWindowHeader:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$2;->this$2:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuCloseAnimating:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->access$8902(Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;Z)Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$2;->this$2:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->removeSelf()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->access$9000(Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)V

    const-string v1, "MultiPhoneWindow"

    const-string v2, "animateFloatingMenuClose anim is end"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$2;->this$2:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mPenWindowHeader:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

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
