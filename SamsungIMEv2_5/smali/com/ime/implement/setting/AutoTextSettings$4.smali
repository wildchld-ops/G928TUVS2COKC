.class Lcom/ime/implement/setting/AutoTextSettings$4;
.super Ljava/lang/Object;
.source "AutoTextSettings.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/AutoTextSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/AutoTextSettings;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/AutoTextSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/AutoTextSettings$4;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 v3, 0x42

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings$4;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;
    invoke-static {v2}, Lcom/ime/implement/setting/AutoTextSettings;->access$200(Lcom/ime/implement/setting/AutoTextSettings;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_4

    if-ne p2, v3, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings$4;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mIsSelectionModeByOnKey:Z
    invoke-static {v2}, Lcom/ime/implement/setting/AutoTextSettings;->access$300(Lcom/ime/implement/setting/AutoTextSettings;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings$4;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # invokes: Lcom/ime/implement/setting/AutoTextSettings;->toggleFocusedCheckBox()V
    invoke-static {v2}, Lcom/ime/implement/setting/AutoTextSettings;->access$400(Lcom/ime/implement/setting/AutoTextSettings;)V

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings$4;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # invokes: Lcom/ime/implement/setting/AutoTextSettings;->setPressedSelectedItem(Z)V
    invoke-static {v2, v1}, Lcom/ime/implement/setting/AutoTextSettings;->access$500(Lcom/ime/implement/setting/AutoTextSettings;Z)V

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings$4;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # setter for: Lcom/ime/implement/setting/AutoTextSettings;->mIsSelectionModeByOnKey:Z
    invoke-static {v2, v1}, Lcom/ime/implement/setting/AutoTextSettings;->access$302(Lcom/ime/implement/setting/AutoTextSettings;Z)Z

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings$4;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mIsSelectionModeByOnKey:Z
    invoke-static {v2}, Lcom/ime/implement/setting/AutoTextSettings;->access$300(Lcom/ime/implement/setting/AutoTextSettings;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings$4;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mFocusedCheckBox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/ime/implement/setting/AutoTextSettings;->access$000(Lcom/ime/implement/setting/AutoTextSettings;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings$4;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # invokes: Lcom/ime/implement/setting/AutoTextSettings;->toggleFocusedCheckBox()V
    invoke-static {v2}, Lcom/ime/implement/setting/AutoTextSettings;->access$400(Lcom/ime/implement/setting/AutoTextSettings;)V

    :cond_2
    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings$4;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mIsSelectionModeByOnKey:Z
    invoke-static {v2}, Lcom/ime/implement/setting/AutoTextSettings;->access$300(Lcom/ime/implement/setting/AutoTextSettings;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings$4;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # invokes: Lcom/ime/implement/setting/AutoTextSettings;->setPressedSelectedItem(Z)V
    invoke-static {v2, v0}, Lcom/ime/implement/setting/AutoTextSettings;->access$500(Lcom/ime/implement/setting/AutoTextSettings;Z)V

    :cond_3
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    if-ne p2, v3, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings$4;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # setter for: Lcom/ime/implement/setting/AutoTextSettings;->mIsSelectionModeByOnKey:Z
    invoke-static {v2, v0}, Lcom/ime/implement/setting/AutoTextSettings;->access$302(Lcom/ime/implement/setting/AutoTextSettings;Z)Z

    invoke-virtual {p1, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings$4;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    invoke-virtual {v0}, Lcom/ime/implement/setting/AutoTextSettings;->startSelectionMode()V

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings$4;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    invoke-virtual {v0}, Lcom/ime/implement/setting/AutoTextSettings;->invalidateOptionsMenu()V

    goto :goto_1
.end method
