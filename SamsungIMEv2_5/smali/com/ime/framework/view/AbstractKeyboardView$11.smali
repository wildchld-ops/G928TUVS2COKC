.class Lcom/ime/framework/view/AbstractKeyboardView$11;
.super Ljava/lang/Object;
.source "AbstractKeyboardView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/AbstractKeyboardView;->getOnTouchListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/AbstractKeyboardView;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/AbstractKeyboardView;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/AbstractKeyboardView$11;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v5, p1

    check-cast v5, Lcom/ime/framework/view/SymbolKeyTextView;

    invoke-virtual {v5}, Lcom/ime/framework/view/SymbolKeyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    return v8

    :pswitch_0
    iget-object v6, p0, Lcom/ime/framework/view/AbstractKeyboardView$11;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v6, v6, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "SETTINGS_DEFAULT_SUPPORT_KEY_SOUND"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v6, p0, Lcom/ime/framework/view/AbstractKeyboardView$11;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v6, v6, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v7, 0x5

    invoke-interface {v6, v7}, Lcom/ime/framework/common/InputManager;->playSoundEffect(I)V

    :cond_1
    iget-object v6, p0, Lcom/ime/framework/view/AbstractKeyboardView$11;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v6, v6, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v8, v8}, Lcom/ime/framework/common/InputManager;->playVibrateEffect(IZ)V

    goto :goto_0

    :pswitch_1
    iget-object v6, p0, Lcom/ime/framework/view/AbstractKeyboardView$11;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v6, v6, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-static {v4}, Lcom/ime/framework/view/AbstractKeyboardView;->isPairSymbol(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v3, v4

    const-string v6, "\u201c \u201d"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v3, "\u201c\u201d"

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1, v3, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    const-string v6, ""

    const/4 v7, -0x1

    invoke-interface {v1, v6, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    iget-object v6, p0, Lcom/ime/framework/view/AbstractKeyboardView$11;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    # invokes: Lcom/ime/framework/view/AbstractKeyboardView;->isPairCommited()Z
    invoke-static {v6}, Lcom/ime/framework/view/AbstractKeyboardView;->access$2600(Lcom/ime/framework/view/AbstractKeyboardView;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, ""

    const/4 v7, 0x2

    invoke-interface {v1, v6, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/ime/framework/view/AbstractKeyboardView$11;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v6, v6, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v4}, Lcom/ime/framework/common/InputManager;->saveToSymbHistory(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/ime/framework/view/AbstractKeyboardView$11;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v6, v6, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getSymbolLock()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v8}, Lcom/ime/framework/repository/InputModeStatus;->setInputRange(I)V

    iget-object v6, p0, Lcom/ime/framework/view/AbstractKeyboardView$11;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v6, v6, Lcom/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6, v8}, Lcom/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    iget-object v6, p0, Lcom/ime/framework/view/AbstractKeyboardView$11;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v6, v6, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->updateKeyboardView()V

    iget-object v6, p0, Lcom/ime/framework/view/AbstractKeyboardView$11;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v6, v6, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v8}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ime/implement/view/candidate/CandidateView;

    invoke-virtual {v0}, Lcom/ime/implement/view/candidate/CandidateView;->updateToolbar()V

    goto/16 :goto_0

    :cond_4
    const-string v6, "\u2018 \u2019"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v3, "\u2018\u2019"

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_3

    invoke-interface {v1, v4, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
