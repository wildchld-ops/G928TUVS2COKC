.class public Lcom/android/settings/applications/ManageApplications$TabInfo;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabInfo"
.end annotation


# instance fields
.field private mAppStorage:J

.field public mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

.field public final mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

.field public final mClickListener:Lcom/android/settings/applications/AppClickListener;

.field public final mComputingSizeStr:Ljava/lang/CharSequence;

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field public final mFilter:I

.field private mFreeStorage:J

.field public mInflater:Landroid/view/LayoutInflater;

.field public final mInvalidSizeStr:Ljava/lang/CharSequence;

.field public mIsRTL:Z

.field public final mLabel:Ljava/lang/CharSequence;

.field private mListContainer:Landroid/view/View;

.field public final mListType:I

.field private mListView:Landroid/widget/ListView;

.field public mListdividerInsetSize:I

.field private mLoadingContainer:Landroid/view/View;

.field public final mOwner:Lcom/android/settings/applications/ManageApplications;

.field public mRootView:Landroid/view/View;

.field final mRunningProcessesAvail:Ljava/lang/Runnable;

.field private mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

.field private final mSavedInstanceState:Landroid/os/Bundle;

.field private mTotalStorage:J


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/AppClickListener;Landroid/os/Bundle;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFreeStorage:J

    iput-wide v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mAppStorage:J

    iput-wide v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mTotalStorage:J

    iput v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListdividerInsetSize:I

    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mIsRTL:Z

    new-instance v0, Lcom/android/settings/applications/ManageApplications$TabInfo$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$TabInfo$1;-><init>(Lcom/android/settings/applications/ManageApplications$TabInfo;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesAvail:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplications;

    iput-object p2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    iput-object p3, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mLabel:Ljava/lang/CharSequence;

    iput p4, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    packed-switch p4, :pswitch_data_0

    :pswitch_0
    iput v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFilter:I

    :goto_0
    iput-object p5, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mClickListener:Lcom/android/settings/applications/AppClickListener;

    invoke-virtual {p1}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a07d2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a07d1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mComputingSizeStr:Ljava/lang/CharSequence;

    iput-object p6, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mSavedInstanceState:Landroid/os/Bundle;

    return-void

    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFilter:I

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFilter:I

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFilter:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic access$1000(Lcom/android/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/applications/ManageApplications$TabInfo;)Lcom/android/settings/applications/RunningProcessesView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method applyCurrentStorage()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 11

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    :goto_0
    return-object v1

    :cond_0
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v1, v4, :cond_5

    const v1, 0x7f04010e

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const v3, 0x7f100267

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const v3, 0x7f100266

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x1020004

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    if-eqz v9, :cond_1

    invoke-virtual {v10, v9}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v10, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v10, v4}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    invoke-virtual {v10, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {v10, v4}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    iput-object v10, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mIsRTL:Z

    if-eqz v1, :cond_6

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v4, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListdividerInsetSize:I

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    new-instance v1, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    iget v4, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFilter:I

    invoke-direct {v1, v3, p0, v4}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/android/settings/applications/ApplicationsState;Lcom/android/settings/applications/ManageApplications$TabInfo;I)V

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    invoke-static {p2, p3, v1, v2}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    iget v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFilter:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->applyCurrentStorage()V

    :cond_3
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const v2, 0x7f10026c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningProcessesView;

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/RunningProcessesView;->doCreate(Landroid/os/Bundle;)V

    :cond_4
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    goto/16 :goto_0

    :cond_5
    const v1, 0x7f04010b

    goto/16 :goto_1

    :cond_6
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListdividerInsetSize:I

    move-object v3, v0

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public detachView()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method handleRunningProcessesAvail()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningProcessesView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningProcessesView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mClickListener:Lcom/android/settings/applications/AppClickListener;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lcom/android/settings/applications/AppClickListener;->onItemClick(Lcom/android/settings/applications/ManageApplications$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningProcessesView;->doPause()V

    :cond_1
    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->release()V

    :cond_0
    return-void
.end method

.method public resume(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->resume(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplications;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesAvail:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/RunningProcessesView;->doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v1, v4}, Lcom/android/settings/applications/RunningProcessesView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setContainerService(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    return-void
.end method

.method updateStorageUsage()V
    .locals 24

    const/4 v9, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplications;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v18

    if-nez v18, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFreeStorage:J

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications$TabInfo;->mAppStorage:J

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications$TabInfo;->mTotalStorage:J

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFilter:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    # getter for: Lcom/android/settings/applications/ManageApplications;->isSupportInstallExternal:Z
    invoke-static {}, Lcom/android/settings/applications/ManageApplications;->access$000()Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplications;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const-string v19, "storage"

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageManager;

    if-nez v13, :cond_2

    const-string v18, "ManageApplications"

    const-string v19, "Couldn\'t get StorageManager Service"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v13}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v17

    move-object/from16 v6, v17

    array-length v12, v6

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v12, :cond_5

    aget-object v16, v6, v11

    const-string v18, "sd"

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    const-string v18, "mounted"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    const-string v18, "ManageApplications"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "It is mounted("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v15

    const/16 v18, 0x0

    aget-wide v18, v15, v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications$TabInfo;->mTotalStorage:J

    const/16 v18, 0x1

    aget-wide v18, v15, v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFreeStorage:J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v4

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v4, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mAppStorage:J

    move-wide/from16 v18, v0

    iget-wide v0, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    move-wide/from16 v20, v0

    iget-wide v0, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    iget-wide v0, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications$TabInfo;->mAppStorage:J

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :catch_0
    move-exception v7

    const-string v18, "ManageApplications"

    const-string v19, "Problem in function getFileSystemStats(String path)"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v7

    const-string v18, "ManageApplications"

    const-string v19, "Problem in container service"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    move-object/from16 v18, v0

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v15

    const/16 v18, 0x0

    aget-wide v18, v15, v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications$TabInfo;->mTotalStorage:J

    const/16 v18, 0x1

    aget-wide v18, v15, v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFreeStorage:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_8
    :goto_4
    # getter for: Lcom/android/settings/applications/ManageApplications;->isSupportInstallExternal:Z
    invoke-static {}, Lcom/android/settings/applications/ManageApplications;->access$000()Z

    move-result v18

    if-nez v18, :cond_a

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v18

    if-eqz v18, :cond_a

    const/4 v8, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v4

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v4, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mAppStorage:J

    move-wide/from16 v18, v0

    iget-wide v0, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->codeSize:J

    move-wide/from16 v20, v0

    iget-wide v0, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->dataSize:J

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications$TabInfo;->mAppStorage:J

    if-eqz v8, :cond_9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mAppStorage:J

    move-wide/from16 v18, v0

    iget-wide v0, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    move-wide/from16 v20, v0

    iget-wide v0, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications$TabInfo;->mAppStorage:J

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :catch_2
    move-exception v7

    const-string v18, "ManageApplications"

    const-string v19, "Problem in container service"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_a
    const/4 v8, 0x0

    goto :goto_5

    :cond_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFreeStorage:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/applications/ApplicationsState;->sumCacheSizes()J

    move-result-wide v20

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications$TabInfo;->mFreeStorage:J

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->applyCurrentStorage()V

    goto/16 :goto_0
.end method
