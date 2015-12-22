.class public Lcom/android/settings/simcardstatus/SimCardStatus$SimLockUpdateTask;
.super Landroid/os/AsyncTask;
.source "SimCardStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/simcardstatus/SimCardStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimLockUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mKddiConnection:Lcom/android/settings/simcardstatus/KddiHttpsUrlConnection;

.field final synthetic this$0:Lcom/android/settings/simcardstatus/SimCardStatus;


# direct methods
.method public constructor <init>(Lcom/android/settings/simcardstatus/SimCardStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/simcardstatus/SimCardStatus$SimLockUpdateTask;->this$0:Lcom/android/settings/simcardstatus/SimCardStatus;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 3

    const-string v0, "SimCardStatus"

    const-string v1, "do in background"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settings/simcardstatus/KddiHttpsUrlConnection;

    invoke-direct {v0}, Lcom/android/settings/simcardstatus/KddiHttpsUrlConnection;-><init>()V

    iput-object v0, p0, Lcom/android/settings/simcardstatus/SimCardStatus$SimLockUpdateTask;->mKddiConnection:Lcom/android/settings/simcardstatus/KddiHttpsUrlConnection;

    iget-object v0, p0, Lcom/android/settings/simcardstatus/SimCardStatus$SimLockUpdateTask;->this$0:Lcom/android/settings/simcardstatus/SimCardStatus;

    iget-object v1, p0, Lcom/android/settings/simcardstatus/SimCardStatus$SimLockUpdateTask;->mKddiConnection:Lcom/android/settings/simcardstatus/KddiHttpsUrlConnection;

    iget-object v2, p0, Lcom/android/settings/simcardstatus/SimCardStatus$SimLockUpdateTask;->this$0:Lcom/android/settings/simcardstatus/SimCardStatus;

    # getter for: Lcom/android/settings/simcardstatus/SimCardStatus;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/simcardstatus/SimCardStatus;->access$100(Lcom/android/settings/simcardstatus/SimCardStatus;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/simcardstatus/KddiHttpsUrlConnection;->post(Landroid/content/Context;)Ljava/nio/ByteBuffer;

    move-result-object v1

    # setter for: Lcom/android/settings/simcardstatus/SimCardStatus;->mSimLockPolicyBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v0, v1}, Lcom/android/settings/simcardstatus/SimCardStatus;->access$202(Lcom/android/settings/simcardstatus/SimCardStatus;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/android/settings/simcardstatus/SimCardStatus$SimLockUpdateTask;->mKddiConnection:Lcom/android/settings/simcardstatus/KddiHttpsUrlConnection;

    invoke-virtual {v0}, Lcom/android/settings/simcardstatus/KddiHttpsUrlConnection;->isSucceed()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/simcardstatus/SimCardStatus$SimLockUpdateTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/simcardstatus/SimCardStatus$SimLockUpdateTask;->this$0:Lcom/android/settings/simcardstatus/SimCardStatus;

    # getter for: Lcom/android/settings/simcardstatus/SimCardStatus;->mUpdateDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/simcardstatus/SimCardStatus;->access$400(Lcom/android/settings/simcardstatus/SimCardStatus;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/simcardstatus/SimCardStatus$SimLockUpdateTask;->this$0:Lcom/android/settings/simcardstatus/SimCardStatus;

    # getter for: Lcom/android/settings/simcardstatus/SimCardStatus;->mUpdateDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/simcardstatus/SimCardStatus;->access$400(Lcom/android/settings/simcardstatus/SimCardStatus;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/simcardstatus/SimCardStatus$SimLockUpdateTask;->this$0:Lcom/android/settings/simcardstatus/SimCardStatus;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/simcardstatus/SimCardStatus;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/simcardstatus/SimCardStatus;->access$500(Lcom/android/settings/simcardstatus/SimCardStatus;I)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/simcardstatus/SimCardStatus$SimLockUpdateTask;->this$0:Lcom/android/settings/simcardstatus/SimCardStatus;

    const/4 v1, 0x2

    # invokes: Lcom/android/settings/simcardstatus/SimCardStatus;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/simcardstatus/SimCardStatus;->access$600(Lcom/android/settings/simcardstatus/SimCardStatus;I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/simcardstatus/SimCardStatus$SimLockUpdateTask;->this$0:Lcom/android/settings/simcardstatus/SimCardStatus;

    const/4 v1, 0x3

    # invokes: Lcom/android/settings/simcardstatus/SimCardStatus;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/simcardstatus/SimCardStatus;->access$700(Lcom/android/settings/simcardstatus/SimCardStatus;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/simcardstatus/SimCardStatus$SimLockUpdateTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
