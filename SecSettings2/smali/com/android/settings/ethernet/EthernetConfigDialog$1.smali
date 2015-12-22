.class Lcom/android/settings/ethernet/EthernetConfigDialog$1;
.super Ljava/lang/Object;
.source "EthernetConfigDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ethernet/EthernetConfigDialog;->buildDialogContent(Landroid/content/Context;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ethernet/EthernetConfigDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/ethernet/EthernetConfigDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ethernet/EthernetConfigDialog$1;->this$0:Lcom/android/settings/ethernet/EthernetConfigDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetConfigDialog$1;->this$0:Lcom/android/settings/ethernet/EthernetConfigDialog;

    # getter for: Lcom/android/settings/ethernet/EthernetConfigDialog;->staticInputView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/settings/ethernet/EthernetConfigDialog;->access$000(Lcom/android/settings/ethernet/EthernetConfigDialog;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetConfigDialog$1;->this$0:Lcom/android/settings/ethernet/EthernetConfigDialog;

    # getter for: Lcom/android/settings/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/ethernet/EthernetConfigDialog;->access$100(Lcom/android/settings/ethernet/EthernetConfigDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetConfigDialog$1;->this$0:Lcom/android/settings/ethernet/EthernetConfigDialog;

    # getter for: Lcom/android/settings/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/ethernet/EthernetConfigDialog;->access$100(Lcom/android/settings/ethernet/EthernetConfigDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetConfigDialog$1;->this$0:Lcom/android/settings/ethernet/EthernetConfigDialog;

    # getter for: Lcom/android/settings/ethernet/EthernetConfigDialog;->mConTypeManual:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/android/settings/ethernet/EthernetConfigDialog;->access$200(Lcom/android/settings/ethernet/EthernetConfigDialog;)Landroid/widget/RadioButton;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ethernet/EthernetConfigDialog$1;->this$0:Lcom/android/settings/ethernet/EthernetConfigDialog;

    # getter for: Lcom/android/settings/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings/ethernet/EthernetConfigDialog;->access$100(Lcom/android/settings/ethernet/EthernetConfigDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setNextFocusDownId(I)V

    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetConfigDialog$1;->this$0:Lcom/android/settings/ethernet/EthernetConfigDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/ethernet/EthernetConfigDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ethernet/EthernetConfigDialog$1;->this$0:Lcom/android/settings/ethernet/EthernetConfigDialog;

    # getter for: Lcom/android/settings/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings/ethernet/EthernetConfigDialog;->access$300(Lcom/android/settings/ethernet/EthernetConfigDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setNextFocusUpId(I)V

    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetConfigDialog$1;->this$0:Lcom/android/settings/ethernet/EthernetConfigDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/android/settings/ethernet/EthernetConfigDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ethernet/EthernetConfigDialog$1;->this$0:Lcom/android/settings/ethernet/EthernetConfigDialog;

    # getter for: Lcom/android/settings/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings/ethernet/EthernetConfigDialog;->access$300(Lcom/android/settings/ethernet/EthernetConfigDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setNextFocusUpId(I)V

    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetConfigDialog$1;->this$0:Lcom/android/settings/ethernet/EthernetConfigDialog;

    invoke-virtual {v1}, Lcom/android/settings/ethernet/EthernetConfigDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetConfigDialog$1;->this$0:Lcom/android/settings/ethernet/EthernetConfigDialog;

    # getter for: Lcom/android/settings/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/ethernet/EthernetConfigDialog;->access$100(Lcom/android/settings/ethernet/EthernetConfigDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetConfigDialog$1;->this$0:Lcom/android/settings/ethernet/EthernetConfigDialog;

    # getter for: Lcom/android/settings/ethernet/EthernetConfigDialog;->mDns:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/ethernet/EthernetConfigDialog;->access$400(Lcom/android/settings/ethernet/EthernetConfigDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetConfigDialog$1;->this$0:Lcom/android/settings/ethernet/EthernetConfigDialog;

    # getter for: Lcom/android/settings/ethernet/EthernetConfigDialog;->mGw:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/ethernet/EthernetConfigDialog;->access$300(Lcom/android/settings/ethernet/EthernetConfigDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetConfigDialog$1;->this$0:Lcom/android/settings/ethernet/EthernetConfigDialog;

    # getter for: Lcom/android/settings/ethernet/EthernetConfigDialog;->mMask:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/ethernet/EthernetConfigDialog;->access$500(Lcom/android/settings/ethernet/EthernetConfigDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetConfigDialog$1;->this$0:Lcom/android/settings/ethernet/EthernetConfigDialog;

    invoke-virtual {v1}, Lcom/android/settings/ethernet/EthernetConfigDialog;->enableSaveIfAppropriate()V

    return-void
.end method
