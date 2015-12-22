.class Lcom/android/incallui/SecCallPopupService$2;
.super Landroid/os/Handler;
.source "SecCallPopupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecCallPopupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecCallPopupService;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecCallPopupService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecCallPopupService$2;->this$0:Lcom/android/incallui/SecCallPopupService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService$2;->this$0:Lcom/android/incallui/SecCallPopupService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message received: what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/incallui/SecCallPopupService;->access$100(Lcom/android/incallui/SecCallPopupService;Ljava/lang/String;Z)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService$2;->this$0:Lcom/android/incallui/SecCallPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/SecCallPopupService;->animateForHide()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService$2;->this$0:Lcom/android/incallui/SecCallPopupService;

    # invokes: Lcom/android/incallui/SecCallPopupService;->stopWaveEffect(Z)V
    invoke-static {v0, v3}, Lcom/android/incallui/SecCallPopupService;->access$200(Lcom/android/incallui/SecCallPopupService;Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService$2;->this$0:Lcom/android/incallui/SecCallPopupService;

    # invokes: Lcom/android/incallui/SecCallPopupService;->checkKeyguardLocked()V
    invoke-static {v0}, Lcom/android/incallui/SecCallPopupService;->access$300(Lcom/android/incallui/SecCallPopupService;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService$2;->this$0:Lcom/android/incallui/SecCallPopupService;

    # invokes: Lcom/android/incallui/SecCallPopupService;->animateForPeriodMarkContainer()V
    invoke-static {v0}, Lcom/android/incallui/SecCallPopupService;->access$400(Lcom/android/incallui/SecCallPopupService;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService$2;->this$0:Lcom/android/incallui/SecCallPopupService;

    # invokes: Lcom/android/incallui/SecCallPopupService;->stopCallEndTimeBlink()V
    invoke-static {v0}, Lcom/android/incallui/SecCallPopupService;->access$500(Lcom/android/incallui/SecCallPopupService;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
