.class public Lcom/android/keyguard/KeyguardMultiUserSelectorView;
.super Landroid/widget/FrameLayout;
.source "KeyguardMultiUserSelectorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final FADE_OUT_ANIMATION_DURATION:I = 0x64

.field private static final TAG:Ljava/lang/String; = "KeyguardMultiUserSelectorView"

.field private static final is3LMAllowed:Z


# instance fields
.field private mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

.field private mActiveUserAvatarSubstituted:Z

.field private mCallback:Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;

.field mOrderAddedComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUsersGrid:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatarSubstituted:Z

    new-instance v0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView$2;-><init>(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mOrderAddedComparator:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardMultiUserSelectorView;Lcom/android/keyguard/KeyguardMultiUserAvatar;)Lcom/android/keyguard/KeyguardMultiUserAvatar;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    return-object p1
.end method

.method private createAndAddUser(Landroid/content/pm/UserInfo;)Lcom/android/keyguard/KeyguardMultiUserAvatar;
    .locals 3

    sget v1, Lcom/android/keyguard/R$layout;->keyguard_multi_user_avatar:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, p0, p1}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->fromXml(ILandroid/content/Context;Lcom/android/keyguard/KeyguardMultiUserSelectorView;Landroid/content/pm/UserInfo;)Lcom/android/keyguard/KeyguardMultiUserAvatar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private setAllClickable(Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setClickable(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addUsers(Ljava/util/Collection;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v12, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "2.0"

    const-string v11, "version"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v11, "user"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    iget-object v10, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v11, "persona"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/os/PersonaManager;->getParentUserForCurrentPersona()I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v10, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mOrderAddedComparator:Ljava/util/Comparator;

    invoke-static {v7, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-direct {p0, v5}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->createAndAddUser(Landroid/content/pm/UserInfo;)Lcom/android/keyguard/KeyguardMultiUserAvatar;

    move-result-object v8

    iget v10, v5, Landroid/content/pm/UserInfo;->id:I

    iget v11, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v10, v11, :cond_2

    iput-object v8, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    :cond_2
    const/4 v10, 0x0

    invoke-virtual {v8, v12, v12, v10}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->setActive(ZZLjava/lang/Runnable;)V

    goto :goto_1

    :catch_0
    move-exception v4

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v10, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->lockPressed(Z)V

    return-void
.end method

.method finalizeActiveUserNow(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->lockPressed(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->setActive(ZZLjava/lang/Runnable;)V

    return-void
.end method

.method public finalizeActiveUserView(Z)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/KeyguardMultiUserSelectorView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView$1;-><init>(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->finalizeActiveUserNow(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    instance-of v1, p1, Lcom/android/keyguard/KeyguardMultiUserAvatar;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/keyguard/KeyguardMultiUserAvatar;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;->showUnlockHint()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;

    const/16 v2, 0x64

    invoke-interface {v1, v2}, Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;->hideSecurityView(I)V

    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->setAllClickable(Z)V

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->lockPressed(Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    new-instance v2, Lcom/android/keyguard/KeyguardMultiUserSelectorView$4;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView$4;-><init>(Lcom/android/keyguard/KeyguardMultiUserSelectorView;Lcom/android/keyguard/KeyguardMultiUserAvatar;)V

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->setActive(ZZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    const/4 v1, 0x0

    sget v0, Lcom/android/keyguard/R$id;->keyguard_users_grid:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->setClipChildren(Z)V

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->setClipToPadding(Z)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;->userActivity()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;

    return-void
.end method
