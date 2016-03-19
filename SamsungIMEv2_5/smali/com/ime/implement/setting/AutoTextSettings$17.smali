.class Lcom/ime/implement/setting/AutoTextSettings$17;
.super Ljava/lang/Object;
.source "AutoTextSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/AutoTextSettings;->startSelectionMode()V
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

    iput-object p1, p0, Lcom/ime/implement/setting/AutoTextSettings$17;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettings$17;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;
    invoke-static {v3}, Lcom/ime/implement/setting/AutoTextSettings;->access$200(Lcom/ime/implement/setting/AutoTextSettings;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getCheckListSize()I

    move-result v3

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettings$17;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;
    invoke-static {v4}, Lcom/ime/implement/setting/AutoTextSettings;->access$200(Lcom/ime/implement/setting/AutoTextSettings;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettings$17;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;
    invoke-static {v3}, Lcom/ime/implement/setting/AutoTextSettings;->access$200(Lcom/ime/implement/setting/AutoTextSettings;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordCheckList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual {p1, v7}, Landroid/view/View;->setSelected(Z)V

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettings$17;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mTitleCheckBoxText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/ime/implement/setting/AutoTextSettings;->access$1700(Lcom/ime/implement/setting/AutoTextSettings;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettings$17;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    invoke-virtual {v4}, Lcom/ime/implement/setting/AutoTextSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d02ed

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettings$17;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    invoke-virtual {v3, v7}, Lcom/ime/implement/setting/AutoTextSettings;->setTitleCheckBoxChecked(Z)V

    :goto_0
    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettings$17;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;
    invoke-static {v3}, Lcom/ime/implement/setting/AutoTextSettings;->access$200(Lcom/ime/implement/setting/AutoTextSettings;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->notifyDataSetChanged()V

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettings$17;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    invoke-virtual {v3}, Lcom/ime/implement/setting/AutoTextSettings;->invalidateOptionsMenu()V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettings$17;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;
    invoke-static {v3}, Lcom/ime/implement/setting/AutoTextSettings;->access$200(Lcom/ime/implement/setting/AutoTextSettings;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordCheckList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettings$17;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;
    invoke-static {v3}, Lcom/ime/implement/setting/AutoTextSettings;->access$200(Lcom/ime/implement/setting/AutoTextSettings;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettings$17;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;
    invoke-static {v3}, Lcom/ime/implement/setting/AutoTextSettings;->access$200(Lcom/ime/implement/setting/AutoTextSettings;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordCheckList()Ljava/util/List;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettings$17;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    invoke-virtual {v3, v6}, Lcom/ime/implement/setting/AutoTextSettings;->setTitleCheckBoxChecked(Z)V

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettings$17;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;
    invoke-static {v3}, Lcom/ime/implement/setting/AutoTextSettings;->access$200(Lcom/ime/implement/setting/AutoTextSettings;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettings$17;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mIsTabletMode:Z
    invoke-static {v3}, Lcom/ime/implement/setting/AutoTextSettings;->access$1800(Lcom/ime/implement/setting/AutoTextSettings;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettings$17;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mTitleCheckBoxText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/ime/implement/setting/AutoTextSettings;->access$1700(Lcom/ime/implement/setting/AutoTextSettings;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettings$17;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    invoke-virtual {v4}, Lcom/ime/implement/setting/AutoTextSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d02a0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/ime/implement/setting/AutoTextSettings$17;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;
    invoke-static {v6}, Lcom/ime/implement/setting/AutoTextSettings;->access$200(Lcom/ime/implement/setting/AutoTextSettings;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettings$17;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mTitleCheckBoxText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/ime/implement/setting/AutoTextSettings;->access$1700(Lcom/ime/implement/setting/AutoTextSettings;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
