.class Lcom/android/settings/fmm/RemoteControls$SamsungAccount$1;
.super Ljava/lang/Object;
.source "RemoteControls.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/RemoteControls$SamsungAccount;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/RemoteControls$SamsungAccount;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fmm/RemoteControls$SamsungAccount$1;->this$0:Lcom/android/settings/fmm/RemoteControls$SamsungAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v2, p0, Lcom/android/settings/fmm/RemoteControls$SamsungAccount$1;->this$0:Lcom/android/settings/fmm/RemoteControls$SamsungAccount;

    # getter for: Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->returnvalue_sa:I
    invoke-static {v2}, Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->access$1300(Lcom/android/settings/fmm/RemoteControls$SamsungAccount;)I

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.osp.app.signin"

    const-string v3, "com.osp.app.signin.AccountView"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "MODE"

    const-string v3, "REMOTE_CONTROLS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/fmm/RemoteControls$SamsungAccount$1;->this$0:Lcom/android/settings/fmm/RemoteControls$SamsungAccount;

    invoke-virtual {v2, v1}, Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
