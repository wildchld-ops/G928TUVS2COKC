.class Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;
.super Landroid/os/AsyncTask;
.source "PhotoringPhrasesEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/photoring/PhotoringPhrasesEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResizeProgress"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private file:Ljava/io/File;

.field filesize:J

.field outFile:Ljava/lang/String;

.field outFileSizeEstimated:I

.field final synthetic this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;


# direct methods
.method private constructor <init>(Lcom/android/phone/photoring/PhotoringPhrasesEdit;Ljava/lang/String;I)V
    .locals 2
    .param p2    # Ljava/lang/String;
    .param p3    # I

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;->filesize:J

    iput-object p2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;->outFile:Ljava/lang/String;

    iput p3, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;->outFileSizeEstimated:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/photoring/PhotoringPhrasesEdit;Ljava/lang/String;ILcom/android/phone/photoring/PhotoringPhrasesEdit$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/photoring/PhotoringPhrasesEdit;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # Lcom/android/phone/photoring/PhotoringPhrasesEdit$1;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;-><init>(Lcom/android/phone/photoring/PhotoringPhrasesEdit;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 8
    .param p1    # [Ljava/lang/Integer;

    :cond_0
    const-wide/16 v4, 0x32

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;->outFile:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;->file:Ljava/io/File;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long v2, v4, v6

    iget-wide v4, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;->filesize:J

    cmp-long v1, v4, v2

    if-gez v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v4, 0x0

    long-to-int v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0, v1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;->publishProgress([Ljava/lang/Object;)V

    iput-wide v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;->filesize:J

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Resize finished..."

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 3

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    # getter for: Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mResizingdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->access$800(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    # getter for: Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mResizingdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->access$800(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PhotoringPhrasesEdit"

    const-string v2, "IllefalArgumentException ; The resizingdialog not attached to window manager"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    # getter for: Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mResizingdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->access$800(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    # getter for: Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mResizingdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->access$800(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PhotoringPhrasesEdit"

    const-string v2, "IllefalArgumentException ; The resizingdialog not attached to window manager"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 4
    .param p1    # [Ljava/lang/Integer;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    # getter for: Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mResizingdialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->access$800(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "PhotoringPhrasesEdit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressUpdate value :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    # getter for: Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mResizingdialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->access$800(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)Landroid/app/ProgressDialog;

    move-result-object v0

    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
