.class Lcom/android/incallui/SecDialpadFragmentManager$1;
.super Landroid/os/Handler;
.source "SecDialpadFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecDialpadFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecDialpadFragmentManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecDialpadFragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecDialpadFragmentManager$1;->this$0:Lcom/android/incallui/SecDialpadFragmentManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragmentManager$1;->this$0:Lcom/android/incallui/SecDialpadFragmentManager;

    iget-object v0, v0, Lcom/android/incallui/SecDialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragmentManager$1;->this$0:Lcom/android/incallui/SecDialpadFragmentManager;

    iget-object v0, v0, Lcom/android/incallui/SecDialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/BaseInCallActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragmentManager$1;->this$0:Lcom/android/incallui/SecDialpadFragmentManager;

    iget-object v0, v0, Lcom/android/incallui/SecDialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/BaseInCallActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragmentManager$1;->this$0:Lcom/android/incallui/SecDialpadFragmentManager;

    iget-object v0, v0, Lcom/android/incallui/SecDialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/BaseInCallActivity;->displayDialpad(ZZ)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragmentManager$1;->this$0:Lcom/android/incallui/SecDialpadFragmentManager;

    iget-object v0, v0, Lcom/android/incallui/SecDialpadFragmentManager;->dtmfDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragmentManager$1;->this$0:Lcom/android/incallui/SecDialpadFragmentManager;

    iget-object v0, v0, Lcom/android/incallui/SecDialpadFragmentManager;->dtmfDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragmentManager$1;->this$0:Lcom/android/incallui/SecDialpadFragmentManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/incallui/SecDialpadFragmentManager;->dtmfDialog:Landroid/app/AlertDialog;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
