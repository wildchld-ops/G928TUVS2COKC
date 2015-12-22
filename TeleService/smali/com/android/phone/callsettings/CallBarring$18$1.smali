.class Lcom/android/phone/callsettings/CallBarring$18$1;
.super Ljava/lang/Object;
.source "CallBarring.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/CallBarring$18;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/CallBarring$18;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/CallBarring$18;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/CallBarring$18$1;->this$1:Lcom/android/phone/callsettings/CallBarring$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1    # Landroid/text/Editable;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$18$1;->this$1:Lcom/android/phone/callsettings/CallBarring$18;

    iget-object v2, v2, Lcom/android/phone/callsettings/CallBarring$18;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # setter for: Lcom/android/phone/callsettings/CallBarring;->mOldPW:Z
    invoke-static {v2, v0}, Lcom/android/phone/callsettings/CallBarring;->access$3102(Lcom/android/phone/callsettings/CallBarring;Z)Z

    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$18$1;->this$1:Lcom/android/phone/callsettings/CallBarring$18;

    iget-object v2, v2, Lcom/android/phone/callsettings/CallBarring$18;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # getter for: Lcom/android/phone/callsettings/CallBarring;->passwordDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->access$3400(Lcom/android/phone/callsettings/CallBarring;)Landroid/app/AlertDialog;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$18$1;->this$1:Lcom/android/phone/callsettings/CallBarring$18;

    iget-object v3, v3, Lcom/android/phone/callsettings/CallBarring$18;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # getter for: Lcom/android/phone/callsettings/CallBarring;->mOldPW:Z
    invoke-static {v3}, Lcom/android/phone/callsettings/CallBarring;->access$3100(Lcom/android/phone/callsettings/CallBarring;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$18$1;->this$1:Lcom/android/phone/callsettings/CallBarring$18;

    iget-object v3, v3, Lcom/android/phone/callsettings/CallBarring$18;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # getter for: Lcom/android/phone/callsettings/CallBarring;->mNewPW:Z
    invoke-static {v3}, Lcom/android/phone/callsettings/CallBarring;->access$3200(Lcom/android/phone/callsettings/CallBarring;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring$18$1;->this$1:Lcom/android/phone/callsettings/CallBarring$18;

    iget-object v3, v3, Lcom/android/phone/callsettings/CallBarring$18;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # getter for: Lcom/android/phone/callsettings/CallBarring;->mConfirmPW:Z
    invoke-static {v3}, Lcom/android/phone/callsettings/CallBarring;->access$3300(Lcom/android/phone/callsettings/CallBarring;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$18$1;->this$1:Lcom/android/phone/callsettings/CallBarring$18;

    iget-object v2, v2, Lcom/android/phone/callsettings/CallBarring$18;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # setter for: Lcom/android/phone/callsettings/CallBarring;->mOldPW:Z
    invoke-static {v2, v1}, Lcom/android/phone/callsettings/CallBarring;->access$3102(Lcom/android/phone/callsettings/CallBarring;Z)Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    return-void
.end method
