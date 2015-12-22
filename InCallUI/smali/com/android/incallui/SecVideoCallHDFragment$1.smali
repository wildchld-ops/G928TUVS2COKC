.class Lcom/android/incallui/SecVideoCallHDFragment$1;
.super Ljava/lang/Object;
.source "SecVideoCallHDFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecVideoCallHDFragment;->inflateVideoCallViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecVideoCallHDFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecVideoCallHDFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecVideoCallHDFragment$1;->this$0:Lcom/android/incallui/SecVideoCallHDFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    const-string v1, "onGlobalLayout"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallHDFragment$1;->this$0:Lcom/android/incallui/SecVideoCallHDFragment;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/incallui/SecVideoCallHDFragment;->mIsReadyToShowView:Z

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallHDFragment$1;->this$0:Lcom/android/incallui/SecVideoCallHDFragment;

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_NONE:I

    iput v2, v1, Lcom/android/incallui/SecVideoCallHDFragment;->mVideoState:I

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallHDFragment$1;->this$0:Lcom/android/incallui/SecVideoCallHDFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecVideoCallHDFragment;->setCallState()V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallHDFragment$1;->this$0:Lcom/android/incallui/SecVideoCallHDFragment;

    iget-object v1, v1, Lcom/android/incallui/SecVideoCallHDFragment;->mVideoViews:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
