.class public Lcom/ficeto/adapters/BaseListAdapterFilter;
.super Landroid/widget/Filter;
.source "BaseListAdapterFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ficeto/adapters/BaseListAdapterFilter$IBaseListAdapterFilterable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/ficeto/adapters/IBaseListAdapterItem;",
        ">",
        "Landroid/widget/Filter;"
    }
.end annotation


# instance fields
.field private mTarget:Lcom/ficeto/adapters/BaseListAdapterFilter$IBaseListAdapterFilterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ficeto/adapters/BaseListAdapterFilter$IBaseListAdapterFilterable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ficeto/adapters/BaseListAdapterFilter$IBaseListAdapterFilterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ficeto/adapters/BaseListAdapterFilter$IBaseListAdapterFilterable",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    iput-object p1, p0, Lcom/ficeto/adapters/BaseListAdapterFilter;->mTarget:Lcom/ficeto/adapters/BaseListAdapterFilter$IBaseListAdapterFilterable;

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 9

    new-instance v4, Landroid/widget/Filter$FilterResults;

    invoke-direct {v4}, Landroid/widget/Filter$FilterResults;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    new-instance v3, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/ficeto/adapters/BaseListAdapterFilter;->mTarget:Lcom/ficeto/adapters/BaseListAdapterFilter$IBaseListAdapterFilterable;

    invoke-interface {v7}, Lcom/ficeto/adapters/BaseListAdapterFilter$IBaseListAdapterFilterable;->getOriginalData()Ljava/util/List;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    iput-object v3, v4, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    iput v7, v4, Landroid/widget/Filter$FilterResults;->count:I

    :goto_0
    return-object v4

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v0, v7, :cond_2

    iput-object v2, v4, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    iput v7, v4, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ficeto/adapters/IBaseListAdapterItem;

    invoke-interface {v1}, Lcom/ficeto/adapters/IBaseListAdapterItem;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    iget-object v1, p0, Lcom/ficeto/adapters/BaseListAdapterFilter;->mTarget:Lcom/ficeto/adapters/BaseListAdapterFilter$IBaseListAdapterFilterable;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {v1, v0}, Lcom/ficeto/adapters/BaseListAdapterFilter$IBaseListAdapterFilterable;->onFilterPublishResults(Ljava/util/List;)V

    return-void
.end method
