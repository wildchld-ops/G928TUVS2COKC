.class Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue$2;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->setAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue$2;->this$2:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_RESIZE_VISUAL_CUE:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiPhoneWindow"

    const-string v1, "mEndAnimation : onAnimationEnd() for ResizeVisualCue"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue$2;->this$2:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->removeResizeVisualCue()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_RESIZE_VISUAL_CUE:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiPhoneWindow"

    const-string v1, "mEndAnimation : onAnimationStart() for ResizeVisualCue"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
