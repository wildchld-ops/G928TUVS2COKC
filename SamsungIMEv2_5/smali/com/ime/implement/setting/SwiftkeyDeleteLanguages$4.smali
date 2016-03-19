.class Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;
.super Ljava/lang/Object;
.source "SwiftkeyDeleteLanguages.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getListItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$200(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mLPlist:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$400(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$200(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mLPlist:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$400(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_0
    iget-object v6, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$200(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    const/4 v5, 0x1

    :goto_1
    # invokes: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->setDoneMenuEnabled(Z)V
    invoke-static {v6, v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$500(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;Z)V

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$200(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mLPlist:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$400(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_5

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    const/4 v6, 0x1

    # setter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mAllSelected:Z
    invoke-static {v5, v6}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$102(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;Z)Z

    :goto_2
    instance-of v5, p1, Landroid/widget/ListView;

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v5, p3, v3

    invoke-virtual {p1, v5}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v5, v1, Landroid/widget/CheckBox;

    if-eqz v5, :cond_0

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mAllSelected:Z
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$100(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallAdpter:Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$800(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;->setCheckAll(I)V

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    invoke-virtual {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->selectAllItem()V

    :goto_3
    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallAdpter:Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$800(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;->notifyDataSetChanged()V

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$200(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    invoke-virtual {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->deselectAllItem()V

    :cond_1
    :goto_4
    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    iget-object v6, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mAllSelected:Z
    invoke-static {v6}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$100(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->allCheckedUpdate(Z)V

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    invoke-virtual {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    iget-object v5, v5, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectedCountTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$200(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    iget-object v5, v5, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectedCountTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectLanguage:Ljava/lang/String;
    invoke-static {v6}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$600(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_5
    return-void

    :cond_3
    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$200(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mLPlist:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$400(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_5
    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    const/4 v6, 0x0

    # setter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mAllSelected:Z
    invoke-static {v5, v6}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$102(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;Z)Z

    goto/16 :goto_2

    :cond_6
    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallAdpter:Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$800(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;->setCheckAll(I)V

    goto :goto_3

    :cond_7
    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllPopupList:Lcom/sec/android/inputmethod/menu/PopupList;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$000(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Lcom/sec/android/inputmethod/menu/PopupList;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mAllSelected:Z
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$100(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllPopupList:Lcom/sec/android/inputmethod/menu/PopupList;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$000(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Lcom/sec/android/inputmethod/menu/PopupList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/menu/PopupList;->clearItems()V

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllPopupList:Lcom/sec/android/inputmethod/menu/PopupList;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$000(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Lcom/sec/android/inputmethod/menu/PopupList;

    move-result-object v5

    const v6, 0x7f100153

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    const v8, 0x7f0d008d

    invoke-virtual {v7, v8}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/inputmethod/menu/PopupList;->addItem(ILjava/lang/String;)V

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllPopupList:Lcom/sec/android/inputmethod/menu/PopupList;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$000(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Lcom/sec/android/inputmethod/menu/PopupList;

    move-result-object v5

    const v6, 0x7f100154

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    const v8, 0x7f0d02ce

    invoke-virtual {v7, v8}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/inputmethod/menu/PopupList;->addItem(ILjava/lang/String;)V

    goto/16 :goto_4

    :cond_8
    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->misTablet:Z
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$700(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    iget-object v5, v5, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectedCountTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    invoke-virtual {v6}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d02a0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$200(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_9
    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    iget-object v5, v5, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectedCountTextView:Landroid/widget/TextView;

    const-string v6, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$200(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_a
    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    iget-object v5, v5, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllButton:Landroid/widget/Button;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    iget-object v5, v5, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    invoke-virtual {v6}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d02a0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$200(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_b
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    invoke-virtual {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d02a0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$200(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method
