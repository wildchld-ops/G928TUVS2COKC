.class public Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter;
.super Landroid/widget/BaseAdapter;
.source "Xt9HwrRecognitionTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SimeSwipeOnKeyboardAdapter"


# instance fields
.field private mCheckedPosition:I

.field private mContext:Landroid/content/Context;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSummaryEntryValues:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter;->loadData()V

    return-void
.end method

.method private loadData()V
    .locals 4

    iget-object v2, p0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07003e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter;->mEntryValues:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07003f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter;->mSummaryEntryValues:[Ljava/lang/CharSequence;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter;->mSummaryEntryValues:[Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter;->mSummaryEntryValues:[Ljava/lang/CharSequence;

    const-string v2, "SimeSwipeOnKeyboardAdapter"

    iget-object v3, p0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getCheckedPosition()I
    .locals 8

    const/4 v4, -0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v5

    const-string v6, "SETTINGS_DEFAULT_XT9_HWR_RECOG_TYPE"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    :cond_0
    const/4 v3, -0x1

    if-nez v2, :cond_2

    const v3, 0x7f0d03b3

    :cond_1
    :goto_0
    if-ne v3, v4, :cond_3

    const-string v5, "SimeSwipeOnKeyboardAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    :goto_1
    return v1

    :cond_2
    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    const v3, 0x7f0d03b5

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_2
    iget-object v5, p0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v5, v5

    if-ge v1, v5, :cond_5

    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v5, v5, v1

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iput v1, p0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter;->mCheckedPosition:I

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move v1, v4

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-nez p2, :cond_1

    new-instance v0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter$ViewHolder;-><init>()V

    iget-object v1, p0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03001a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x1020016

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v1, 0x1020010

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v1, 0x7f100032

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, v0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v1, p0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter$ViewHolder;

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter$ViewHolder;->title:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v1, v0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter;->mSummaryEntryValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v1, v0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter;->mCheckedPosition:I

    if-ne p1, v1, :cond_5

    iget-object v1, v0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_5
    iget-object v1, v0, Lcom/ime/implement/setting/adapter/Xt9HwrRecognitionTypeAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method
