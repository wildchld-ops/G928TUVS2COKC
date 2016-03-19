.class Lcom/ime/framework/view/AbstractKeyboardView$16;
.super Ljava/lang/Object;
.source "AbstractKeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/AbstractKeyboardView;->showSymbolPopupKeyboard()Z
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

    iput-object p1, p0, Lcom/ime/framework/view/AbstractKeyboardView$16;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v2, p0, Lcom/ime/framework/view/AbstractKeyboardView$16;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v2, v2, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/view/AbstractKeyboardView$16;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v2, v2, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->nextSymbolsPage()V

    iget-object v2, p0, Lcom/ime/framework/view/AbstractKeyboardView$16;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    # invokes: Lcom/ime/framework/view/AbstractKeyboardView;->changeSymbolPopupPage()V
    invoke-static {v2}, Lcom/ime/framework/view/AbstractKeyboardView;->access$2800(Lcom/ime/framework/view/AbstractKeyboardView;)V

    iget-object v2, p0, Lcom/ime/framework/view/AbstractKeyboardView$16;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v2}, Lcom/ime/framework/view/AbstractKeyboardView;->getSymbolPopupKeyboardPageLabel()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/ime/framework/view/AbstractKeyboardView$16;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v2, v2, Lcom/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/ime/framework/view/AbstractKeyboardView$16;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3}, Lcom/ime/framework/view/AbstractKeyboardView;->getSymbolPopoupKeyboardPageButtonRscId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v2, p0, Lcom/ime/framework/view/AbstractKeyboardView$16;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v2}, Lcom/ime/framework/view/AbstractKeyboardView;->getSymbolPopupKeyboardPageLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
