.class Lcom/android/incallui/SecTabletInCallService$9;
.super Ljava/lang/Object;
.source "SecTabletInCallService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecTabletInCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private start_X:I

.field private start_Y:I

.field private start_event_X:I

.field private start_event_Y:I

.field final synthetic this$0:Lcom/android/incallui/SecTabletInCallService;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecTabletInCallService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletInCallService$9;->this$0:Lcom/android/incallui/SecTabletInCallService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/incallui/SecTabletInCallService$9;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # getter for: Lcom/android/incallui/SecTabletInCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lcom/android/incallui/SecTabletInCallService;->access$300(Lcom/android/incallui/SecTabletInCallService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/incallui/SecTabletInCallService$9;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # getter for: Lcom/android/incallui/SecTabletInCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lcom/android/incallui/SecTabletInCallService;->access$300(Lcom/android/incallui/SecTabletInCallService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v3, p0, Lcom/android/incallui/SecTabletInCallService$9;->start_X:I

    iget-object v3, p0, Lcom/android/incallui/SecTabletInCallService$9;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # getter for: Lcom/android/incallui/SecTabletInCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lcom/android/incallui/SecTabletInCallService;->access$300(Lcom/android/incallui/SecTabletInCallService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v3, p0, Lcom/android/incallui/SecTabletInCallService$9;->start_Y:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/incallui/SecTabletInCallService$9;->start_event_X:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/incallui/SecTabletInCallService$9;->start_event_Y:I

    goto :goto_0

    :pswitch_2
    const-string v3, "emergency_find_lost_phone"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isFindService()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/android/incallui/SecTabletInCallService$9;->start_event_X:I

    sub-int v0, v3, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/android/incallui/SecTabletInCallService$9;->start_event_Y:I

    sub-int v1, v3, v4

    iget-object v3, p0, Lcom/android/incallui/SecTabletInCallService$9;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # getter for: Lcom/android/incallui/SecTabletInCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lcom/android/incallui/SecTabletInCallService;->access$300(Lcom/android/incallui/SecTabletInCallService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/android/incallui/SecTabletInCallService$9;->start_X:I

    add-int/2addr v4, v0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, p0, Lcom/android/incallui/SecTabletInCallService$9;->start_Y:I

    sub-int/2addr v3, v1

    iget-object v4, p0, Lcom/android/incallui/SecTabletInCallService$9;->this$0:Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v4}, Lcom/android/incallui/SecTabletInCallService;->getMaxY()I

    move-result v4

    iget-object v5, p0, Lcom/android/incallui/SecTabletInCallService$9;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # getter for: Lcom/android/incallui/SecTabletInCallService;->mHeight:I
    invoke-static {v5}, Lcom/android/incallui/SecTabletInCallService;->access$1500(Lcom/android/incallui/SecTabletInCallService;)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/incallui/SecTabletInCallService$9;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # getter for: Lcom/android/incallui/SecTabletInCallService;->mStatusBarHeight:I
    invoke-static {v5}, Lcom/android/incallui/SecTabletInCallService;->access$1600(Lcom/android/incallui/SecTabletInCallService;)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/incallui/SecTabletInCallService$9;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # getter for: Lcom/android/incallui/SecTabletInCallService;->margin_bottom:I
    invoke-static {v5}, Lcom/android/incallui/SecTabletInCallService;->access$1700(Lcom/android/incallui/SecTabletInCallService;)I

    move-result v5

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/incallui/SecTabletInCallService$9;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # getter for: Lcom/android/incallui/SecTabletInCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lcom/android/incallui/SecTabletInCallService;->access$300(Lcom/android/incallui/SecTabletInCallService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/android/incallui/SecTabletInCallService$9;->start_Y:I

    sub-int/2addr v4, v1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/SecTabletInCallService$9;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # getter for: Lcom/android/incallui/SecTabletInCallService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v3}, Lcom/android/incallui/SecTabletInCallService;->access$1800(Lcom/android/incallui/SecTabletInCallService;)Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/SecTabletInCallService$9;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # getter for: Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;
    invoke-static {v4}, Lcom/android/incallui/SecTabletInCallService;->access$800(Lcom/android/incallui/SecTabletInCallService;)Lcom/android/incallui/SecTabletRootView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/SecTabletInCallService$9;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # getter for: Lcom/android/incallui/SecTabletInCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v5}, Lcom/android/incallui/SecTabletInCallService;->access$300(Lcom/android/incallui/SecTabletInCallService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
