.class Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$16;
.super Ljava/lang/Object;
.source "AutoTextSettingsFragmentTablet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->startSelectionMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$16;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const-wide/16 v6, 0x78

    move-object v3, p1

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$16;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mTitleCheckBox:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$1400(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Landroid/widget/CheckBox;

    move-result-object v3

    new-instance v4, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$16$1;

    invoke-direct {v4, p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$16$1;-><init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$16;)V

    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/CheckBox;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$16;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;
    invoke-static {v3}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$200(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getCheckListSize()I

    move-result v3

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$16;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;
    invoke-static {v4}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$200(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getUserWordList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$16;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;
    invoke-static {v3}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$200(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getUserWordCheckList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$16;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mTitleCheckBoxText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$1300(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$16;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    invoke-virtual {v4}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d02ed

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$16;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;
    invoke-static {v3}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$200(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->notifyDataSetChanged()V

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$16;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mParentActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$000(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$16;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mTitleCheckBox:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$1400(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Landroid/widget/CheckBox;

    move-result-object v3

    new-instance v4, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$16$2;

    invoke-direct {v4, p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$16$2;-><init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$16;)V

    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/CheckBox;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$16;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;
    invoke-static {v3}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$200(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getUserWordCheckList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$16;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;
    invoke-static {v3}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$200(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getUserWordList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$16;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;
    invoke-static {v3}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$200(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getUserWordCheckList()Ljava/util/List;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$16;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;
    invoke-static {v3}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$200(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getUserWordList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$16;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mTitleCheckBoxText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$1300(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
