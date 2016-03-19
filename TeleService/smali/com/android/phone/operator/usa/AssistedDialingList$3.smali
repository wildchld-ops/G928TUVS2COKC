.class Lcom/android/phone/operator/usa/AssistedDialingList$3;
.super Ljava/lang/Object;
.source "AssistedDialingList.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/usa/AssistedDialingList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/AssistedDialingList;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/AssistedDialingList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 14

    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    iput v9, v8, Lcom/android/phone/operator/usa/AssistedDialingList;->textlength:I

    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    # getter for: Lcom/android/phone/operator/usa/AssistedDialingList;->list_sort:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/phone/operator/usa/AssistedDialingList;->access$900(Lcom/android/phone/operator/usa/AssistedDialingList;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    # getter for: Lcom/android/phone/operator/usa/AssistedDialingList;->la:Landroid/widget/SimpleCursorAdapter;
    invoke-static {v8}, Lcom/android/phone/operator/usa/AssistedDialingList;->access$1000(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/SimpleCursorAdapter;->getCount()I

    move-result v8

    if-ge v3, v8, :cond_2

    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    # getter for: Lcom/android/phone/operator/usa/AssistedDialingList;->la:Landroid/widget/SimpleCursorAdapter;
    invoke-static {v8}, Lcom/android/phone/operator/usa/AssistedDialingList;->access$1000(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/widget/SimpleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    add-int/lit8 v4, v3, 0x1

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    iget v8, v8, Lcom/android/phone/operator/usa/AssistedDialingList;->textlength:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v8, v9, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    iget-object v10, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    iget v10, v10, Lcom/android/phone/operator/usa/AssistedDialingList;->textlength:I

    invoke-virtual {v1, v8, v10}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    iget v10, v10, Lcom/android/phone/operator/usa/AssistedDialingList;->textlength:I

    # invokes: Lcom/android/phone/operator/usa/AssistedDialingList;->getHighlightedString(Ljava/lang/String;II)Landroid/text/SpannableString;
    invoke-static {v8, v1, v9, v10}, Lcom/android/phone/operator/usa/AssistedDialingList;->access$1100(Lcom/android/phone/operator/usa/AssistedDialingList;Ljava/lang/String;II)Landroid/text/SpannableString;

    move-result-object v2

    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    # getter for: Lcom/android/phone/operator/usa/AssistedDialingList;->list_sort:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/phone/operator/usa/AssistedDialingList;->access$900(Lcom/android/phone/operator/usa/AssistedDialingList;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    # getter for: Lcom/android/phone/operator/usa/AssistedDialingList;->list_sort_id:[I
    invoke-static {v8}, Lcom/android/phone/operator/usa/AssistedDialingList;->access$300(Lcom/android/phone/operator/usa/AssistedDialingList;)[I

    move-result-object v8

    add-int/lit8 v6, v5, 0x1

    aput v4, v8, v5

    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    const/4 v9, 0x1

    # setter for: Lcom/android/phone/operator/usa/AssistedDialingList;->issorted:Z
    invoke-static {v8, v9}, Lcom/android/phone/operator/usa/AssistedDialingList;->access$202(Lcom/android/phone/operator/usa/AssistedDialingList;Z)Z

    move v5, v6

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    # getter for: Lcom/android/phone/operator/usa/AssistedDialingList;->listview:Landroid/widget/ListView;
    invoke-static {v8}, Lcom/android/phone/operator/usa/AssistedDialingList;->access$100(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/widget/ListView;

    move-result-object v8

    new-instance v9, Landroid/widget/ArrayAdapter;

    iget-object v10, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    const v11, 0x7f04000a

    const v12, 0x7f10001c

    iget-object v13, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    # getter for: Lcom/android/phone/operator/usa/AssistedDialingList;->list_sort:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/phone/operator/usa/AssistedDialingList;->access$900(Lcom/android/phone/operator/usa/AssistedDialingList;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    # getter for: Lcom/android/phone/operator/usa/AssistedDialingList;->listview:Landroid/widget/ListView;
    invoke-static {v8}, Lcom/android/phone/operator/usa/AssistedDialingList;->access$100(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-nez v7, :cond_3

    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    # getter for: Lcom/android/phone/operator/usa/AssistedDialingList;->listview:Landroid/widget/ListView;
    invoke-static {v8}, Lcom/android/phone/operator/usa/AssistedDialingList;->access$100(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/widget/ListView;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    # getter for: Lcom/android/phone/operator/usa/AssistedDialingList;->search_list:Landroid/widget/FrameLayout;
    invoke-static {v8}, Lcom/android/phone/operator/usa/AssistedDialingList;->access$1200(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/widget/FrameLayout;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    # getter for: Lcom/android/phone/operator/usa/AssistedDialingList;->text_r:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/phone/operator/usa/AssistedDialingList;->access$1300(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/widget/TextView;

    move-result-object v8

    const v9, 0x7f0a04df

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    const/4 v8, 0x1

    return v8

    :cond_3
    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    # getter for: Lcom/android/phone/operator/usa/AssistedDialingList;->listview:Landroid/widget/ListView;
    invoke-static {v8}, Lcom/android/phone/operator/usa/AssistedDialingList;->access$100(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/widget/ListView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    # getter for: Lcom/android/phone/operator/usa/AssistedDialingList;->search_list:Landroid/widget/FrameLayout;
    invoke-static {v8}, Lcom/android/phone/operator/usa/AssistedDialingList;->access$1200(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/widget/FrameLayout;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/android/phone/operator/usa/AssistedDialingList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    # getter for: Lcom/android/phone/operator/usa/AssistedDialingList;->searchtext:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/android/phone/operator/usa/AssistedDialingList;->access$1400(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    # getter for: Lcom/android/phone/operator/usa/AssistedDialingList;->searchtext:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/android/phone/operator/usa/AssistedDialingList;->access$1400(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    const v2, 0x7f10001e

    invoke-virtual {v1, v2}, Lcom/android/phone/operator/usa/AssistedDialingList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    const/4 v1, 0x1

    return v1
.end method
