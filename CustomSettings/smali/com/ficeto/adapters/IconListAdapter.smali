.class public Lcom/ficeto/adapters/IconListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "IconListAdapter.java"

# interfaces
.implements Lcom/ficeto/adapters/BaseListAdapterFilter$IBaseListAdapterFilterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ficeto/adapters/IconListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/ficeto/adapters/IIconListAdapterItem;",
        ">;",
        "Lcom/ficeto/adapters/BaseListAdapterFilter$IBaseListAdapterFilterable",
        "<",
        "Lcom/ficeto/adapters/IIconListAdapterItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ficeto/adapters/IIconListAdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Landroid/widget/Filter;

.field private mFilteredData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ficeto/adapters/IIconListAdapterItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/ficeto/adapters/IIconListAdapterItem;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const v0, 0x1090003

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/ficeto/adapters/IconListAdapter;->mData:Ljava/util/List;

    iput-object v1, p0, Lcom/ficeto/adapters/IconListAdapter;->mFilteredData:Ljava/util/List;

    iput-object p1, p0, Lcom/ficeto/adapters/IconListAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ficeto/adapters/IconListAdapter;->mData:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ficeto/adapters/IconListAdapter;->mFilteredData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    iget-object v0, p0, Lcom/ficeto/adapters/IconListAdapter;->mFilter:Landroid/widget/Filter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ficeto/adapters/BaseListAdapterFilter;

    invoke-direct {v0, p0}, Lcom/ficeto/adapters/BaseListAdapterFilter;-><init>(Lcom/ficeto/adapters/BaseListAdapterFilter$IBaseListAdapterFilterable;)V

    iput-object v0, p0, Lcom/ficeto/adapters/IconListAdapter;->mFilter:Landroid/widget/Filter;

    :cond_0
    iget-object v0, p0, Lcom/ficeto/adapters/IconListAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getFilteredData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ficeto/adapters/IIconListAdapterItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ficeto/adapters/IconListAdapter;->mFilteredData:Ljava/util/List;

    return-object v0
.end method

.method public getOriginalData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ficeto/adapters/IIconListAdapterItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ficeto/adapters/IconListAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x0

    move-object v3, p2

    const/4 v0, 0x0

    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/ficeto/adapters/IconListAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v4, 0x1090003

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    new-instance v0, Lcom/ficeto/adapters/IconListAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/ficeto/adapters/IconListAdapter$ViewHolder;-><init>()V

    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/ficeto/adapters/IconListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/ficeto/adapters/IconListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v4, p0, Lcom/ficeto/adapters/IconListAdapter;->mFilteredData:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ficeto/adapters/IIconListAdapterItem;

    iget-object v4, v0, Lcom/ficeto/adapters/IconListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-interface {v2}, Lcom/ficeto/adapters/IIconListAdapterItem;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/ficeto/adapters/IconListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-interface {v2}, Lcom/ficeto/adapters/IIconListAdapterItem;->getIconLeft()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v2}, Lcom/ficeto/adapters/IIconListAdapterItem;->getIconRight()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v7, v6, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v3

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ficeto/adapters/IconListAdapter$ViewHolder;

    goto :goto_0
.end method

.method public onFilterPublishResults(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ficeto/adapters/IIconListAdapterItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ficeto/adapters/IconListAdapter;->mFilteredData:Ljava/util/List;

    invoke-virtual {p0}, Lcom/ficeto/adapters/IconListAdapter;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ficeto/adapters/IconListAdapter;->mFilteredData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/ficeto/adapters/IconListAdapter;->mFilteredData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ficeto/adapters/IIconListAdapterItem;

    invoke-virtual {p0, v1}, Lcom/ficeto/adapters/IconListAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
