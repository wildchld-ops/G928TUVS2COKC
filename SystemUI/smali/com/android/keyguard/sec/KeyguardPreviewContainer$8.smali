.class Lcom/android/keyguard/sec/KeyguardPreviewContainer$8;
.super Landroid/os/AsyncTask;
.source "KeyguardPreviewContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardPreviewContainer;->refreshCameraPreviewIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/view/View;",
        "Landroid/view/View;",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$8;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/view/View;)Landroid/view/View;
    .locals 2

    const-string v0, "KeyguardPreviewContainer"

    const-string v1, "doInBackground - re-creating camera preview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$8;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    # getter for: Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewInflater:Lcom/android/keyguard/sec/KeyguardPreviewInflater;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->access$400(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)Lcom/android/keyguard/sec/KeyguardPreviewInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$8;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    # invokes: Lcom/android/keyguard/sec/KeyguardPreviewContainer;->getCameraIntent()Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->access$600(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->inflatePreview(Landroid/content/Intent;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer$8;->doInBackground([Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$8;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    # getter for: Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mCameraPreview:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->access$700(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$8;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$8;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    # getter for: Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mCameraPreview:Landroid/view/View;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->access$700(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$8;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    # setter for: Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mCameraPreview:Landroid/view/View;
    invoke-static {v0, p1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->access$702(Lcom/android/keyguard/sec/KeyguardPreviewContainer;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$8;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    # getter for: Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mCameraPreview:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->access$700(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$8;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    # getter for: Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mCameraPreview:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->access$700(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$8;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    # getter for: Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mCameraPreview:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->access$700(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/sec/KeyguardPreviewContainer$8$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer$8$1;-><init>(Lcom/android/keyguard/sec/KeyguardPreviewContainer$8;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$8;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$8;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    # getter for: Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mDisplay:Landroid/view/Display;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->access$900(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    # setter for: Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mCameraRotation:I
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->access$802(Lcom/android/keyguard/sec/KeyguardPreviewContainer;I)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$8;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    # getter for: Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mCameraRotation:I
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->access$800(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$8;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    # getter for: Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mCameraRotation:I
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->access$800(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$8;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    # getter for: Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mCameraPreview:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->access$700(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$8;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$8;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    # getter for: Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mCameraPreview:Landroid/view/View;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->access$700(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->addView(Landroid/view/View;)V

    const-string v0, "KeyguardPreviewContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute - re-creating camera preview(rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$8;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    # getter for: Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mCameraRotation:I
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->access$800(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") finished"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer$8;->onPostExecute(Landroid/view/View;)V

    return-void
.end method
