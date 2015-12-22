.class Lcom/android/incallui/SecDialpadFragmentManager$2;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/android/incallui/SecDialpadFragmentManager$2;->this$0:Lcom/android/incallui/SecDialpadFragmentManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.samsung.intent.action.ACTION_DTMF_BUSY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecDialpadFragmentManager$2;->this$0:Lcom/android/incallui/SecDialpadFragmentManager;

    # getter for: Lcom/android/incallui/SecDialpadFragmentManager;->mIsShowing:Z
    invoke-static {v2}, Lcom/android/incallui/SecDialpadFragmentManager;->access$000(Lcom/android/incallui/SecDialpadFragmentManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecDialpadFragmentManager$2;->this$0:Lcom/android/incallui/SecDialpadFragmentManager;

    iget-object v2, v2, Lcom/android/incallui/SecDialpadFragmentManager;->dtmfDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/incallui/SecDialpadFragmentManager$2;->this$0:Lcom/android/incallui/SecDialpadFragmentManager;

    iget-object v2, v2, Lcom/android/incallui/SecDialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d012f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/incallui/SecDialpadFragmentManager$2;->this$0:Lcom/android/incallui/SecDialpadFragmentManager;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, v2, Lcom/android/incallui/SecDialpadFragmentManager;->dtmfDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/incallui/SecDialpadFragmentManager$2;->this$0:Lcom/android/incallui/SecDialpadFragmentManager;

    iget-object v2, v2, Lcom/android/incallui/SecDialpadFragmentManager;->dtmfDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    iget-object v2, p0, Lcom/android/incallui/SecDialpadFragmentManager$2;->this$0:Lcom/android/incallui/SecDialpadFragmentManager;

    # invokes: Lcom/android/incallui/SecDialpadFragmentManager;->deleteSendDtmfPopDelayed()V
    invoke-static {v2}, Lcom/android/incallui/SecDialpadFragmentManager;->access$100(Lcom/android/incallui/SecDialpadFragmentManager;)V

    :cond_0
    return-void
.end method
