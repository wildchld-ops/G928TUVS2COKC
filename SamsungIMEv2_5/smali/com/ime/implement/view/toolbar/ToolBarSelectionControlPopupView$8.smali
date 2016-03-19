.class Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$8;
.super Ljava/lang/Object;
.source "ToolBarSelectionControlPopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->build(Landroid/widget/PopupWindow;Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;


# direct methods
.method constructor <init>(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$8;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$8;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    # getter for: Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->SelectButton:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->access$400(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$8;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    # getter for: Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->controlPopupArrow:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->access$500(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$8;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$8;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    const v2, 0x7f100103

    invoke-virtual {v0, v2}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    # setter for: Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->controlPopupArrow:Landroid/widget/RelativeLayout;
    invoke-static {v1, v0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->access$502(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$8;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    # getter for: Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->SelectButton:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->access$400(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$8;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    # getter for: Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->SelectButton:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->access$400(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)Landroid/widget/ToggleButton;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$8;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    invoke-virtual {v1}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$8;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    # getter for: Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;
    invoke-static {v0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->access$600(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$8;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    # getter for: Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;
    invoke-static {v0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->access$600(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getCurrentKeypadType()I

    move-result v0

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$8;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    # getter for: Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->controlPopupArrow:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->access$500(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$8;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    invoke-virtual {v1}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$8;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    # setter for: Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->isSelectingState:Z
    invoke-static {v0, v3}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->access$002(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;Z)Z

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$8;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    # getter for: Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->controlPopupArrow:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->access$500(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$8;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    invoke-virtual {v1}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$8;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    # getter for: Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->SelectButton:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->access$400(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)Landroid/widget/ToggleButton;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$8;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    invoke-virtual {v1}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$8;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    # getter for: Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;
    invoke-static {v0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->access$600(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$8;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    # getter for: Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;
    invoke-static {v0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->access$600(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getCurrentKeypadType()I

    move-result v0

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$8;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    # getter for: Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->controlPopupArrow:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->access$500(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$8;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    invoke-virtual {v1}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$8;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    const/4 v1, 0x0

    # setter for: Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->isSelectingState:Z
    invoke-static {v0, v1}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->access$002(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;Z)Z

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$8;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    const/16 v1, 0x3b

    const/16 v2, 0x41

    iget-object v3, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$8;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    # getter for: Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->SelectButton:Landroid/widget/ToggleButton;
    invoke-static {v3}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->access$400(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)Landroid/widget/ToggleButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    # invokes: Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->sendEvent(IIZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->access$100(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;IIZ)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$8;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    # getter for: Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->controlPopupArrow:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->access$500(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$8;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    invoke-virtual {v1}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method
