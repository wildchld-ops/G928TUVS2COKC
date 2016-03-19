.class public Lcom/ficeto/adapters/IconCheckListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "IconCheckListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ficeto/adapters/IconCheckListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/ficeto/adapters/IIconCheckListAdapterItem;",
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
            "Lcom/ficeto/adapters/IIconCheckListAdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSubtextEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/ficeto/adapters/IIconCheckListAdapterItem;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f030002

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ficeto/adapters/IconCheckListAdapter;->mData:Ljava/util/List;

    iput-object p1, p0, Lcom/ficeto/adapters/IconCheckListAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ficeto/adapters/IconCheckListAdapter;->mData:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ficeto/adapters/IconCheckListAdapter;->mSubtextEnabled:Z

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x0

    move-object v3, p2

    const/4 v0, 0x0

    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/ficeto/adapters/IconCheckListAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v4, 0x7f030002

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    new-instance v0, Lcom/ficeto/adapters/IconCheckListAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/ficeto/adapters/IconCheckListAdapter$ViewHolder;-><init>()V

    const v4, 0x7f090010

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckedTextView;

    iput-object v4, v0, Lcom/ficeto/adapters/IconCheckListAdapter$ViewHolder;->text:Landroid/widget/CheckedTextView;

    iget-object v4, v0, Lcom/ficeto/adapters/IconCheckListAdapter$ViewHolder;->text:Landroid/widget/CheckedTextView;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/widget/CheckedTextView;->setCompoundDrawablePadding(I)V

    const v4, 0x7f090011

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/ficeto/adapters/IconCheckListAdapter$ViewHolder;->subText:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/ficeto/adapters/IconCheckListAdapter;->mSubtextEnabled:Z

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/ficeto/adapters/IconCheckListAdapter$ViewHolder;->subText:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v4, p0, Lcom/ficeto/adapters/IconCheckListAdapter;->mData:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ficeto/adapters/IIconCheckListAdapterItem;

    iget-object v4, v0, Lcom/ficeto/adapters/IconCheckListAdapter$ViewHolder;->text:Landroid/widget/CheckedTextView;

    invoke-interface {v2}, Lcom/ficeto/adapters/IIconCheckListAdapterItem;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/ficeto/adapters/IconCheckListAdapter$ViewHolder;->text:Landroid/widget/CheckedTextView;

    invoke-interface {v2}, Lcom/ficeto/adapters/IIconCheckListAdapterItem;->getIconLeft()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v2}, Lcom/ficeto/adapters/IIconCheckListAdapterItem;->getIconRight()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v7, v6, v7}, Landroid/widget/CheckedTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v0, Lcom/ficeto/adapters/IconCheckListAdapter$ViewHolder;->text:Landroid/widget/CheckedTextView;

    invoke-interface {v2}, Lcom/ficeto/adapters/IIconCheckListAdapterItem;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v4, v0, Lcom/ficeto/adapters/IconCheckListAdapter$ViewHolder;->subText:Landroid/widget/TextView;

    invoke-interface {v2}, Lcom/ficeto/adapters/IIconCheckListAdapterItem;->getSubText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v3

    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ficeto/adapters/IconCheckListAdapter$ViewHolder;

    goto :goto_0
.end method

.method public setSubtextEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ficeto/adapters/IconCheckListAdapter;->mSubtextEnabled:Z

    return-void
.end method
