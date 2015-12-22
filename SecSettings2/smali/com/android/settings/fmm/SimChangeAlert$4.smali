.class Lcom/android/settings/fmm/SimChangeAlert$4;
.super Ljava/lang/Object;
.source "SimChangeAlert.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/SimChangeAlert;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/SimChangeAlert;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/SimChangeAlert;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fmm/SimChangeAlert$4;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert$4;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    # getter for: Lcom/android/settings/fmm/SimChangeAlert;->mAlertMessage:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/fmm/SimChangeAlert;->access$300(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert$4;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v0}, Lcom/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a1216

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
