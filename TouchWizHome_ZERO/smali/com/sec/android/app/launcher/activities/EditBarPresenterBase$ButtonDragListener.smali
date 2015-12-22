.class public abstract Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;
.super Ljava/lang/Object;
.source "EditBarPresenterBase.java"

# interfaces
.implements Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "ButtonDragListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener$EditBarDetachListener;
    }
.end annotation


# instance fields
.field protected draggedView:Lcom/sec/daliviews/views/NativeViewBase;

.field protected mAnimCanStart:Lcom/sec/daliviews/animation/NativeAnimation;

.field protected mAnimImageCanDisableDrop:Lcom/sec/daliviews/animation/NativeAnimation;

.field protected mAnimImageCanDrop:Lcom/sec/daliviews/animation/NativeAnimation;

.field protected mAnimImageCanUninstallDrop:Lcom/sec/daliviews/animation/NativeAnimation;

.field protected mAnimImageCancelDrop:Lcom/sec/daliviews/animation/NativeAnimation;

.field protected mAnimImageOneDrop:Lcom/sec/daliviews/animation/NativeAnimation;

.field protected mAnimImageOneExit:Lcom/sec/daliviews/animation/NativeAnimation;

.field protected mAnimImageOneOff:Lcom/sec/daliviews/animation/NativeAnimation;

.field protected mAnimImageOneOver:Lcom/sec/daliviews/animation/NativeAnimation;

.field protected mAnimImageThreeOff:Lcom/sec/daliviews/animation/NativeAnimation;

.field protected mAnimImageTwoExit:Lcom/sec/daliviews/animation/NativeAnimation;

.field protected mAnimImageTwoOff:Lcom/sec/daliviews/animation/NativeAnimation;

.field protected mAnimImageTwoOver:Lcom/sec/daliviews/animation/NativeAnimation;

.field protected mAnimImageTwoOverLeft:Lcom/sec/daliviews/animation/NativeAnimation;

.field protected mAnimImageTwoOverRight:Lcom/sec/daliviews/animation/NativeAnimation;

.field protected mAnimTextOff:Lcom/sec/daliviews/animation/NativeAnimation;

.field protected mAnimTextStart:Lcom/sec/daliviews/animation/NativeAnimation;

.field protected final mButton:Lcom/sec/daliviews/views/ContainerView;

.field protected mCancelButtonTextView:Lcom/sec/daliviews/views/TextView;

.field protected mEditBarDetachListener:Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener$EditBarDetachListener;

.field protected mImageCan:Lcom/sec/daliviews/views/NativeViewBase;

.field protected mImageOne:Lcom/sec/daliviews/views/NativeViewBase;

.field protected mImageTwo:Lcom/sec/daliviews/views/NativeViewBase;

.field protected mIsDisableDim:Z

.field protected mLeft:Lcom/sec/daliviews/views/ContainerView;

.field protected final mOverlay:Lcom/sec/daliviews/views/ImageView;

.field protected mRemoveFolderButtonTextView:Lcom/sec/daliviews/views/TextView;

.field protected mRemovePageButtonTextView:Lcom/sec/daliviews/views/TextView;

.field private mRestoreAnimRequired:Z

.field protected mRight:Lcom/sec/daliviews/views/ContainerView;

.field protected mUninstallButtonTextView:Lcom/sec/daliviews/views/TextView;

.field protected mUninstallButtonView:Lcom/sec/daliviews/views/ContainerView;

