.class Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$1;
.super Ljava/lang/Object;
.source "SelectPhoneSimAccountDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$1;->this$0:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$1;->this$0:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    const/4 v2, 0x1

    # setter for: Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mIsSelected:Z
    invoke-static {v1, v2}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->access$002(Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;Z)Z

    iget-object v1, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$1;->this$0:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    # getter for: Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mAccountHandles:Ljava/util/List;
    invoke-static {v1}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->access$100(Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/incallui/InCallPresenter;->handleAccountSelection(Landroid/telecom/PhoneAccountHandle;Z)V

    return-void
.end method
