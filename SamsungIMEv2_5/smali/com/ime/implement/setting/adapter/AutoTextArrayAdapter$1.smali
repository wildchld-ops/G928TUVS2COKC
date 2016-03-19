.class Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$1;
.super Ljava/lang/Object;
.source "AutoTextArrayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$1;->this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    iput p2, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$1;->this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    iget v8, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$1;->val$position:I

    # setter for: Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mSeletedUserTermIndex:I
    invoke-static {v5, v8}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->access$002(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;I)I

    iget-object v5, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$1;->this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    # getter for: Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mSelectionMode:Z
    invoke-static {v5}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->access$100(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;)Z

    move-result v5

    if-eqz v5, :cond_6

    const v5, 0x7f100016

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$1;->this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    # getter for: Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mUserWordCheckList:Ljava/util/List;
    invoke-static {v5}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->access$200(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;)Ljava/util/List;

    move-result-object v5

    iget-object v8, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$1;->this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    # getter for: Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mUserWordCheckList:Ljava/util/List;
    invoke-static {v8}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->access$200(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;)Ljava/util/List;

    move-result-object v8

    iget v9, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$1;->val$position:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-interface {v5, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    :goto_1
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v5, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$1;->this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    # getter for: Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mAutoTextSettings:Lcom/ime/implement/setting/AutoTextSettings;
    invoke-static {v5}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->access$300(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;)Lcom/ime/implement/setting/AutoTextSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/implement/setting/AutoTextSettings;->getmSelectActionBarView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const v5, 0x7f10001b

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const v5, 0x7f10001d

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$1;->this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v5}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getCheckListSize()I

    move-result v5

    iget-object v8, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$1;->this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    # getter for: Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mUserWordArrayList:Ljava/util/List;
    invoke-static {v8}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->access$400(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v5, v8, :cond_3

    iget-object v5, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$1;->this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    # getter for: Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->access$500(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0b008d

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_2
    const-string v0, ""

    iget-object v5, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$1;->this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v5}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getCheckListSize()I

    move-result v5

    if-lez v5, :cond_5

    iget-object v5, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$1;->this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    # getter for: Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mIsTabletMode:Z
    invoke-static {v5}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->access$600(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$1;->this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    # getter for: Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->access$500(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0d02a0

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$1;->this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v8}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getCheckListSize()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v5, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$1;->this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v5}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->notifyDataSetChanged()V

    iget-object v5, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$1;->this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    # getter for: Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mAutoTextSettings:Lcom/ime/implement/setting/AutoTextSettings;
    invoke-static {v5}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->access$300(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;)Lcom/ime/implement/setting/AutoTextSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/implement/setting/AutoTextSettings;->invalidateOptionsMenu()V

    :goto_4
    return-void

    :cond_1
    iget-object v5, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$1;->this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    # getter for: Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mUserWordCheckList:Ljava/util/List;
    invoke-static {v5}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->access$200(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;)Ljava/util/List;

    move-result-object v5

    iget v8, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$1;->val$position:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    move v5, v7

    goto/16 :goto_1

    :cond_3
    iget-object v5, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$1;->this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    # getter for: Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->access$500(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0b008e

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$1;->this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    invoke-virtual {v5}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->getCheckListSize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    iget-object v5, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$1;->this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    # getter for: Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->access$500(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d02ed

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    iget-object v5, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter$1;->this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    # getter for: Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->mAutoTextSettings:Lcom/ime/implement/setting/AutoTextSettings;
    invoke-static {v5}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->access$300(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;)Lcom/ime/implement/setting/AutoTextSettings;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/ime/implement/setting/AutoTextSettings;->showAddPopupDialog(Landroid/view/View;)V

    goto :goto_4
.end method
