.class Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$2;
.super Ljava/lang/Object;
.source "SwiftkeyDeleteLanguagesFragmentTablet.java"

# interfaces
.implements Lcom/sec/android/inputmethod/menu/PopupList$OnPopupItemClickListener;


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

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$2;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPopupItemClick(I)Z
    .locals 10

    const/4 v6, 0x0

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$2;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$200(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$2;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDisplayView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$300(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$2;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDisplayView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$300(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v7, 0x7f1000e6

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$2;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mAllSelected:Z
    invoke-static {v4}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$100(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_0
    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$2;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # setter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mAllSelected:Z
    invoke-static {v4, v5}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$102(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;Z)Z

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$2;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    invoke-virtual {v4}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->selectAllItem()V

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$2;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # setter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mAllSelected:Z
    invoke-static {v4, v6}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$102(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;Z)Z

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$2;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    invoke-virtual {v4}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->deselectAllItem()V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$2;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mAllSelected:Z
    invoke-static {v4}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$100(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$2;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mLPlist:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$400(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_1

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$2;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$200(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$2;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mLPlist:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$400(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$2;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$2;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$200(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    move v4, v5

    :goto_3
    # invokes: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->setDoneMenuEnabled(Z)V
    invoke-static {v7, v4}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$500(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;Z)V

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$2;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    iget-object v4, v4, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$2;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    invoke-virtual {v7}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d02a0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$2;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$200(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return v5

    :cond_2
    move v4, v6

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x7f100153
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