.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;II)V
    .locals 6

    const v5, 0x7f04001c

    const v4, 0x7f040008

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->this$0:Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mLeft:Lcom/sec/daliviews/views/ContainerView;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mRight:Lcom/sec/daliviews/views/ContainerView;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mUninstallButtonView:Lcom/sec/daliviews/views/ContainerView;

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mRestoreAnimRequired:Z

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageOne:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageTwo:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageCan:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneOver:Lcom/sec/daliviews/animation/NativeAnimation;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneDrop:Lcom/sec/daliviews/animation/NativeAnimation;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageCanDrop:Lcom/sec/daliviews/animation/NativeAnimation;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageCanDisableDrop:Lcom/sec/daliviews/animation/NativeAnimation;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageCanUninstallDrop:Lcom/sec/daliviews/animation/NativeAnimation;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageCancelDrop:Lcom/sec/daliviews/animation/NativeAnimation;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOver:Lcom/sec/daliviews/animation/NativeAnimation;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOverLeft:Lcom/sec/daliviews/animation/NativeAnimation;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOverRight:Lcom/sec/daliviews/animation/NativeAnimation;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneOff:Lcom/sec/daliviews/animation/NativeAnimation;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneExit:Lcom/sec/daliviews/animation/NativeAnimation;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOff:Lcom/sec/daliviews/animation/NativeAnimation;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoExit:Lcom/sec/daliviews/animation/NativeAnimation;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageThreeOff:Lcom/sec/daliviews/animation/NativeAnimation;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimTextOff:Lcom/sec/daliviews/animation/NativeAnimation;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimTextStart:Lcom/sec/daliviews/animation/NativeAnimation;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimCanStart:Lcom/sec/daliviews/animation/NativeAnimation;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->draggedView:Lcom/sec/daliviews/views/NativeViewBase;

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mIsDisableDim:Z

    new-instance v1, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener$EditBarDetachListener;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener$EditBarDetachListener;-><init>(Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$1;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mEditBarDetachListener:Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener$EditBarDetachListener;

    iget-object v1, p1, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1, p2}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/ContainerView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    iget-boolean v1, p1, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUseNewTrashAnim:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    const v2, 0x7f0b007a

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/ContainerView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mUninstallButtonView:Lcom/sec/daliviews/views/ContainerView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    const v2, 0x7f0b007c

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/TextView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mUninstallButtonTextView:Lcom/sec/daliviews/views/TextView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    const v2, 0x7f0b0081

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/TextView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mCancelButtonTextView:Lcom/sec/daliviews/views/TextView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    const v2, 0x7f0b0084

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/TextView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mRemoveFolderButtonTextView:Lcom/sec/daliviews/views/TextView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    const v2, 0x7f0b0087

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/TextView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mRemovePageButtonTextView:Lcom/sec/daliviews/views/TextView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    const v2, 0x7f0b008b

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/ContainerView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mLeft:Lcom/sec/daliviews/views/ContainerView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    const v2, 0x7f0b008c

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/ContainerView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mRight:Lcom/sec/daliviews/views/ContainerView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    const v2, 0x7f0b0129

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageTwo:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    const v2, 0x7f0b012a

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageCan:Lcom/sec/daliviews/views/NativeViewBase;

    :goto_0
    iget-object v1, p1, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1, p3}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mOverlay:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->onInit()V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    const v2, 0x7f0b0128

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageOne:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageOne:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v1, :cond_4

    iget-boolean v1, p1, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUseNewTrashAnim:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    const v2, 0x7f0b0129

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageTwo:Lcom/sec/daliviews/views/NativeViewBase;

    const v1, 0x7f040034

    invoke-static {v0, v1}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneOver:Lcom/sec/daliviews/animation/NativeAnimation;

    const v1, 0x7f040033

    invoke-static {v0, v1}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneOff:Lcom/sec/daliviews/animation/NativeAnimation;

    const v1, 0x7f04003a

    invoke-static {v0, v1}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOver:Lcom/sec/daliviews/animation/NativeAnimation;

    const v1, 0x7f040039

    invoke-static {v0, v1}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOff:Lcom/sec/daliviews/animation/NativeAnimation;

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/ContainerView;->setCanAcceptDrop(Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/ContainerView;->setDragEventInterest(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mLeft:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mRight:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mLeft:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/ContainerView;->setCanAcceptDrop(Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mRight:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/ContainerView;->setCanAcceptDrop(Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mLeft:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/ContainerView;->setDragEventInterest(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mRight:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/ContainerView;->setDragEventInterest(I)V

    :cond_3
    const v1, 0x7f040034

    invoke-static {v0, v1}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneOver:Lcom/sec/daliviews/animation/NativeAnimation;

    const v1, 0x7f040031

    invoke-static {v0, v1}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneDrop:Lcom/sec/daliviews/animation/NativeAnimation;

    const v1, 0x7f040033

    invoke-static {v0, v1}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneOff:Lcom/sec/daliviews/animation/NativeAnimation;

    const v1, 0x7f040032

    invoke-static {v0, v1}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneExit:Lcom/sec/daliviews/animation/NativeAnimation;

    const v1, 0x7f04003b

    invoke-static {v0, v1}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOverLeft:Lcom/sec/daliviews/animation/NativeAnimation;

    const v1, 0x7f04003c

    invoke-static {v0, v1}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOverRight:Lcom/sec/daliviews/animation/NativeAnimation;

    const v1, 0x7f040039

    invoke-static {v0, v1}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOff:Lcom/sec/daliviews/animation/NativeAnimation;

    const v1, 0x7f040038

    invoke-static {v0, v1}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoExit:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-static {v0, v5}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimTextOff:Lcom/sec/daliviews/animation/NativeAnimation;

    const v1, 0x7f04001d

    invoke-static {v0, v1}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimTextStart:Lcom/sec/daliviews/animation/NativeAnimation;

    const v1, 0x7f04001b

    invoke-static {v0, v1}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimCanStart:Lcom/sec/daliviews/animation/NativeAnimation;

    goto/16 :goto_1

    :cond_4
    iget-boolean v1, p1, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUseNewTrashAnim:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/ContainerView;->setCanAcceptDrop(Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/ContainerView;->setDragEventInterest(I)V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    const v2, 0x7f0b0061

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageOne:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageOne:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    const v2, 0x7f0b0060

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageTwo:Lcom/sec/daliviews/views/NativeViewBase;

    const v1, 0x7f04001a

    invoke-static {v0, v1}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneOver:Lcom/sec/daliviews/animation/NativeAnimation;

    const v1, 0x7f040019

    invoke-static {v0, v1}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneOff:Lcom/sec/daliviews/animation/NativeAnimation;

    const v1, 0x7f040018

    invoke-static {v0, v1}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOver:Lcom/sec/daliviews/animation/NativeAnimation;

    const v1, 0x7f040017

    invoke-static {v0, v1}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOff:Lcom/sec/daliviews/animation/NativeAnimation;

    goto/16 :goto_1

    :cond_6
    iget-boolean v1, p1, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUseNewTrashAnim:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/ContainerView;->setCanAcceptDrop(Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/ContainerView;->setDragEventInterest(I)V

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    const v2, 0x7f0b0044

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageOne:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageOne:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    const v2, 0x7f0b0043

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageTwo:Lcom/sec/daliviews/views/NativeViewBase;

    const v1, 0x7f040016

    invoke-static {v0, v1}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneOver:Lcom/sec/daliviews/animation/NativeAnimation;

    const v1, 0x7f040015

    invoke-static {v0, v1}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneOff:Lcom/sec/daliviews/animation/NativeAnimation;

    const v1, 0x7f040014

    invoke-static {v0, v1}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOver:Lcom/sec/daliviews/animation/NativeAnimation;

    const v1, 0x7f040013

    invoke-static {v0, v1}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOff:Lcom/sec/daliviews/animation/NativeAnimation;

    goto/16 :goto_1

    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    const v2, 0x7f0b005b

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageOne:Lcom/sec/daliviews/views/NativeViewBase;

    iget-boolean v1, p1, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUseNewTrashAnim:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/ContainerView;->setCanAcceptDrop(Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/ContainerView;->setDragEventInterest(I)V

    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageOne:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    const v2, 0x7f0b005b

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageTwo:Lcom/sec/daliviews/views/NativeViewBase;

    const v1, 0x7f040007

    invoke-static {v0, v1}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneOver:Lcom/sec/daliviews/animation/NativeAnimation;

    const v1, 0x7f040006

    invoke-static {v0, v1}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneOff:Lcom/sec/daliviews/animation/NativeAnimation;

    const v1, 0x7f04000a

    invoke-static {v0, v1}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOver:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-static {v0, v4}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOff:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-boolean v1, p1, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUseNewTrashAnim:Z

    if-eqz v1, :cond_0

    invoke-static {v0, v4}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageThreeOff:Lcom/sec/daliviews/animation/NativeAnimation;

    const v1, 0x7f040005

    invoke-static {v0, v1}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageCancelDrop:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-static {v0, v5}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimTextOff:Lcom/sec/daliviews/animation/NativeAnimation;

    const v1, 0x7f04001d

    invoke-static {v0, v1}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimTextStart:Lcom/sec/daliviews/animation/NativeAnimation;

    goto/16 :goto_1
.end method


# virtual methods
.method protected abstract canAcceptDrop(Lcom/sec/daliviews/views/Item;)Z
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneOver:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneOver:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneOff:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneOff:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneExit:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneExit:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->destroy()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOver:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOver:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->destroy()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOff:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOff:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->destroy()V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageThreeOff:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageThreeOff:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->destroy()V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOverLeft:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOverLeft:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->destroy()V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOverRight:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOverRight:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->destroy()V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneDrop:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneDrop:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->destroy()V

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageCanDrop:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageCanDrop:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->destroy()V

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageCanDisableDrop:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageCanDisableDrop:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->destroy()V

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageCanUninstallDrop:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageCanUninstallDrop:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->destroy()V

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageCancelDrop:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageCancelDrop:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->destroy()V

    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimTextOff:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimTextOff:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->destroy()V

    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimTextStart:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimTextStart:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->destroy()V

    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimCanStart:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimCanStart:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->destroy()V

    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->draggedView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->draggedView:Lcom/sec/daliviews/views/NativeViewBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->setDetachListener(Lcom/sec/daliviews/views/NativeViewBase$DetachListener;)V

    :cond_10
    return-void
.end method

.method protected abstract handleOnDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
.end method

.method public invalidDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/ContainerViewBase;Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/ContainerViewBase;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDragEnd()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->this$0:Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;

    iget-boolean v0, v0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUseNewTrashAnim:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mRestoreAnimRequired:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mRestoreAnimRequired:Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageOne:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneOver:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOver:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneOff:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageOne:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOff:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageTwo:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mOverlay:Lcom/sec/daliviews/views/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageOne:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneOver:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOver:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOver:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->stop()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOverLeft:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOverLeft:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->stop()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOverRight:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOverRight:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->stop()V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneOff:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageOne:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOff:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOff:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageTwo:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimTextStart:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mUninstallButtonTextView:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimTextStart:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mUninstallButtonTextView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mRemoveFolderButtonTextView:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimTextStart:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mRemoveFolderButtonTextView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mRemovePageButtonTextView:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimTextStart:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mRemovePageButtonTextView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mCancelButtonTextView:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimTextStart:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mCancelButtonTextView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimCanStart:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimCanStart:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageOne:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    goto :goto_0
.end method

.method public onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->this$0:Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;

    iget-boolean v0, v0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUseNewTrashAnim:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mIsDisableDim:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mRestoreAnimRequired:Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageOne:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneOff:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOff:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneOver:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageOne:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOver:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageTwo:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOver:Lcom/sec/daliviews/animation/NativeAnimation;

    new-instance v1, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener$1;-><init>(Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;)V

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->addListener(Lcom/sec/daliviews/animation/NativeAnimation$AnimationListener;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mOverlay:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->announce(Lcom/sec/daliviews/views/NativeViewBase;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mLeft:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mRight:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mIsDisableDim:Z

    if-nez v0, :cond_0

    :cond_5
    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mRestoreAnimRequired:Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageOne:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneOff:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneExit:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneExit:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->stop()V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOff:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneOver:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageOne:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOver:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageTwo:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOver:Lcom/sec/daliviews/animation/NativeAnimation;

    new-instance v1, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener$2;-><init>(Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;)V

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->addListener(Lcom/sec/daliviews/animation/NativeAnimation$AnimationListener;)V

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mOverlay:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->announce(Lcom/sec/daliviews/views/NativeViewBase;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mLeft:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOverLeft:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageTwo:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mRight:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOverRight:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageTwo:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    goto :goto_1
.end method

.method public onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->this$0:Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;

    iget-boolean v0, v0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUseNewTrashAnim:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mIsDisableDim:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mRestoreAnimRequired:Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mOverlay:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageOne:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneOver:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOver:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneOff:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageOne:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOff:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageTwo:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mLeft:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mRight:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mIsDisableDim:Z

    if-nez v0, :cond_0

    :cond_4
    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mRestoreAnimRequired:Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mOverlay:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageOne:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneOver:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOver:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->stop()V

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneExit:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneExit:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageOne:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    const v1, 0x7f0b007f

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageThreeOff:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageThreeOff:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageTwo:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mLeft:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOverLeft:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->stop()V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mRight:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOverRight:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->stop()V

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoExit:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoExit:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageTwo:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOff:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageTwo:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    goto/16 :goto_0
.end method

.method public onDragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method

.method public onDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->this$0:Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;

    iget-boolean v0, v0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUseNewTrashAnim:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mOverlay:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->handleOnDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragEnd()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mLeft:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mRight:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mOverlay:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->handleOnDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mUninstallButtonView:Lcom/sec/daliviews/views/ContainerView;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mCancelButtonTextView:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageCancelDrop:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageCancelDrop:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageOne:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageCanDrop:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageCanDrop:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageCan:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimTextOff:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mUninstallButtonTextView:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimTextOff:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mUninstallButtonTextView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mRemoveFolderButtonTextView:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimTextOff:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mRemoveFolderButtonTextView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mRemovePageButtonTextView:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimTextOff:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mRemovePageButtonTextView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mCancelButtonTextView:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimTextOff:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mCancelButtonTextView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneDrop:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageOneDrop:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageOne:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOff:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOff:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageTwo:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    goto :goto_1

    :cond_a
    check-cast p3, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {p3}, Lcom/sec/android/app/launcher/data/HomeItem;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageCanDisableDrop:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageCanDisableDrop:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageCan:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageCanUninstallDrop:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageCanUninstallDrop:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageCan:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    goto/16 :goto_0
.end method

.method protected onInit()V
    .locals 0

    return-void
.end method

.method onPreDragStart(Lcom/sec/daliviews/views/Item;)Z
    .locals 5

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->canAcceptDrop(Lcom/sec/daliviews/views/Item;)Z

    move-result v0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mButton:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->this$0:Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;

    iget-boolean v1, v1, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUseNewTrashAnim:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mLeft:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mRight:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mLeft:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mRight:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    :cond_0
    return v0

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method public onResizeStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method
