.class Lcom/ime/implement/setting/AutoTextSettings$18;
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

    iput-object p1, p0, Lcom/ime/implement/setting/AutoTextSettings$18;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const-wide/16 v6, 0x78

    const/4 v8, 0x0

    move-object v4, p1

    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettings$18;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mTitleCheckBox:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/ime/implement/setting/AutoTextSettings;->access$1900(Lcom/ime/implement/setting/AutoTextSettings;)Landroid/widget/CheckBox;

    move-result-object v4

    new-instance v5, Lcom/ime/implement/setting/AutoTextSettings$18$1;

    invoke-direct {v5, p0}, Lcom/ime/implement/setting/AutoTextSettings$18$1;-><init>(Lcom/ime/implement/setting/AutoTextSettings$18;)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/CheckBox;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettings$18;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;
    invoke-static {v4}, Lcom/ime/implement/setting/AutoTextSettings;->access$200(Lcom/ime/implement/setting/AutoTextSettings;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getCheckListSize()I

    move-result v4

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings$18;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;
    invoke-static {v5}, Lcom/ime/implement/setting/AutoTextSettings;->access$200(Lcom/ime/implement/setting/AutoTextSettings;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettings$18;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;
    invoke-static {v4}, Lcom/ime/implement/setting/AutoTextSettings;->access$200(Lcom/ime/implement/setting/AutoTextSettings;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordCheckList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettings$18;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mTitleCheckBoxText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/ime/implement/setting/AutoTextSettings;->access$1700(Lcom/ime/implement/setting/AutoTextSettings;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings$18;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    invoke-virtual {v5}, Lcom/ime/implement/setting/AutoTextSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d02ed

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettings$18;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;
    invoke-static {v4}, Lcom/ime/implement/setting/AutoTextSettings;->access$200(Lcom/ime/implement/setting/AutoTextSettings;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->notifyDataSetChanged()V

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettings$18;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    invoke-virtual {v4}, Lcom/ime/implement/setting/AutoTextSettings;->invalidateOptionsMenu()V

    return-void

    :cond_0
    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettings$18;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mTitleCheckBox:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/ime/implement/setting/AutoTextSettings;->access$1900(Lcom/ime/implement/setting/AutoTextSettings;)Landroid/widget/CheckBox;

    move-result-object v4

    new-instance v5, Lcom/ime/implement/setting/AutoTextSettings$18$2;

    invoke-direct {v5, p0}, Lcom/ime/implement/setting/AutoTextSettings$18$2;-><init>(Lcom/ime/implement/setting/AutoTextSettings$18;)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/CheckBox;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettings$18;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;
    invoke-static {v4}, Lcom/ime/implement/setting/AutoTextSettings;->access$200(Lcom/ime/implement/setting/AutoTextSettings;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordCheckList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettings$18;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;
    invoke-static {v4}, Lcom/ime/implement/setting/AutoTextSettings;->access$200(Lcom/ime/implement/setting/AutoTextSettings;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_2

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettings$18;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;
    invoke-static {v4}, Lcom/ime/implement/setting/AutoTextSettings;->access$200(Lcom/ime/implement/setting/AutoTextSettings;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordCheckList()Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettings$18;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;
    invoke-static {v4}, Lcom/ime/implement/setting/AutoTextSettings;->access$200(Lcom/ime/implement/setting/AutoTextSettings;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettings$18;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mIsTabletMode:Z
    invoke-static {v4}, Lcom/ime/implement/setting/AutoTextSettings;->access$1800(Lcom/ime/implement/setting/AutoTextSettings;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettings$18;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mTitleCheckBoxText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/ime/implement/setting/AutoTextSettings;->access$1700(Lcom/ime/implement/setting/AutoTextSettings;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettings$18;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    invoke-virtual {v5}, Lcom/ime/implement/setting/AutoTextSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d02a0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/ime/implement/setting/AutoTextSettings$18;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;
    invoke-static {v7}, Lcom/ime/implement/setting/AutoTextSettings;->access$200(Lcom/ime/implement/setting/AutoTextSettings;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getUserWordList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettings$18;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mTitleCheckBoxText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/ime/implement/setting/AutoTextSettings;->access$1700(Lcom/ime/implement/setting/AutoTextSettings;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
