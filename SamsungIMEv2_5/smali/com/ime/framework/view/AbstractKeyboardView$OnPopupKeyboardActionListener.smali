.class Lcom/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;
.super Lcom/ime/framework/view/event/KeyboardActionListener;
.source "AbstractKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/view/AbstractKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnPopupKeyboardActionListener"
.end annotation


# instance fields
.field private mDismissOnInput:Z

.field final synthetic this$0:Lcom/ime/framework/view/AbstractKeyboardView;


# direct methods
.method public constructor <init>(Lcom/ime/framework/view/AbstractKeyboardView;)V
    .locals 1

    iput-object p1, p0, Lcom/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-direct {p0}, Lcom/ime/framework/view/event/KeyboardActionListener;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->mDismissOnInput:Z

    return-void
.end method

.method public constructor <init>(Lcom/ime/framework/view/AbstractKeyboardView;Z)V
    .locals 1

    iput-object p1, p0, Lcom/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-direct {p0}, Lcom/ime/framework/view/event/KeyboardActionListener;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->mDismissOnInput:Z

    iput-boolean p2, p0, Lcom/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->mDismissOnInput:Z

    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->mDismissOnInput:Z

    if-nez v0, :cond_0

    const/16 v0, -0x7f

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3f

    if-ne p1, v0, :cond_3

    const p1, 0xff1f

    :cond_2
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ime/framework/repository/InputStatus;->setFlagKeyLongpressed(Z)V

    iget-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, p1, p2}, Lcom/ime/framework/common/InputManager;->onKey(I[I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ime/framework/repository/InputStatus;->setFlagKeyLongpressed(Z)V

    return-void

    :cond_3
    const/16 v0, 0x21

    if-ne p1, v0, :cond_2

    const p1, 0xff01

    goto :goto_0
.end method

.method public onRelease(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->mDismissOnInput:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    :cond_0
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 5

    iget-boolean v1, p0, Lcom/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->mDismissOnInput:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v1, v1, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, p1}, Lcom/ime/framework/common/InputManager;->onText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v1, v1, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v1, v1, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isSurveyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v1, v1, Lcom/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v1, v1, Lcom/ime/framework/view/AbstractKeyboardView;->mKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    if-eqz v1, :cond_1

    const-string v0, ",?!\'@-"

    iget-object v1, p0, Lcom/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v1, v1, Lcom/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v1, v1, Lcom/ime/framework/view/AbstractKeyboardView;->mKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v1}, Lcom/ime/framework/view/DefaultKeyboard;->getPopupMiniKeyboardType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v1, v1, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    const-string v2, "S012"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LEFT("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v1, v1, Lcom/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v1, v1, Lcom/ime/framework/view/AbstractKeyboardView;->mKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v1}, Lcom/ime/framework/view/DefaultKeyboard;->getPopupMiniKeyboardType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v1, v1, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    const-string v2, "S012"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RIGHT("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v1, v1, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    const-string v2, "S012"

    const-string v3, "RECENT_SYMBOLS"

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
