.class Lcom/android/incallui/SecVideoCallVGAUsaFragment$1;
.super Ljava/lang/Object;
.source "SecVideoCallVGAUsaFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecVideoCallVGAUsaFragment;->inflateVideoCallViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecVideoCallVGAUsaFragment;Landroid/view/ViewTreeObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$1;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iput-object p2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$1;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    const/16 v3, 0x6a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGlobalLayout - initialized : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$1;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-boolean v2, v2, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIsInitializedLayout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$1;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$1;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v1, v1, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$1;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v1, v1, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$1;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIsReadyToShowView:Z

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$1;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showVideoAsVideoState()V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$1;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    # invokes: Lcom/android/incallui/SecVideoCallVGAUsaFragment;->updateVideoViewBgColorForCallState()V
    invoke-static {v1}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->access$200(Lcom/android/incallui/SecVideoCallVGAUsaFragment;)V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$1;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-boolean v1, v1, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIsInitializedLayout:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$1;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$1;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    iget v2, v2, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoState:I

    iput v2, v1, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mDelayedVideoState:I

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$1;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    invoke-virtual {v1, v3}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->cancelTimer(I)V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$1;->this$0:Lcom/android/incallui/SecVideoCallVGAUsaFragment;

    const/16 v2, 0x64

    invoke-virtual {v1, v3, v2}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->startTimer(II)V

    :cond_2
    return-void
.end method
