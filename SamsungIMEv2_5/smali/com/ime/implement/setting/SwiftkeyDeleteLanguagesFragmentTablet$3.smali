.class Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;
.super Ljava/lang/Object;
.source "SwiftkeyDeleteLanguagesFragmentTablet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    const-wide/16 v10, 0x78

    const/4 v6, 0x1

    const/4 v7, 0x0

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    iget-object v5, v5, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    new-instance v8, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3$1;

    invoke-direct {v8, p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3$1;-><init>(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;)V

    invoke-virtual {v5, v8, v10, v11}, Landroid/widget/CheckBox;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # setter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mAllSelected:Z
    invoke-static {v5, v6}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$102(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;Z)Z

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    invoke-virtual {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->selectAllItem()V

    :goto_0
    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$200(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDisplayView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$300(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDisplayView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$300(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const v8, 0x7f1000e6

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mAllSelected:Z
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$100(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    iget-object v5, v5, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    new-instance v8, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3$2;

    invoke-direct {v8, p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3$2;-><init>(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;)V

    invoke-virtual {v5, v8, v10, v11}, Landroid/widget/CheckBox;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # setter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mAllSelected:Z
    invoke-static {v5, v7}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$102(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;Z)Z

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    invoke-virtual {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->deselectAllItem()V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mAllSelected:Z
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$100(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mLPlist:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$400(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_2

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$200(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v8, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mLPlist:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$400(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v8, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$200(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    move v5, v6

    :goto_3
    # invokes: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->setDoneMenuEnabled(Z)V
    invoke-static {v8, v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$500(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;Z)V

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    iget-object v8, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mAllSelected:Z
    invoke-static {v8}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$100(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Z

    move-result v8

    invoke-virtual {v5, v8}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->allCheckedUpdate(Z)V

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    iget-object v5, v5, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectedCountTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$200(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    iget-object v5, v5, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectedCountTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectLanguage:Ljava/lang/String;
    invoke-static {v6}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$600(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_4
    return-void

    :cond_4
    move v5, v7

    goto :goto_3

    :cond_5
    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    iget-object v5, v5, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectedCountTextView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    invoke-virtual {v8}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d02a0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$200(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method
