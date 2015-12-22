.class Lcom/android/incallui/SecVideoCallQVGAKorFragment$1;
.super Ljava/lang/Object;
.source "SecVideoCallQVGAKorFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecVideoCallQVGAKorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecVideoCallQVGAKorFragment;

.field touchDownOn:I


# direct methods
.method constructor <init>(Lcom/android/incallui/SecVideoCallQVGAKorFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/SecVideoCallQVGAKorFragment$1;->this$0:Lcom/android/incallui/SecVideoCallQVGAKorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/incallui/SecVideoCallQVGAKorFragment$1;->touchDownOn:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouch : view - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", event - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    if-eqz v0, :cond_0

    instance-of v4, v0, Lcom/android/incallui/SecInCallActivity;

    if-nez v4, :cond_2

    :cond_0
    const-string v4, "mVideoTouchListener : Activity is null!"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_1
    :goto_0
    :pswitch_0
    return v3

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->isDialpadVisible()Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    iput v6, p0, Lcom/android/incallui/SecVideoCallQVGAKorFragment$1;->touchDownOn:I

    const/4 v3, 0x1

    goto :goto_0

    :pswitch_2
    iget v4, p0, Lcom/android/incallui/SecVideoCallQVGAKorFragment$1;->touchDownOn:I

    if-ne v4, v6, :cond_3

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallQVGAKorFragment$1;->this$0:Lcom/android/incallui/SecVideoCallQVGAKorFragment;

    invoke-virtual {v4}, Lcom/android/incallui/SecVideoCallQVGAKorFragment;->togglePrimaryCallBanner()V

    const/4 v3, 0x1

    :cond_3
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/incallui/SecVideoCallQVGAKorFragment$1;->touchDownOn:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
