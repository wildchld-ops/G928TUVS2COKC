.class Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$8;
.super Ljava/lang/Object;
.source "AutoTextSettingsFragmentTablet.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->showAddPopupDialog(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private beforelength:I

.field private cursor:I

.field private preCursor:I

.field final synthetic this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$8;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$8;->cursor:I

    iput v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$8;->preCursor:I

    iput v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$8;->beforelength:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$8;->beforelength:I

    sub-int v4, v3, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$8;->cursor:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$8;->cursor:I

    :cond_0
    iget v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$8;->cursor:I

    if-ltz v4, :cond_4

    if-lez v3, :cond_4

    iget v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$8;->cursor:I

    if-le v3, v4, :cond_4

    iget v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$8;->cursor:I

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$8;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v4}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$400(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Lcom/ime/framework/common/InputManager;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$8;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v4}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$400(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Lcom/ime/framework/common/InputManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/ime/framework/common/Language;

    move-result-object v4

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$8;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v4}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$400(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Lcom/ime/framework/common/InputManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/ime/framework/common/Language;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/framework/common/Language;->getId()I

    move-result v4

    invoke-static {v0, v4}, Lcom/ime/framework/lang/CharacterUtil;->isTextOrDigitCharacter(CI)Z

    move-result v1

    :cond_3
    if-nez v1, :cond_4

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$8;->cursor:I

    iput v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$8;->preCursor:I

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$8;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mShortCutTextView:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$500(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$8;->preCursor:I

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$8;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mShortCutTextView:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$500(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    if-le v4, v5, :cond_5

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$8;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mShortCutTextView:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$500(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Landroid/widget/EditText;

    move-result-object v4

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$8;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mShortCutTextView:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$500(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$8;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mShortCutTextView:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$500(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Landroid/widget/EditText;

    move-result-object v4

    iget v5, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$8;->preCursor:I

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$8;->beforelength:I

    add-int v0, p2, p4

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$8;->cursor:I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    const/4 v4, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$8;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    iput-boolean v4, v1, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->isShortCutEmpty:Z

    :goto_0
    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$8;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    invoke-virtual {v1}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->setAddPopupOkButtonEnable()V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\p{Space}"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$8;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->isShortCutEmpty:Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$8;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    iput-boolean v4, v1, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->isShortCutEmpty:Z

    goto :goto_0
.end method
