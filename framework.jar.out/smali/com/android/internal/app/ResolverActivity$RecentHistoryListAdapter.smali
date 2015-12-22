.class final Lcom/android/internal/app/ResolverActivity$RecentHistoryListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecentHistoryListAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mInitialIntents:[Landroid/content/Intent;

.field private final mIntent:Landroid/content/Intent;

.field private mRecentHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;I)V
    .locals 2

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$RecentHistoryListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$RecentHistoryListAdapter;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$RecentHistoryListAdapter;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$RecentHistoryListAdapter;->mInitialIntents:[Landroid/content/Intent;

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$RecentHistoryListAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$4400(Lcom/android/internal/app/ResolverActivity$RecentHistoryListAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;

    return-object v0
.end method

.method private final setDefaultView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;)V
    .locals 6

    const v4, 0x1020014

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x1020015

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p2, Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p2, Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;->extraInfo:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x1020477

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v4, 0x10804d7

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v4, 0x10804bc

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$RecentHistoryListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060142

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_0
    return-void
.end method

.method private final setItemView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;)V
    .locals 11

    const/4 v10, 0x3

    const/16 v9, 0x8

    const/4 v8, 0x0

    const v7, 0x1020014

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v7, 0x1020015

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x1020473

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p2, Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;->extraInfo:Ljava/lang/CharSequence;

    if-nez v7, :cond_3

    iget-object v7, p2, Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const v7, 0x1020476

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v1, 0x10804be

    const v0, 0x1060142

    const v7, 0x10804d7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v7, p2, Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;->photoIcon:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_0

    iget v7, p2, Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;->iconType:I

    if-ne v7, v10, :cond_5

    :cond_0
    iget-object v7, p2, Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;->photoIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_1

    iget v7, p2, Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;->iconType:I

    if-ne v7, v10, :cond_4

    const v0, 0x1060144

    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_2

    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity$RecentHistoryListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v7}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_2
    return-void

    :cond_3
    iget-object v7, p2, Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p2, Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;->extraInfo:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const v0, 0x1060143

    goto :goto_1

    :cond_5
    iget v7, p2, Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;->iconType:I

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    const v1, 0x10804be

    const v0, 0x1060143

    const-string v7, "ResolverActivity"

    const-string v8, "Wrong icon type!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_1
    const v1, 0x10804bc

    const v0, 0x1060142

    goto :goto_2

    :pswitch_2
    const v1, 0x10804be

    const v0, 0x1060143

    goto :goto_2

    :pswitch_3
    const v1, 0x10804bd

    const v0, 0x1060143

    goto :goto_2

    :pswitch_4
    const v1, 0x10800c7

    const v0, 0x1060145

    goto :goto_2

    :pswitch_5
    const v1, 0x10800c8

    const v0, 0x1060145

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$RecentHistoryListAdapter;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const v2, 0x1020473

    const/4 v3, 0x0

    # getter for: Lcom/android/internal/app/ResolverActivity;->mEasySignUpCertificated:Z
    invoke-static {}, Lcom/android/internal/app/ResolverActivity;->access$4500()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$RecentHistoryListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x109012f

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    # getter for: Lcom/android/internal/app/ResolverActivity;->mEasySignUpCertificated:Z
    invoke-static {}, Lcom/android/internal/app/ResolverActivity;->access$4500()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity$RecentHistoryListAdapter;->setItemView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;)V

    :goto_1
    return-object v0

    :cond_1
    move-object v0, p2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$RecentHistoryListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090130

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, p2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity$RecentHistoryListAdapter;->setDefaultView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$RecentHistoryListInfo;)V

    goto :goto_1
.end method
