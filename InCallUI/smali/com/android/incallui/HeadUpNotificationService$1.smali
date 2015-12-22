.class Lcom/android/incallui/HeadUpNotificationService$1;
.super Ljava/lang/Object;
.source "HeadUpNotificationService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/HeadUpNotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/HeadUpNotificationService;


# direct methods
.method constructor <init>(Lcom/android/incallui/HeadUpNotificationService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/HeadUpNotificationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    const/16 v12, 0x80

    const/16 v11, 0x40

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v8, "HeadUpNotificationService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onTouch "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/incallui/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/HeadUpNotificationService;

    # getter for: Lcom/android/incallui/HeadUpNotificationService;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v8}, Lcom/android/incallui/HeadUpNotificationService;->access$000(Lcom/android/incallui/HeadUpNotificationService;)Landroid/view/GestureDetector;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/incallui/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/HeadUpNotificationService;

    # getter for: Lcom/android/incallui/HeadUpNotificationService;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v8}, Lcom/android/incallui/HeadUpNotificationService;->access$000(Lcom/android/incallui/HeadUpNotificationService;)Landroid/view/GestureDetector;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    iget-object v8, p0, Lcom/android/incallui/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/HeadUpNotificationService;

    iget-boolean v8, v8, Lcom/android/incallui/HeadUpNotificationService;->mIsShowAnimationRunning:Z

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/incallui/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/HeadUpNotificationService;

    iget-boolean v8, v8, Lcom/android/incallui/HeadUpNotificationService;->mIsHideAnimationRunning:Z

    if-eqz v8, :cond_2

    :cond_1
    const-string v6, "HeadUpNotificationService"

    const-string v8, "Animation is running..."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v7

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v6, p0, Lcom/android/incallui/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/HeadUpNotificationService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    # setter for: Lcom/android/incallui/HeadUpNotificationService;->mStartPointX:F
    invoke-static {v6, v8}, Lcom/android/incallui/HeadUpNotificationService;->access$102(Lcom/android/incallui/HeadUpNotificationService;F)F

    iget-object v6, p0, Lcom/android/incallui/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/HeadUpNotificationService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    # setter for: Lcom/android/incallui/HeadUpNotificationService;->mStartPointY:F
    invoke-static {v6, v8}, Lcom/android/incallui/HeadUpNotificationService;->access$202(Lcom/android/incallui/HeadUpNotificationService;F)F

    iget-object v6, p0, Lcom/android/incallui/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/HeadUpNotificationService;

    iget-object v8, p0, Lcom/android/incallui/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/HeadUpNotificationService;

    # getter for: Lcom/android/incallui/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v8}, Lcom/android/incallui/HeadUpNotificationService;->access$400(Lcom/android/incallui/HeadUpNotificationService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    # setter for: Lcom/android/incallui/HeadUpNotificationService;->mViewPointX:I
    invoke-static {v6, v8}, Lcom/android/incallui/HeadUpNotificationService;->access$302(Lcom/android/incallui/HeadUpNotificationService;I)I

    iget-object v6, p0, Lcom/android/incallui/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/HeadUpNotificationService;

    iput-boolean v7, v6, Lcom/android/incallui/HeadUpNotificationService;->mDoLaunchFullScreen:Z

    goto :goto_0

    :pswitch_1
    iget-object v6, p0, Lcom/android/incallui/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/HeadUpNotificationService;

    invoke-virtual {v6}, Lcom/android/incallui/HeadUpNotificationService;->launchFullScreen()V

    :pswitch_2
    iget-object v6, p0, Lcom/android/incallui/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/HeadUpNotificationService;

    invoke-virtual {v6}, Lcom/android/incallui/HeadUpNotificationService;->resetViewLayout()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    iget-object v9, p0, Lcom/android/incallui/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/HeadUpNotificationService;

    # getter for: Lcom/android/incallui/HeadUpNotificationService;->mStartPointX:F
    invoke-static {v9}, Lcom/android/incallui/HeadUpNotificationService;->access$100(Lcom/android/incallui/HeadUpNotificationService;)F

    move-result v9

    sub-float/2addr v8, v9

    float-to-int v2, v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iget-object v9, p0, Lcom/android/incallui/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/HeadUpNotificationService;

    # getter for: Lcom/android/incallui/HeadUpNotificationService;->mStartPointY:F
    invoke-static {v9}, Lcom/android/incallui/HeadUpNotificationService;->access$200(Lcom/android/incallui/HeadUpNotificationService;)F

    move-result v9

    sub-float/2addr v8, v9

    float-to-int v3, v8

    iget-object v8, p0, Lcom/android/incallui/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/HeadUpNotificationService;

    # getter for: Lcom/android/incallui/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v8}, Lcom/android/incallui/HeadUpNotificationService;->access$400(Lcom/android/incallui/HeadUpNotificationService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget-object v9, p0, Lcom/android/incallui/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/HeadUpNotificationService;

    # getter for: Lcom/android/incallui/HeadUpNotificationService;->mViewPointX:I
    invoke-static {v9}, Lcom/android/incallui/HeadUpNotificationService;->access$300(Lcom/android/incallui/HeadUpNotificationService;)I

    move-result v9

    add-int/2addr v9, v2

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v8, p0, Lcom/android/incallui/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/HeadUpNotificationService;

    # getter for: Lcom/android/incallui/HeadUpNotificationService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v8}, Lcom/android/incallui/HeadUpNotificationService;->access$500(Lcom/android/incallui/HeadUpNotificationService;)Landroid/view/WindowManager;

    move-result-object v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/incallui/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/HeadUpNotificationService;

    # getter for: Lcom/android/incallui/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/HeadUpNotificationView;
    invoke-static {v8}, Lcom/android/incallui/HeadUpNotificationService;->access$600(Lcom/android/incallui/HeadUpNotificationService;)Lcom/android/incallui/HeadUpNotificationView;

    move-result-object v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/incallui/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/HeadUpNotificationService;

    iget-boolean v8, v8, Lcom/android/incallui/HeadUpNotificationService;->mCanSlideOut:Z

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/incallui/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/HeadUpNotificationService;

    invoke-virtual {v8}, Lcom/android/incallui/HeadUpNotificationService;->getMaxX()I

    move-result v8

    int-to-float v4, v8

    iget-object v8, p0, Lcom/android/incallui/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/HeadUpNotificationService;

    # getter for: Lcom/android/incallui/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v8}, Lcom/android/incallui/HeadUpNotificationService;->access$400(Lcom/android/incallui/HeadUpNotificationService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    cmpl-float v8, v0, v8

    if-lez v8, :cond_5

    cmpg-float v8, v0, v4

    if-gez v8, :cond_5

    div-float v5, v0, v4

    const v8, 0x3ecccccd    # 0.4f

    cmpl-float v8, v5, v8

    if-lez v8, :cond_4

    iget-object v8, p0, Lcom/android/incallui/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/HeadUpNotificationService;

    iget-object v9, p0, Lcom/android/incallui/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/HeadUpNotificationService;

    # getter for: Lcom/android/incallui/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v9}, Lcom/android/incallui/HeadUpNotificationService;->access$400(Lcom/android/incallui/HeadUpNotificationService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v9, :cond_3

    move v6, v7

    :cond_3
    # invokes: Lcom/android/incallui/HeadUpNotificationService;->animateForSlideOut(Z)V
    invoke-static {v8, v6}, Lcom/android/incallui/HeadUpNotificationService;->access$700(Lcom/android/incallui/HeadUpNotificationService;Z)V

    goto/16 :goto_0

    :cond_4
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v1, v8, v5

    :cond_5
    iget-object v8, p0, Lcom/android/incallui/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/HeadUpNotificationService;

    # getter for: Lcom/android/incallui/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/HeadUpNotificationView;
    invoke-static {v8}, Lcom/android/incallui/HeadUpNotificationService;->access$600(Lcom/android/incallui/HeadUpNotificationService;)Lcom/android/incallui/HeadUpNotificationView;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/android/incallui/HeadUpNotificationView;->setAlpha(F)V

    :cond_6
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-le v8, v9, :cond_7

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v8, v12, :cond_7

    if-le v3, v12, :cond_7

    iget-object v8, p0, Lcom/android/incallui/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/HeadUpNotificationService;

    # getter for: Lcom/android/incallui/HeadUpNotificationService;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v8}, Lcom/android/incallui/HeadUpNotificationService;->access$800(Lcom/android/incallui/HeadUpNotificationService;)Landroid/app/StatusBarManager;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/incallui/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/HeadUpNotificationService;

    # getter for: Lcom/android/incallui/HeadUpNotificationService;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v8}, Lcom/android/incallui/HeadUpNotificationService;->access$800(Lcom/android/incallui/HeadUpNotificationService;)Landroid/app/StatusBarManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/StatusBarManager;->expandNotificationsPanel()V

    :cond_7
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-gt v8, v11, :cond_8

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v8, v11, :cond_9

    :cond_8
    iget-object v8, p0, Lcom/android/incallui/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/HeadUpNotificationService;

    iput-boolean v6, v8, Lcom/android/incallui/HeadUpNotificationService;->mDoLaunchFullScreen:Z

    :cond_9
    iget-object v6, p0, Lcom/android/incallui/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/HeadUpNotificationService;

    invoke-virtual {v6}, Lcom/android/incallui/HeadUpNotificationService;->updateViewLayout()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
