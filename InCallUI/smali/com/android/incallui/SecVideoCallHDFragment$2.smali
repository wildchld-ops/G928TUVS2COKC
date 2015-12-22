.class Lcom/android/incallui/SecVideoCallHDFragment$2;
.super Ljava/lang/Object;
.source "SecVideoCallHDFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecVideoCallHDFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecVideoCallHDFragment;

.field touchDownOn:I


# direct methods
.method constructor <init>(Lcom/android/incallui/SecVideoCallHDFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/SecVideoCallHDFragment$2;->this$0:Lcom/android/incallui/SecVideoCallHDFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/incallui/SecVideoCallHDFragment$2;->touchDownOn:I

    return-void
.end method


# virtual methods
.method public isFullInsideView(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v0, 0x1

    const-wide v8, 0x3fa999999999999aL    # 0.05

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFullInsideView : checkView - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v1

    float-to-double v4, v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-double v6, v1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    float-to-double v4, v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-double v6, v1

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v1

    float-to-double v4, v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-double v6, v1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    float-to-double v4, v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-double v6, v1

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchedBigArea(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/SecVideoCallHDFragment$2;->isTouchedSmallArea(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallHDFragment$2;->this$0:Lcom/android/incallui/SecVideoCallHDFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecVideoCallHDFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->isScreenResized()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallHDFragment$2;->this$0:Lcom/android/incallui/SecVideoCallHDFragment;

    iget-object v1, v1, Lcom/android/incallui/SecVideoCallHDFragment;->mResizedTouchArea:Landroid/view/View;

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/incallui/SecVideoCallHDFragment$2;->isFullInsideView(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallHDFragment$2;->this$0:Lcom/android/incallui/SecVideoCallHDFragment;

    iget-object v1, v1, Lcom/android/incallui/SecVideoCallHDFragment;->mBigTouchArea:Landroid/view/View;

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/incallui/SecVideoCallHDFragment$2;->isFullInsideView(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public isTouchedSmallArea(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallHDFragment$2;->this$0:Lcom/android/incallui/SecVideoCallHDFragment;

    iget-object v1, v1, Lcom/android/incallui/SecVideoCallHDFragment;->mSmallTouchArea:Landroid/view/View;

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/incallui/SecVideoCallHDFragment$2;->isFullInsideView(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouch : view - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", event - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    if-eqz v0, :cond_0

    instance-of v5, v0, Lcom/android/incallui/SecInCallActivity;

    if-nez v5, :cond_2

    :cond_0
    const-string v5, "mVideoTouchListener : Activity is null!"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move v3, v4

    :cond_1
    :goto_0
    :pswitch_0
    return v3

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->isDialpadVisible()Z

    move-result v5

    if-nez v5, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/SecVideoCallHDFragment$2;->isTouchedSmallArea(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_3

    iput v7, p0, Lcom/android/incallui/SecVideoCallHDFragment$2;->touchDownOn:I

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/SecVideoCallHDFragment$2;->isTouchedBigArea(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    iput v4, p0, Lcom/android/incallui/SecVideoCallHDFragment$2;->touchDownOn:I

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    iput v8, p0, Lcom/android/incallui/SecVideoCallHDFragment$2;->touchDownOn:I

    const/4 v3, 0x1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/SecVideoCallHDFragment$2;->isTouchedSmallArea(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/android/incallui/SecVideoCallHDFragment$2;->touchDownOn:I

    if-ne v4, v7, :cond_6

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallHDFragment$2;->this$0:Lcom/android/incallui/SecVideoCallHDFragment;

    invoke-virtual {v4}, Lcom/android/incallui/SecVideoCallHDFragment;->togglePrimaryCallBanner()V

    const/4 v3, 0x1

    :cond_5
    :goto_1
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/incallui/SecVideoCallHDFragment$2;->touchDownOn:I

    goto :goto_0

    :cond_6
    iget v4, p0, Lcom/android/incallui/SecVideoCallHDFragment$2;->touchDownOn:I

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallHDFragment$2;->this$0:Lcom/android/incallui/SecVideoCallHDFragment;

    invoke-virtual {v4}, Lcom/android/incallui/SecVideoCallHDFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secservice/SecVideoCallManager;->isFarFrameReady()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallHDFragment$2;->this$0:Lcom/android/incallui/SecVideoCallHDFragment;

    invoke-virtual {v4}, Lcom/android/incallui/SecVideoCallHDFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secservice/SecVideoCallManager;->isSwitchCameraClicked()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallHDFragment$2;->this$0:Lcom/android/incallui/SecVideoCallHDFragment;

    invoke-virtual {v4, v7}, Lcom/android/incallui/SecVideoCallHDFragment;->showVideoInCallReverse(Z)V

    const/4 v3, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/SecVideoCallHDFragment$2;->isTouchedBigArea(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget v4, p0, Lcom/android/incallui/SecVideoCallHDFragment$2;->touchDownOn:I

    if-ne v4, v7, :cond_8

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallHDFragment$2;->this$0:Lcom/android/incallui/SecVideoCallHDFragment;

    invoke-virtual {v4}, Lcom/android/incallui/SecVideoCallHDFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secservice/SecVideoCallManager;->isFarFrameReady()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallHDFragment$2;->this$0:Lcom/android/incallui/SecVideoCallHDFragment;

    invoke-virtual {v4}, Lcom/android/incallui/SecVideoCallHDFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secservice/SecVideoCallManager;->isSwitchCameraClicked()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallHDFragment$2;->this$0:Lcom/android/incallui/SecVideoCallHDFragment;

    invoke-virtual {v4, v7}, Lcom/android/incallui/SecVideoCallHDFragment;->showVideoInCallReverse(Z)V

    const/4 v3, 0x1

    goto :goto_1

    :cond_8
    iget v4, p0, Lcom/android/incallui/SecVideoCallHDFragment$2;->touchDownOn:I

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallHDFragment$2;->this$0:Lcom/android/incallui/SecVideoCallHDFragment;

    invoke-virtual {v4}, Lcom/android/incallui/SecVideoCallHDFragment;->togglePrimaryCallBanner()V

    const/4 v3, 0x1

    goto :goto_1

    :cond_9
    iget v4, p0, Lcom/android/incallui/SecVideoCallHDFragment$2;->touchDownOn:I

    if-ne v4, v8, :cond_5

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallHDFragment$2;->this$0:Lcom/android/incallui/SecVideoCallHDFragment;

    invoke-virtual {v4}, Lcom/android/incallui/SecVideoCallHDFragment;->togglePrimaryCallBanner()V

    const/4 v3, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
