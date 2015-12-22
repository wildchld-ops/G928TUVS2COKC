.class Lcom/android/incallui/SecDialpadFragment$3;
.super Ljava/lang/Object;
.source "SecDialpadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecDialpadFragment;->showSoftInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecDialpadFragment;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecDialpadFragment;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecDialpadFragment$3;->this$0:Lcom/android/incallui/SecDialpadFragment;

    iput-object p2, p0, Lcom/android/incallui/SecDialpadFragment$3;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragment$3;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragment$3;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/incallui/SecDialpadFragment$3;->this$0:Lcom/android/incallui/SecDialpadFragment;

    # getter for: Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/incallui/SecDialpadFragment;->access$100(Lcom/android/incallui/SecDialpadFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragment$3;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/incallui/SecDialpadFragment$3;->this$0:Lcom/android/incallui/SecDialpadFragment;

    # getter for: Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/incallui/SecDialpadFragment;->access$100(Lcom/android/incallui/SecDialpadFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragment$3;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/incallui/SecDialpadFragment$3;->this$0:Lcom/android/incallui/SecDialpadFragment;

    # getter for: Lcom/android/incallui/SecDialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/incallui/SecDialpadFragment;->access$100(Lcom/android/incallui/SecDialpadFragment;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
