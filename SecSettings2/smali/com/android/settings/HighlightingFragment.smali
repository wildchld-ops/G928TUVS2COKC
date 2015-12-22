.class public Lcom/android/settings/HighlightingFragment;
.super Landroid/app/Fragment;
.source "HighlightingFragment.java"


# instance fields
.field private mHighlightDrawable:Landroid/graphics/drawable/Drawable;

.field private mViewHighlighted:Z

.field private mViewKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/HighlightingFragment;->mViewHighlighted:Z

    return-void
.end method

.method private checkTag(Landroid/view/View;Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    const/high16 v3, 0x7f100000

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private findViewForKey(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 6

    invoke-direct {p0, p1, p2}, Lcom/android/settings/HighlightingFragment;->checkTag(Landroid/view/View;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    return-object p1

    :cond_0
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/settings/HighlightingFragment;->findViewForKey(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object p1, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private getHighlightDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/HighlightingFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/HighlightingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f020233

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/HighlightingFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/HighlightingFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private highlightView(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Lcom/android/settings/HighlightingFragment;->getHighlightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/HighlightingFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/settings/HighlightingFragment;->findViewForKey(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/settings/HighlightingFragment;->getView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/settings/HighlightingFragment$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/settings/HighlightingFragment$1;-><init>(Lcom/android/settings/HighlightingFragment;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/HighlightingFragment;->mViewHighlighted:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public highlightViewIfNeeded()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/HighlightingFragment;->mViewHighlighted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/HighlightingFragment;->mViewKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/HighlightingFragment;->mViewKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/HighlightingFragment;->highlightView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/HighlightingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/HighlightingFragment;->mViewKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/HighlightingFragment;->highlightViewIfNeeded()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "android:view_highlighted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/HighlightingFragment;->mViewHighlighted:Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "android:view_highlighted"

    iget-boolean v1, p0, Lcom/android/settings/HighlightingFragment;->mViewHighlighted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
