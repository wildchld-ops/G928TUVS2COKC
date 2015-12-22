.class Landroid/widget/Toast$1;
.super Ljava/lang/Object;
.source "Toast.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Toast;->setView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Landroid/widget/Toast;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Toast$1;->this$0:Landroid/widget/Toast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/Toast$1;->this$0:Landroid/widget/Toast;

    iget-object v0, v0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {v0}, Landroid/widget/Toast$TN;->hide()V

    :try_start_0
    # invokes: Landroid/widget/Toast;->getService()Landroid/app/INotificationManager;
    invoke-static {}, Landroid/widget/Toast;->access$000()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Toast$1;->this$0:Landroid/widget/Toast;

    iget-object v1, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Toast$1;->this$0:Landroid/widget/Toast;

    iget-object v2, v2, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
