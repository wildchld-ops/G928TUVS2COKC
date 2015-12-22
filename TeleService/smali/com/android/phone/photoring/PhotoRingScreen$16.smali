.class Lcom/android/phone/photoring/PhotoRingScreen$16;
.super Ljava/lang/Object;
.source "PhotoRingScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/photoring/PhotoRingScreen;->initPhotoRingScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/photoring/PhotoRingScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/photoring/PhotoRingScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingScreen$16;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$16;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->contactName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/photoring/PhotoRingScreen;->access$2800(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$16;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->contactName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/photoring/PhotoRingScreen;->access$2800(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen$16;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/android/phone/photoring/PhotoRingScreen;->access$2900(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$16;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/photoring/PhotoRingScreen;->contactName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->access$2802(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$16;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const-string v1, ""

    # setter for: Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->access$1102(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$16;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/android/phone/photoring/PhotoRingScreen;->access$2900(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$16;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->bEmptyNumErr:Z
    invoke-static {v0}, Lcom/android/phone/photoring/PhotoRingScreen;->access$3000(Lcom/android/phone/photoring/PhotoRingScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$16;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/android/phone/photoring/PhotoRingScreen;->access$2900(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$16;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/photoring/PhotoRingScreen;->bEmptyNumErr:Z
    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->access$3002(Lcom/android/phone/photoring/PhotoRingScreen;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$16;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->contactName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/photoring/PhotoRingScreen;->access$2800(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$16;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->contactName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/photoring/PhotoRingScreen;->access$2800(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$16;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # invokes: Lcom/android/phone/photoring/PhotoRingScreen;->isValidNumber(Ljava/lang/CharSequence;)Z
    invoke-static {v0, p1}, Lcom/android/phone/photoring/PhotoRingScreen;->access$3100(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$16;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->access$1102(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    return-void
.end method
