.class Lcom/android/keyguard/KeyguardPasswordView$5;
.super Ljava/lang/Object;
.source "KeyguardPasswordView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPasswordView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPasswordView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPasswordView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView$5;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView$5;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView$5;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView$5;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardPasswordView;->isHintMessageArea()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView$5;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    # getter for: Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardPasswordView;->access$000(Lcom/android/keyguard/KeyguardPasswordView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "de"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView$5;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    # getter for: Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardPasswordView;->access$000(Lcom/android/keyguard/KeyguardPasswordView;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPasswordView$5;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->kg_status_hint_font_size_small:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView$5;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    # getter for: Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardPasswordView;->access$000(Lcom/android/keyguard/KeyguardPasswordView;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLetterSpacing(F)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView$5;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    # getter for: Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardPasswordView;->access$000(Lcom/android/keyguard/KeyguardPasswordView;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLetterSpacing(F)V

    goto :goto_0
.end method
