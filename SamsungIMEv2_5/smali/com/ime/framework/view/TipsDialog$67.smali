.class Lcom/ime/framework/view/TipsDialog$67;
.super Ljava/lang/Object;
.source "TipsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/TipsDialog;->showEmptyShortcutsGuideDialog(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/TipsDialog;

.field final synthetic val$chkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/TipsDialog$67;->this$0:Lcom/ime/framework/view/TipsDialog;

    iput-object p2, p0, Lcom/ime/framework/view/TipsDialog$67;->val$chkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog$67;->val$chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog$67;->this$0:Lcom/ime/framework/view/TipsDialog;

    const/4 v1, 0x1

    # setter for: Lcom/ime/framework/view/TipsDialog;->mIsCheckDontShowEmptyShortcutsGuide:Z
    invoke-static {v0, v1}, Lcom/ime/framework/view/TipsDialog;->access$1002(Lcom/ime/framework/view/TipsDialog;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog$67;->this$0:Lcom/ime/framework/view/TipsDialog;

    const/4 v1, 0x0

    # setter for: Lcom/ime/framework/view/TipsDialog;->mIsCheckDontShowEmptyShortcutsGuide:Z
    invoke-static {v0, v1}, Lcom/ime/framework/view/TipsDialog;->access$1002(Lcom/ime/framework/view/TipsDialog;Z)Z

    goto :goto_0
.end method
