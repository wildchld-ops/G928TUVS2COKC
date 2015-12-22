.class Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;
.super Landroid/os/AsyncTask;
.source "LGTNetworkAutoRebootProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RebootProgress"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private MAX_WAIT_TIME:I

.field private SLEEP_TIME:I

.field private isFinish:Z

.field final synthetic this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

.field private waitCount:I


# direct methods
.method private constructor <init>(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)V
    .locals 1

    iput-object p1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/16 v0, 0x7530

    iput v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->MAX_WAIT_TIME:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->SLEEP_TIME:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;-><init>(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    :goto_0
    iget-boolean v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->isFinish:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->waitCount:I

    if-lez v0, :cond_0

    :try_start_0
    iget v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->SLEEP_TIME:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->waitCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->waitCount:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->isFinish:Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    # getter for: Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->isDisableRoamingMultiIMSI:Z
    invoke-static {v0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->access$600(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    # invokes: Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->reboot()V
    invoke-static {v0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->access$900(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    # getter for: Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->access$800(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    # getter for: Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->access$800(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    # getter for: Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->access$800(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->access$802(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 6

    const v3, 0x7f0a0482

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "LGTProgressDialog "

    const-string v2, "onPreExecute"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->isFinish:Z

    iget v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->MAX_WAIT_TIME:I

    iget v2, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->SLEEP_TIME:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->waitCount:I

    const-string v0, ""

    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    # getter for: Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->isDisableRoamingMultiIMSI:Z
    invoke-static {v1}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->access$600(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    # getter for: Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mDialogType:I
    invoke-static {v1}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->access$700(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)I

    move-result v1

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    const v2, 0x7f0a0480

    invoke-virtual {v1, v2}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    iget-object v3, v3, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->access$802(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    # getter for: Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->access$800(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    # getter for: Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->access$800(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    # getter for: Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->access$800(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    # getter for: Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->access$800(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    # getter for: Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->access$800(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    # getter for: Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mDialogType:I
    invoke-static {v1}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->access$700(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    const v2, 0x7f0a047f

    invoke-virtual {v1, v2}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    # getter for: Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->mDialogType:I
    invoke-static {v1}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->access$700(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    const v2, 0x7f0a0481

    invoke-virtual {v1, v2}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    invoke-virtual {v1, v3}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$RebootProgress;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    invoke-virtual {v1, v3}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
