.class Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$5;
.super Ljava/lang/Object;
.source "SwiftkeyDeleteLanguages.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getSelectAllViewClickListener()Landroid/widget/AdapterView$OnItemClickListener;
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

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$5;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v8, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$5;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$5;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mAllSelected:Z
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$100(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v6

    :goto_0
    # setter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mAllSelected:Z
    invoke-static {v8, v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$102(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;Z)Z

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$5;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallAdpter:Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$800(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;->notifyDataSetChanged()V

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$5;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$200(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$5;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDisplayView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$300(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$5;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDisplayView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$300(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const v8, 0x7f1000e6

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$5;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mAllSelected:Z
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$100(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Z

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v5, v7

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$5;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mAllSelected:Z
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$100(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$5;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mLPlist:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$400(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_2

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$5;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$200(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v8, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$5;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mLPlist:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$400(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$5;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mAllSelected:Z
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$100(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$5;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallAdpter:Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$800(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;->setCheckAll(I)V

    :goto_3
    iget-object v8, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$5;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$5;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$200(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    move v5, v6

    :goto_4
    # invokes: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->setDoneMenuEnabled(Z)V
    invoke-static {v8, v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$500(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;Z)V

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$5;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    invoke-virtual {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$5;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    invoke-virtual {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0d02a0

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$5;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

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

    :cond_3
    return-void

    :cond_4
    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$5;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallAdpter:Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$800(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-result-object v5

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;->setCheckAll(I)V

    goto :goto_3

    :cond_5
    move v5, v7

    goto :goto_4
.end method
