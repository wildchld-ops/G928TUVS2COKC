.class Lcom/android/incallui/SecCallPopupService$16;
.super Ljava/lang/Object;
.source "SecCallPopupService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecCallPopupService;->showWaitingCallDialogGSM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/android/incallui/SecCallPopupService$16;->this$0:Lcom/android/incallui/SecCallPopupService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService$16;->this$0:Lcom/android/incallui/SecCallPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/SecCallPopupService;->dismissWaitingCallPopup()V

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService$16;->this$0:Lcom/android/incallui/SecCallPopupService;

    # invokes: Lcom/android/incallui/SecCallPopupService;->onAnswer()V
    invoke-static {v0}, Lcom/android/incallui/SecCallPopupService;->access$3700(Lcom/android/incallui/SecCallPopupService;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService$16;->this$0:Lcom/android/incallui/SecCallPopupService;

    # invokes: Lcom/android/incallui/SecCallPopupService;->onAnswerWithMerge()V
    invoke-static {v0}, Lcom/android/incallui/SecCallPopupService;->access$3800(Lcom/android/incallui/SecCallPopupService;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService$16;->this$0:Lcom/android/incallui/SecCallPopupService;

    const/4 v1, 0x0

    # invokes: Lcom/android/incallui/SecCallPopupService;->hangUpThenAnswer(I)V
    invoke-static {v0, v1}, Lcom/android/incallui/SecCallPopupService;->access$3600(Lcom/android/incallui/SecCallPopupService;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
