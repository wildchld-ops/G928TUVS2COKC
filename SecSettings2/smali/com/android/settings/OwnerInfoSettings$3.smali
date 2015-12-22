.class Lcom/android/settings/OwnerInfoSettings$3;
.super Ljava/lang/Object;
.source "OwnerInfoSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/OwnerInfoSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OwnerInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/OwnerInfoSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x41

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings/OwnerInfoSettings;->info:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/OwnerInfoSettings;->access$202(Lcom/android/settings/OwnerInfoSettings;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0x41

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_1

    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    # getter for: Lcom/android/settings/OwnerInfoSettings;->info:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/OwnerInfoSettings;->access$200(Lcom/android/settings/OwnerInfoSettings;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    # getter for: Lcom/android/settings/OwnerInfoSettings;->info:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/OwnerInfoSettings;->access$200(Lcom/android/settings/OwnerInfoSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v6, :cond_2

    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    # getter for: Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/OwnerInfoSettings;->access$000(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    # getter for: Lcom/android/settings/OwnerInfoSettings;->info:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/OwnerInfoSettings;->access$200(Lcom/android/settings/OwnerInfoSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    # getter for: Lcom/android/settings/OwnerInfoSettings;->mMaxToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings/OwnerInfoSettings;->access$300(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/Toast;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    iget-object v2, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-virtual {v2}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    const v4, 0x7f0a03bb

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/OwnerInfoSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    # setter for: Lcom/android/settings/OwnerInfoSettings;->mMaxToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/settings/OwnerInfoSettings;->access$302(Lcom/android/settings/OwnerInfoSettings;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    # getter for: Lcom/android/settings/OwnerInfoSettings;->mMaxToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings/OwnerInfoSettings;->access$300(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    # getter for: Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/OwnerInfoSettings;->access$000(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    # getter for: Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings/OwnerInfoSettings;->access$000(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    # getter for: Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/OwnerInfoSettings;->access$000(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    # getter for: Lcom/android/settings/OwnerInfoSettings;->mMaxToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings/OwnerInfoSettings;->access$300(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    # getter for: Lcom/android/settings/OwnerInfoSettings;->mMaxToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings/OwnerInfoSettings;->access$300(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    # getter for: Lcom/android/settings/OwnerInfoSettings;->mMaxToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings/OwnerInfoSettings;->access$300(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
