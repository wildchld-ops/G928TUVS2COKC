.class Lcom/android/incallui/SecTabletVideoCallVGAView$1;
.super Ljava/lang/Object;
.source "SecTabletVideoCallVGAView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecTabletVideoCallVGAView;->inflateVideoCallViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecTabletVideoCallVGAView;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecTabletVideoCallVGAView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletVideoCallVGAView$1;->this$0:Lcom/android/incallui/SecTabletVideoCallVGAView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    const-string v1, "onGlobalLayout"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallVGAView$1;->this$0:Lcom/android/incallui/SecTabletVideoCallVGAView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/incallui/SecTabletVideoCallVGAView;->mIsReadyToShowView:Z

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallVGAView$1;->this$0:Lcom/android/incallui/SecTabletVideoCallVGAView;

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_NONE:I

    iput v2, v1, Lcom/android/incallui/SecTabletVideoCallVGAView;->mVideoState:I

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallVGAView$1;->this$0:Lcom/android/incallui/SecTabletVideoCallVGAView;

    invoke-virtual {v1}, Lcom/android/incallui/SecTabletVideoCallVGAView;->setCallState()V

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallVGAView$1;->this$0:Lcom/android/incallui/SecTabletVideoCallVGAView;

    iget-object v1, v1, Lcom/android/incallui/SecTabletVideoCallVGAView;->mVideoViews:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
