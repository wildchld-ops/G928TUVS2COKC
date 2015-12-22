.class Lcom/android/server/am/UserSwitchingDialog$1;
.super Landroid/os/Handler;
.source "UserSwitchingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UserSwitchingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/UserSwitchingDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/UserSwitchingDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/UserSwitchingDialog$1;->this$0:Lcom/android/server/am/UserSwitchingDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog$1;->this$0:Lcom/android/server/am/UserSwitchingDialog;

    # getter for: Lcom/android/server/am/UserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/UserSwitchingDialog;->access$100(Lcom/android/server/am/UserSwitchingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/UserSwitchingDialog$1;->this$0:Lcom/android/server/am/UserSwitchingDialog;

    # getter for: Lcom/android/server/am/UserSwitchingDialog;->mUserId:I
    invoke-static {v2}, Lcom/android/server/am/UserSwitchingDialog;->access$000(Lcom/android/server/am/UserSwitchingDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/UserSwitchingDialog$1;->this$0:Lcom/android/server/am/UserSwitchingDialog;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->startUserInForeground(ILandroid/app/Dialog;)Z

    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog$1;->this$0:Lcom/android/server/am/UserSwitchingDialog;

    invoke-virtual {v1}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/UserSwitchingDialog$1;->this$0:Lcom/android/server/am/UserSwitchingDialog;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
