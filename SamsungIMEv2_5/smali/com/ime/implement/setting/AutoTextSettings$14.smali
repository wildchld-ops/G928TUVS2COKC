.class Lcom/ime/implement/setting/AutoTextSettings$14;
.super Ljava/lang/Object;
.source "AutoTextSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/AutoTextSettings;->showAddPopupDialog(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/AutoTextSettings;

.field final synthetic val$innerView:Landroid/view/View;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/AutoTextSettings;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/AutoTextSettings$14;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    iput-object p2, p0, Lcom/ime/implement/setting/AutoTextSettings$14;->val$innerView:Landroid/view/View;

    iput-object p3, p0, Lcom/ime/implement/setting/AutoTextSettings$14;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings$14;->val$innerView:Landroid/view/View;

    const v6, 0x7f100011

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings$14;->val$innerView:Landroid/view/View;

    const v6, 0x7f100012

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings$14;->val$innerView:Landroid/view/View;

    const v6, 0x7f100013

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings$14;->val$innerView:Landroid/view/View;

    const v6, 0x7f100010

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings$14;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # invokes: Lcom/ime/implement/setting/AutoTextSettings;->getProhibitionShortcutText(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v4}, Lcom/ime/implement/setting/AutoTextSettings;->access$1000(Lcom/ime/implement/setting/AutoTextSettings;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings$14;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    invoke-virtual {v5}, Lcom/ime/implement/setting/AutoTextSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d02f3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings$14;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->originalShortCutText:Ljava/lang/String;
    invoke-static {v5}, Lcom/ime/implement/setting/AutoTextSettings;->access$1100(Lcom/ime/implement/setting/AutoTextSettings;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings$14;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->originalShortCutText:Ljava/lang/String;
    invoke-static {v5}, Lcom/ime/implement/setting/AutoTextSettings;->access$1100(Lcom/ime/implement/setting/AutoTextSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings$14;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # invokes: Lcom/ime/implement/setting/AutoTextSettings;->getDuplicatedShortcutText(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v4}, Lcom/ime/implement/setting/AutoTextSettings;->access$1200(Lcom/ime/implement/setting/AutoTextSettings;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    if-nez v0, :cond_4

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings$14;->val$v:Landroid/view/View;

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings$14;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # invokes: Lcom/ime/implement/setting/AutoTextSettings;->addUserWord(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v4, v2}, Lcom/ime/implement/setting/AutoTextSettings;->access$1300(Lcom/ime/implement/setting/AutoTextSettings;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings$14;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mAddPopupDialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/ime/implement/setting/AutoTextSettings;->access$1500(Lcom/ime/implement/setting/AutoTextSettings;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    :goto_2
    return-void

    :cond_2
    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings$14;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->originalShortCutText:Ljava/lang/String;
    invoke-static {v5}, Lcom/ime/implement/setting/AutoTextSettings;->access$1100(Lcom/ime/implement/setting/AutoTextSettings;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings$14;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # invokes: Lcom/ime/implement/setting/AutoTextSettings;->getDuplicatedShortcutText(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v4}, Lcom/ime/implement/setting/AutoTextSettings;->access$1200(Lcom/ime/implement/setting/AutoTextSettings;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings$14;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # invokes: Lcom/ime/implement/setting/AutoTextSettings;->editUserWord(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v4, v2}, Lcom/ime/implement/setting/AutoTextSettings;->access$1400(Lcom/ime/implement/setting/AutoTextSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Lcom/ime/implement/setting/AutoTextSettings$14$1;

    invoke-direct {v5, p0, v3}, Lcom/ime/implement/setting/AutoTextSettings$14$1;-><init>(Lcom/ime/implement/setting/AutoTextSettings$14;Landroid/widget/ScrollView;)V

    invoke-virtual {v3, v5}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method
