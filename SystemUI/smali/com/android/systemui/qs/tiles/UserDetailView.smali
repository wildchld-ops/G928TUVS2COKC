.class public Lcom/android/systemui/qs/tiles/UserDetailView;
.super Lcom/android/systemui/qs/PseudoGridView;
.source "UserDetailView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UserDetailView"


# instance fields
.field private mAdapter:Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/PseudoGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static inflate(Landroid/content/Context;Landroid/view/ViewGroup;Z)Lcom/android/systemui/qs/tiles/UserDetailView;
    .locals 2

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040078

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/tiles/UserDetailView;

    return-object v0
.end method

.method private setFocus(Landroid/view/ViewGroup;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v4, 0x1

    if-lt v2, v4, :cond_2

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setNextFocusLeftId(I)V

    :goto_1
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v1, :cond_3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setNextFocusRightId(I)V

    :goto_2
    iget v4, p0, Lcom/android/systemui/qs/tiles/UserDetailView;->mNumColumns:I

    add-int/2addr v4, v2

    if-ge v4, v1, :cond_4

    iget v4, p0, Lcom/android/systemui/qs/tiles/UserDetailView;->mNumColumns:I

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setNextFocusDownId(I)V

    :goto_3
    iget v4, p0, Lcom/android/systemui/qs/tiles/UserDetailView;->mNumColumns:I

    sub-int v4, v2, v4

    if-ltz v4, :cond_5

    iget v4, p0, Lcom/android/systemui/qs/tiles/UserDetailView;->mNumColumns:I

    sub-int v4, v2, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setNextFocusUpId(I)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setNextFocusLeftId(I)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setNextFocusRightId(I)V

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setNextFocusDownId(I)V

    goto :goto_3

    :cond_5
    const v4, 0x102001a

    invoke-virtual {v3, v4}, Landroid/view/View;->setNextFocusUpId(I)V

    goto :goto_4
.end method


# virtual methods
.method public createAndSetAdapter(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UserDetailView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailView;->mAdapter:Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailView;->mAdapter:Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;

    invoke-static {p0, v0}, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->link(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;)V

    invoke-direct {p0, p0}, Lcom/android/systemui/qs/tiles/UserDetailView;->setFocus(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public refreshAdapter()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailView;->mAdapter:Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->refresh()V

    return-void
.end method
