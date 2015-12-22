.class Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "RecentsMultiWindowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpiltPagerAdapter"
.end annotation


# instance fields
.field private mFragmentList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;->mFragmentList:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;->mFragmentList:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerCount:I
    invoke-static {v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$100(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;->mFragmentList:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    new-instance v2, Lcom/android/systemui/multiwindow/SplitRecentsFragment;

    invoke-direct {v2}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;-><init>()V

    :goto_0
    return-object v2

    :cond_0
    new-instance v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;

    invoke-direct {v0}, Lcom/android/systemui/multiwindow/SplitAppListFragment;-><init>()V

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v0, v3}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->setPageNum(I)V

    move-object v2, v0

    goto :goto_0

    :cond_1
    move-object v2, v1

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;->mFragmentList:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method
