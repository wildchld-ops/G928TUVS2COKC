.class public Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;
.super Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;
.source "UserDetailView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/UserDetailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Adapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mNotSelected:Ljava/lang/String;

.field private mSelected:Ljava/lang/String;

.field private mUserSwitchProcessing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mUserSwitchProcessing:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0509

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mSelected:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d050a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mNotSelected:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mUserSwitchProcessing:Z

    return p1
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->getItem(I)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    invoke-static {v4, p2, p3}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/tiles/UserDetailItemView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->getName(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->getDrawable(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->bind(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->setActivated(Z)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, p1}, Landroid/view/View;->setId(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mSelected:Ljava/lang/String;

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eq v3, p2, :cond_0

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    return-object v3

    :cond_2
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->bind(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mNotSelected:Ljava/lang/String;

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mUserSwitchProcessing:Z

    if-eqz v1, :cond_0

    const-string v1, "UserDetailView"

    const-string v2, "mUserSwitchProcessing is true, onClick() ignored."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter$1;-><init>(Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mUserSwitchProcessing:Z

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->switchTo(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    goto :goto_0
.end method
