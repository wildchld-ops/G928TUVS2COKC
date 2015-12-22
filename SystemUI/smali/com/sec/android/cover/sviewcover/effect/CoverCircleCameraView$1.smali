.class Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CoverCircleCameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;

    iget-object v1, v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;

    iget-object v1, v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;

    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;->access$000(Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    invoke-static {v2}, Lcom/sec/android/cover/CoverUtils;->getCameraIntent(Z)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;

    iget-object v1, v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;->mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;

    iget-object v1, v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;->mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->resetPreviewView()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityNotFoundException !!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onAnimationEnd() cover open !!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
