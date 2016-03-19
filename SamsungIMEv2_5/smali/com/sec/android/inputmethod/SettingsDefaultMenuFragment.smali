.class public Lcom/sec/android/inputmethod/SettingsDefaultMenuFragment;
.super Landroid/app/ListFragment;
.source "SettingsDefaultMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/SettingsDefaultMenuFragment$OnListSelectedListener;
    }
.end annotation


# instance fields
.field private mData:[Ljava/lang/String;

.field private mLeftMenuAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mListener:Lcom/sec/android/inputmethod/SettingsDefaultMenuFragment$OnListSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/inputmethod/SettingsDefaultMenuFragment;->mLeftMenuAdapter:Landroid/widget/ArrayAdapter;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/sec/android/inputmethod/SettingsDefaultMenuFragment$OnListSelectedListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/sec/android/inputmethod/SettingsDefaultMenuFragment;->mListener:Lcom/sec/android/inputmethod/SettingsDefaultMenuFragment$OnListSelectedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "must implement OnListSelectedListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/SettingsDefaultMenuFragment;->mData:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    if-ne v0, p3, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0202cd

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    const v1, 0x7f0202ce

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/sec/android/inputmethod/SettingsDefaultMenuFragment;->mListener:Lcom/sec/android/inputmethod/SettingsDefaultMenuFragment$OnListSelectedListener;

    invoke-interface {v1, p3}, Lcom/sec/android/inputmethod/SettingsDefaultMenuFragment$OnListSelectedListener;->onListSelected(I)V

    iget-object v1, p0, Lcom/sec/android/inputmethod/SettingsDefaultMenuFragment;->mLeftMenuAdapter:Landroid/widget/ArrayAdapter;

    check-cast v1, Lcom/ime/implement/setting/adapter/SettingsLeftMenuArrayAdapter;

    invoke-virtual {v1, p3}, Lcom/ime/implement/setting/adapter/SettingsLeftMenuArrayAdapter;->setSelectedMenuIndex(I)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SettingsDefaultMenuFragment;->mLeftMenuAdapter:Landroid/widget/ArrayAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/implement/setting/adapter/SettingsLeftMenuArrayAdapter;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SettingsDefaultMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f030082

    iget-object v3, p0, Lcom/sec/android/inputmethod/SettingsDefaultMenuFragment;->mData:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/ime/implement/setting/adapter/SettingsLeftMenuArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SettingsDefaultMenuFragment;->mLeftMenuAdapter:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/sec/android/inputmethod/SettingsDefaultMenuFragment;->mLeftMenuAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/SettingsDefaultMenuFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SettingsDefaultMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/SettingsDefaultMenuFragment;->mData:[Ljava/lang/String;

    return-void
.end method
