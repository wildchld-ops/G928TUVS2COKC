.class Lcom/android/server/QuickConnectService$1;
.super Landroid/os/Handler;
.source "QuickConnectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/QuickConnectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/QuickConnectService;


# direct methods
.method constructor <init>(Lcom/android/server/QuickConnectService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/QuickConnectService$1;->this$0:Lcom/android/server/QuickConnectService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/QuickConnectService$1;->this$0:Lcom/android/server/QuickConnectService;

    # getter for: Lcom/android/server/QuickConnectService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/QuickConnectService;->access$200(Lcom/android/server/QuickConnectService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/QuickConnectService$1;->this$0:Lcom/android/server/QuickConnectService;

    # getter for: Lcom/android/server/QuickConnectService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/QuickConnectService;->access$200(Lcom/android/server/QuickConnectService;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040af4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_0
    .end packed-switch
.end method
