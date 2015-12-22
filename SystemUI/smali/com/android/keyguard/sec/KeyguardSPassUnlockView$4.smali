.class Lcom/android/keyguard/sec/KeyguardSPassUnlockView$4;
.super Landroid/os/Handler;
.source "KeyguardSPassUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardSPassUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$4;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$4;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # invokes: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleDismissKeyguard()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$4;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # invokes: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleShowAutoWipePopup()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$500(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$4;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleShowFingerPrintInstruction(I)V
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$600(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;I)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$4;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleShowErrorMessage(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$700(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$4;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleShowErrorPopup(I)V
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$800(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$4;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # invokes: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleShowBackupPasswordButton()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$900(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$4;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # invokes: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleShowBackupPasswordLockscreen()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$4;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAttributionView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1100(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$4;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAttributionView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$1100(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$4;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    iget-boolean v1, v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAttributeViewEnabled:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
