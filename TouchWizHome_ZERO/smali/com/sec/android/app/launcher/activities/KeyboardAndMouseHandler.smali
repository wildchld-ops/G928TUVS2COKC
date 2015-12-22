.class public Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;
.super Ljava/lang/Object;
.source "KeyboardAndMouseHandler.java"


# static fields
.field private static final FIRST_ITEM:I = 0x0

.field private static final LAST_ITEM:I = 0x1

.field private static final mPageAnimationDelay:F = 0.1f


# instance fields
.field private final TAG:Ljava/lang/String;

.field mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mAppsMenuButton:Lcom/sec/daliviews/views/TextView;

.field private mCancelDoneBarPresenter:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

.field private mClassName:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mFocusAttached:Z

.field mFocusKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusOutline:Lcom/sec/daliviews/views/ImageView;

.field private mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

.field private mFolderEditText:Landroid/widget/EditText;

.field private mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

.field mIsPopUpDisplayed:Z

.field mIsTopButtonFocused:Z

.field mItemInPage:I

.field private mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

.field private mKeypadFocusAttached:Z

.field private mKeypadFocusOutline:Lcom/sec/daliviews/views/ImageView;

.field mLastPageAddress:J

.field mLastWidgetPageAddress:J

.field private mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

.field private mPackageName:Ljava/lang/CharSequence;

.field mPrevPage:I

.field mPrevPresenter:Lcom/sec/android/app/launcher/activities/PresenterBase;

.field private mScreenGridApplyButton:Lcom/sec/daliviews/views/TextView;

.field mShouldFocusItemInNewPage:Z

.field private mSoundEffect:Z

.field private mSurfaceView:Landroid/view/SurfaceView;

.field mTopAtoZButton:Lcom/sec/daliviews/views/TextView;

.field mTopButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

.field mWidgetMenuButton:Landroid/widget/TextView;

.field mlocale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/view/SurfaceView;Lcom/sec/daliviews/views/ContainerView;Lcom/sec/android/app/launcher/activities/HomePresenter;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusOutline:Lcom/sec/daliviews/views/ImageView;

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusAttached:Z

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeypadFocusOutline:Lcom/sec/daliviews/views/ImageView;

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeypadFocusAttached:Z

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mPackageName:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mClassName:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mSurfaceView:Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mCancelDoneBarPresenter:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mSoundEffect:Z

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFolderEditText:Landroid/widget/EditText;

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mShouldFocusItemInNewPage:Z

    iput v2, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mItemInPage:I

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mAppsMenuButton:Lcom/sec/daliviews/views/TextView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mTopAtoZButton:Lcom/sec/daliviews/views/TextView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetMenuButton:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mScreenGridApplyButton:Lcom/sec/daliviews/views/TextView;

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mIsTopButtonFocused:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mIsPopUpDisplayed:Z

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mTopButtonDrawable:Landroid/graphics/drawable/Drawable;

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mPackageName:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mSurfaceView:Landroid/view/SurfaceView;

    iput-object p5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mClassName:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->createResources()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created with PackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mPackageName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ClassName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mClassName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mlocale:Ljava/util/Locale;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusKeys:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusKeys:Ljava/util/HashSet;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusKeys:Ljava/util/HashSet;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusKeys:Ljava/util/HashSet;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusKeys:Ljava/util/HashSet;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusKeys:Ljava/util/HashSet;

    const/16 v1, 0x42

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusKeys:Ljava/util/HashSet;

    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusKeys:Ljava/util/HashSet;

    const/16 v1, 0x7b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusKeys:Ljava/util/HashSet;

    const/16 v1, 0x7a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusKeys:Ljava/util/HashSet;

    const/16 v1, 0x5c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusKeys:Ljava/util/HashSet;

    const/16 v1, 0x5d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusKeys:Ljava/util/HashSet;

    const/16 v1, 0x106

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusKeys:Ljava/util/HashSet;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private SetFocusOnFolderEditView()V
    .locals 6

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->getOpenFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->TAG:Ljava/lang/String;

    const-string v5, "SetFocusOnFolderEditView : getOpenFolderItem is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getTitleView()Lcom/sec/daliviews/views/TextView;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase;->setFocusable(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->hideSelection()V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getEditTextView()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFolderEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFolderEditText:Landroid/widget/EditText;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFolderEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->isFocused()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFolderEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->showEditText()V

    goto :goto_0
.end method

.method private afterViewChange()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->announce(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mSoundEffect:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/daliviews/views/NativeViewBase;->getTouchFeedback()Lcom/sec/daliviews/views/NativeViewBase$TouchFeedback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/daliviews/views/NativeViewBase;->getTouchFeedback()Lcom/sec/daliviews/views/NativeViewBase$TouchFeedback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/daliviews/views/NativeViewBase$TouchFeedback;->playSoundEffect(I)V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->showSelection()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mSoundEffect:Z

    goto :goto_0
.end method

.method private changePage(Lcom/sec/daliviews/layouts/PageLayout;IIZ)V
    .locals 2

    if-eqz p1, :cond_0

    iput p3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mItemInPage:I

    iput-boolean p4, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mShouldFocusItemInNewPage:Z

    invoke-virtual {p1}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mPrevPage:I

    invoke-virtual {p1}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    add-int/2addr v0, p2

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-virtual {p1, v0, v1}, Lcom/sec/daliviews/layouts/PageLayout;->moveToPage(IF)V

    :cond_0
    return-void
.end method

.method private createResources()V
    .locals 7

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f020000

    invoke-static {v0, v2, v6}, Lcom/sec/daliviews/utils/BitmapUtils;->decodeNinePatch(Landroid/content/Context;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Lcom/sec/daliviews/views/ImageView;

    invoke-direct {v0}, Lcom/sec/daliviews/views/ImageView;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusOutline:Lcom/sec/daliviews/views/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusOutline:Lcom/sec/daliviews/views/ImageView;

    iget v2, v6, Landroid/graphics/Rect;->left:I

    iget v3, v6, Landroid/graphics/Rect;->right:I

    iget v4, v6, Landroid/graphics/Rect;->top:I

    iget v5, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v0 .. v5}, Lcom/sec/daliviews/views/ImageView;->setNinePatchImage(Landroid/graphics/Bitmap;IIII)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f020024

    invoke-static {v0, v2, v6}, Lcom/sec/daliviews/utils/BitmapUtils;->decodeNinePatch(Landroid/content/Context;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Lcom/sec/daliviews/views/ImageView;

    invoke-direct {v0}, Lcom/sec/daliviews/views/ImageView;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeypadFocusOutline:Lcom/sec/daliviews/views/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeypadFocusOutline:Lcom/sec/daliviews/views/ImageView;

    iget v2, v6, Landroid/graphics/Rect;->left:I

    iget v3, v6, Landroid/graphics/Rect;->right:I

    iget v4, v6, Landroid/graphics/Rect;->top:I

    iget v5, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v0 .. v5}, Lcom/sec/daliviews/views/ImageView;->setNinePatchImage(Landroid/graphics/Bitmap;IIII)V

    return-void
.end method

.method private doSearch(Ljava/lang/String;)V
    .locals 6

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mContext:Landroid/content/Context;

    const-string v2, "search"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    return-void
.end method

.method private findNextCloseFocusItem(FZ)Lcom/sec/daliviews/views/NativeViewBase;
    .locals 11

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-eqz p2, :cond_6

    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getHomePageRows()I

    move-result v0

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/daliviews/views/PageView;->getAdapter()Lcom/sec/daliviews/views/Adapter;

    move-result-object v10

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-object v9

    :cond_1
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/daliviews/views/PageView;->getAdapter()Lcom/sec/daliviews/views/Adapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/daliviews/views/Adapter;->getItems()Ljava/util/List;

    move-result-object v5

    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/daliviews/views/Item;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/sec/daliviews/views/Item;->getCellY()I

    move-result v10

    if-ne v10, v2, :cond_2

    if-eqz v7, :cond_3

    invoke-virtual {v4}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/daliviews/views/NativeViewBase;->getXPosition()F

    move-result v10

    sub-float v10, p1, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v10, v10, v6

    if-gez v10, :cond_2

    invoke-virtual {v4}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/daliviews/views/NativeViewBase;->getXPosition()F

    move-result v10

    sub-float v10, p1, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-virtual {v4}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v7

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/daliviews/views/NativeViewBase;->getXPosition()F

    move-result v10

    sub-float v10, p1, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-virtual {v4}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v7

    goto :goto_2

    :cond_4
    if-eqz v7, :cond_5

    move-object v9, v7

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_6
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getTopFivePresenter()Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/daliviews/views/ListAdapter;->getCount()I

    move-result v1

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getTopFivePresenter()Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v10

    if-eqz v10, :cond_0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_9

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getTopFivePresenter()Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getItemAt(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/daliviews/views/NativeViewBase;->getXPosition()F

    move-result v8

    if-eqz v7, :cond_8

    sub-float v10, p1, v8

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v10, v10, v6

    if-gez v10, :cond_7

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getTopFivePresenter()Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getItemAt(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/daliviews/views/NativeViewBase;->getXPosition()F

    move-result v10

    sub-float v10, p1, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getTopFivePresenter()Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getItemAt(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v7

    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    sub-float v10, p1, v8

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getTopFivePresenter()Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getItemAt(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v7

    goto :goto_4

    :cond_9
    if-eqz v7, :cond_0

    move-object v9, v7

    goto/16 :goto_0
.end method

.method private findNextFocusItem(I)V
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/daliviews/views/PageView;->getAdapter()Lcom/sec/daliviews/views/Adapter;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/daliviews/views/PageView;->getAdapter()Lcom/sec/daliviews/views/Adapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/daliviews/views/Adapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_2

    const/4 v3, 0x1

    if-le v0, v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/sec/daliviews/views/NativeViewBase;->navigateFocus(IZ)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-direct {p0, v3}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isFocussable(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-ne v3, v4, :cond_0

    :cond_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getOpenFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getActiveFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    return-object v1

    :cond_1
    instance-of v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAppsFolderPresenter()Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAppsFolderPresenter()Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->getActiveFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    goto :goto_0
.end method

.method private handleEndKey(Lcom/sec/daliviews/layouts/PageLayout;)V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->TAG:Ljava/lang/String;

    const-string v4, "DPAD End"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v2

    instance-of v3, v2, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/sec/daliviews/layouts/PageLayout;->getPagePeer(I)J

    move-result-wide v0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v3, v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->selectFocusPeerLast(J)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->afterViewChange()V

    goto :goto_0
.end method

.method private handleHomeKey(Lcom/sec/daliviews/layouts/PageLayout;)V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->TAG:Ljava/lang/String;

    const-string v4, "DPAD Home"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v2

    instance-of v3, v2, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/sec/daliviews/layouts/PageLayout;->getPagePeer(I)J

    move-result-wide v0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v3, v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->selectFocusPeer(J)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->afterViewChange()V

    goto :goto_0
.end method

.method private handleKeyDown(Lcom/sec/daliviews/layouts/PageLayout;Landroid/view/KeyEvent;)V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->TAG:Ljava/lang/String;

    const-string v6, "DPAD Down"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    instance-of v5, v3, Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getHomescreenMode()Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCancelDonePresenter()Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mCancelDoneBarPresenter:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageEditMode()Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mCancelDoneBarPresenter:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mCancelDoneBarPresenter:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->getDoneButtonEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mCancelDoneBarPresenter:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->getDoneButton()Lcom/sec/daliviews/views/TextView;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mScreenGridApplyButton:Lcom/sec/daliviews/views/TextView;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mScreenGridApplyButton:Lcom/sec/daliviews/views/TextView;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Next Focus view = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v5}, Lcom/sec/daliviews/views/NativeViewBase;->getTag()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v5, v10, v8}, Lcom/sec/daliviews/views/NativeViewBase;->navigateFocus(IZ)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v5, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isFolderOpened()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v5}, Lcom/sec/daliviews/views/NativeViewBase;->getYPosition()F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-static {}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenCellHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_8

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getOpenFolderGridLayout()Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-static {}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenCellHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v9, v7, v6}, Lcom/sec/daliviews/layouts/GridLayout;->scrollContinuouslyBySize(IFF)V

    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v5, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isFolderOpened()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-direct {p0, v5}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isFocussable(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {p0, v10}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->findNextFocusItem(I)V

    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-nez v5, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isFolderOpened()Z

    move-result v5

    if-nez v5, :cond_5

    instance-of v5, v3, Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mPrevPresenter:Lcom/sec/android/app/launcher/activities/PresenterBase;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getTopFivePresenter()Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getItemAt(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPagePresenter()Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPagePresenter()Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getItems()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPagePresenter()Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v5}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    :cond_5
    :goto_2
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-nez v5, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isFolderOpened()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/FolderItem;->getAdapterView()Lcom/sec/daliviews/views/AdapterView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/daliviews/views/AdapterView;->selectFocus()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getOpenFolderGridLayout()Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v5

    invoke-virtual {v5, v8, v7}, Lcom/sec/daliviews/layouts/GridLayout;->scrollContinuously(IF)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getEditTextView()Landroid/widget/EditText;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/views/EditTextView;->getMode()Lcom/sec/android/app/launcher/views/EditTextView$Mode;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/launcher/views/EditTextView$Mode;->EDIT:Lcom/sec/android/app/launcher/views/EditTextView$Mode;

    if-ne v5, v6, :cond_6

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getEditTextView()Landroid/widget/EditText;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/launcher/views/EditTextView;

    sget-object v6, Lcom/sec/android/app/launcher/views/EditTextView$Mode;->TEXT:Lcom/sec/android/app/launcher/views/EditTextView$Mode;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/launcher/views/EditTextView;->setMode(Lcom/sec/android/app/launcher/views/EditTextView$Mode;)V

    :cond_6
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-nez v5, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isWidgetFolderOpened()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getOpenFolderView()Lcom/sec/android/app/launcher/views/OpenFolderView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/views/OpenFolderView;->getAdapterView()Lcom/sec/daliviews/views/AdapterView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/daliviews/views/AdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v5

    check-cast v5, Lcom/sec/daliviews/layouts/GridLayout;

    invoke-virtual {v5, v8, v7}, Lcom/sec/daliviews/layouts/GridLayout;->scrollContinuously(IF)V

    :cond_7
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Next Focus view = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v5}, Lcom/sec/daliviews/views/NativeViewBase;->getYPosition()F

    move-result v5

    cmpg-float v5, v5, v7

    if-gez v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getOpenFolderGridLayout()Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v5

    invoke-virtual {v5, v8, v7}, Lcom/sec/daliviews/layouts/GridLayout;->scrollContinuously(IF)V

    goto/16 :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isWidgetFolderOpened()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v5}, Lcom/sec/daliviews/views/NativeViewBase;->getYPosition()F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-static {}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getCellHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getOpenFolderView()Lcom/sec/android/app/launcher/views/OpenFolderView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/views/OpenFolderView;->getAdapterView()Lcom/sec/daliviews/views/AdapterView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/daliviews/views/AdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v5

    check-cast v5, Lcom/sec/daliviews/layouts/GridLayout;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-static {}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getCellHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v9, v7, v6}, Lcom/sec/daliviews/layouts/GridLayout;->scrollContinuouslyBySize(IFF)V

    goto/16 :goto_1

    :cond_a
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v5}, Lcom/sec/daliviews/views/NativeViewBase;->getYPosition()F

    move-result v5

    cmpg-float v5, v5, v7

    if-gez v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getOpenFolderView()Lcom/sec/android/app/launcher/views/OpenFolderView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/views/OpenFolderView;->getAdapterView()Lcom/sec/daliviews/views/AdapterView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/daliviews/views/AdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v5

    check-cast v5, Lcom/sec/daliviews/layouts/GridLayout;

    invoke-virtual {v5, v8, v7}, Lcom/sec/daliviews/layouts/GridLayout;->scrollContinuously(IF)V

    goto/16 :goto_1

    :cond_b
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/4 v2, 0x0

    instance-of v5, v4, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v5, :cond_d

    check-cast v4, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/daliviews/views/NativeViewBase;->getXPosition()F

    move-result v2

    :cond_c
    :goto_3
    cmpl-float v5, v2, v7

    if-eqz v5, :cond_e

    invoke-direct {p0, v2, v8}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->findNextCloseFocusItem(FZ)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto/16 :goto_2

    :cond_d
    instance-of v5, v4, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v5, :cond_c

    check-cast v4, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/FolderItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/daliviews/views/NativeViewBase;->getXPosition()F

    move-result v2

    goto :goto_3

    :cond_e
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getTopFivePresenter()Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getAppsItem()Lcom/sec/android/app/launcher/data/HomeItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto/16 :goto_2
.end method

.method private handleKeyUp(Lcom/sec/daliviews/layouts/PageLayout;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->TAG:Ljava/lang/String;

    const-string v5, "DPAD Up"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v4, v2, Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getHomescreenMode()Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageEditMode()Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mScreenGridApplyButton:Lcom/sec/daliviews/views/TextView;

    if-eq v4, v5, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Next Focus view = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/NativeViewBase;->getTag()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v4, v7, v8}, Lcom/sec/daliviews/views/NativeViewBase;->navigateFocus(IZ)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-nez v4, :cond_5

    const/4 v1, 0x0

    instance-of v4, v3, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v4, :cond_8

    check-cast v3, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/views/NativeViewBase;->getXPosition()F

    move-result v1

    :cond_4
    :goto_1
    invoke-direct {p0, v1, v7}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->findNextCloseFocusItem(FZ)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v4, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isFolderOpened()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/NativeViewBase;->getYPosition()F

    move-result v4

    cmpg-float v4, v4, v6

    if-gez v4, :cond_9

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getOpenFolderGridLayout()Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-static {}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenCellHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v8, v6, v5}, Lcom/sec/daliviews/layouts/GridLayout;->scrollContinuouslyBySize(IFF)V

    :cond_6
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-direct {p0, v4}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isFocussable(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-direct {p0, v7}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->findNextFocusItem(I)V

    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Next Focus view="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    instance-of v4, v3, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v4, :cond_4

    check-cast v3, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/FolderItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/views/NativeViewBase;->getXPosition()F

    move-result v1

    goto :goto_1

    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/NativeViewBase;->getYPosition()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-static {}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenCellHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getOpenFolderGridLayout()Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v4

    invoke-virtual {v4, v7, v6}, Lcom/sec/daliviews/layouts/GridLayout;->scrollContinuously(IF)V

    goto :goto_2

    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isWidgetFolderOpened()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/NativeViewBase;->getYPosition()F

    move-result v4

    cmpg-float v4, v4, v6

    if-gez v4, :cond_b

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getOpenFolderView()Lcom/sec/android/app/launcher/views/OpenFolderView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/views/OpenFolderView;->getAdapterView()Lcom/sec/daliviews/views/AdapterView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/views/AdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v4

    check-cast v4, Lcom/sec/daliviews/layouts/GridLayout;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-static {}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getCellHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v8, v6, v5}, Lcom/sec/daliviews/layouts/GridLayout;->scrollContinuouslyBySize(IFF)V

    goto/16 :goto_2

    :cond_b
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/NativeViewBase;->getYPosition()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-static {}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getCellHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getOpenFolderView()Lcom/sec/android/app/launcher/views/OpenFolderView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/views/OpenFolderView;->getAdapterView()Lcom/sec/daliviews/views/AdapterView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/views/AdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v4

    check-cast v4, Lcom/sec/daliviews/layouts/GridLayout;

    invoke-virtual {v4, v7, v6}, Lcom/sec/daliviews/layouts/GridLayout;->scrollContinuously(IF)V

    goto/16 :goto_2
.end method

.method private handleLeftKey(Lcom/sec/daliviews/layouts/PageLayout;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->TAG:Ljava/lang/String;

    const-string v2, "DPAD Left"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isViewInOptionTray(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v1, v4, v4}, Lcom/sec/daliviews/views/NativeViewBase;->navigateFocus(IZ)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Next Focus view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isFocussable(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v4}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->findNextFocusItem(I)V

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getOptionTrayPresenter()Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->getPrevView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isFolderOpened()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isWidgetFolderOpened()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mIsTopButtonFocused:Z

    if-nez v1, :cond_4

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isZeroPageFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v1

    if-ne v1, v5, :cond_3

    invoke-direct {p0, p1, v4, v5, v5}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->changePage(Lcom/sec/daliviews/layouts/PageLayout;IIZ)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v1, -0x1

    invoke-direct {p0, p1, v1, v5, v5}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->changePage(Lcom/sec/daliviews/layouts/PageLayout;IIZ)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isFolderOpened()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/NativeViewBase;->getYPosition()F

    move-result v1

    cmpg-float v1, v1, v6

    if-gez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getOpenFolderGridLayout()Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-static {}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenCellHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v6, v2}, Lcom/sec/daliviews/layouts/GridLayout;->scrollContinuouslyBySize(IFF)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/NativeViewBase;->getYPosition()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-static {}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenCellHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getOpenFolderGridLayout()Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Lcom/sec/daliviews/layouts/GridLayout;->scrollContinuously(IF)V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isWidgetFolderOpened()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/NativeViewBase;->getYPosition()F

    move-result v1

    cmpg-float v1, v1, v6

    if-gez v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getOpenFolderView()Lcom/sec/android/app/launcher/views/OpenFolderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/OpenFolderView;->getAdapterView()Lcom/sec/daliviews/views/AdapterView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/AdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/layouts/GridLayout;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-static {}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getCellHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v6, v2}, Lcom/sec/daliviews/layouts/GridLayout;->scrollContinuouslyBySize(IFF)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/NativeViewBase;->getYPosition()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-static {}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getCellHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getOpenFolderView()Lcom/sec/android/app/launcher/views/OpenFolderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/OpenFolderView;->getAdapterView()Lcom/sec/daliviews/views/AdapterView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/AdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/layouts/GridLayout;

    invoke-virtual {v1, v5, v6}, Lcom/sec/daliviews/layouts/GridLayout;->scrollContinuously(IF)V

    goto/16 :goto_0
.end method

.method private handleNonFocusKeys(Landroid/view/KeyEvent;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isNumLockOn()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/16 v7, 0x90

    if-lt v6, v7, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/16 v7, 0x99

    if-gt v6, v7, :cond_3

    move v1, v4

    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v2

    instance-of v6, v2, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    if-eqz v6, :cond_0

    check-cast v2, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->isVisible()Z

    move-result v3

    :cond_0
    const/16 v6, 0x54

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    if-eq v6, v7, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isFolderOpened()Z

    move-result v6

    if-nez v6, :cond_2

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v1, :cond_2

    iget v6, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayLabel()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mlocale:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->doSearch(Ljava/lang/String;)V

    move v5, v4

    :cond_2
    return v5

    :cond_3
    move v1, v5

    goto :goto_0
.end method

.method private handlePageDownKey(Lcom/sec/daliviews/layouts/PageLayout;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->TAG:Ljava/lang/String;

    const-string v2, "DPAD Page Down"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v3, v1, v3}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->changePage(Lcom/sec/daliviews/layouts/PageLayout;IIZ)V

    goto :goto_0
.end method

.method private handlePageUpKey(Lcom/sec/daliviews/layouts/PageLayout;)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->TAG:Ljava/lang/String;

    const-string v2, "DPAD Page Up"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->changePage(Lcom/sec/daliviews/layouts/PageLayout;IIZ)V

    goto :goto_0
.end method

.method private handleRightKey(Lcom/sec/daliviews/layouts/PageLayout;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->TAG:Ljava/lang/String;

    const-string v1, "DPAD Right"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isFolderOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    instance-of v0, v0, Lcom/sec/daliviews/views/TextView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->getOpenFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getColorPicker()Lcom/sec/android/app/launcher/views/FolderColorPicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->getOpenFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getColorPicker()Lcom/sec/android/app/launcher/views/FolderColorPicker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ListAdapter;->getItem(I)Lcom/sec/daliviews/views/Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    if-ne v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getEditTextView()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/EditTextView;->getMode()Lcom/sec/android/app/launcher/views/EditTextView$Mode;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/views/EditTextView$Mode;->EDIT:Lcom/sec/android/app/launcher/views/EditTextView$Mode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getEditTextView()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/views/EditTextView;

    sget-object v1, Lcom/sec/android/app/launcher/views/EditTextView$Mode;->TEXT:Lcom/sec/android/app/launcher/views/EditTextView$Mode;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/EditTextView;->setMode(Lcom/sec/android/app/launcher/views/EditTextView$Mode;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getMenuButton()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isFolderOpened()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getMenuButton()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isViewInOptionTray(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getOptionTrayPresenter()Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->getNextView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v6, v4}, Lcom/sec/daliviews/views/NativeViewBase;->navigateFocus(IZ)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Next Focus view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isFocussable(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0, v6}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->findNextFocusItem(I)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isFolderOpened()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isWidgetFolderOpened()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mIsTopButtonFocused:Z

    if-nez v0, :cond_7

    invoke-direct {p0, p1, v5, v4, v5}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->changePage(Lcom/sec/daliviews/layouts/PageLayout;IIZ)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isFolderOpened()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeViewBase;->getYPosition()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-static {}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenCellHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getOpenFolderGridLayout()Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-static {}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenCellHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v5, v3, v1}, Lcom/sec/daliviews/layouts/GridLayout;->scrollContinuouslyBySize(IFF)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeViewBase;->getYPosition()F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getOpenFolderGridLayout()Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Lcom/sec/daliviews/layouts/GridLayout;->scrollContinuously(IF)V

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isWidgetFolderOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeViewBase;->getYPosition()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-static {}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getCellHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getOpenFolderView()Lcom/sec/android/app/launcher/views/OpenFolderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/OpenFolderView;->getAdapterView()Lcom/sec/daliviews/views/AdapterView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/AdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/layouts/GridLayout;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-static {}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getCellHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v5, v3, v1}, Lcom/sec/daliviews/layouts/GridLayout;->scrollContinuouslyBySize(IFF)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeViewBase;->getYPosition()F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getOpenFolderView()Lcom/sec/android/app/launcher/views/OpenFolderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/OpenFolderView;->getAdapterView()Lcom/sec/daliviews/views/AdapterView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/AdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/layouts/GridLayout;

    invoke-virtual {v0, v4, v3}, Lcom/sec/daliviews/layouts/GridLayout;->scrollContinuously(IF)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isFolderOpened()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isWidgetFolderOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto/16 :goto_0
.end method

.method private isFocussable(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/daliviews/views/IconView;

    return v0
.end method

.method private isFolderOpened()Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->getOpenFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->isFolderOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isViewInOptionTray(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getOptionTrayPresenter()Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getOptionTrayPresenter()Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->getCurrentTrayView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getOptionTrayPresenter()Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->getCurrentTrayView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isWidgetFolderOpened()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v1

    instance-of v2, v1, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getWidgetOpenFolderView()Lcom/sec/android/app/launcher/views/WidgetFolderView;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    move v2, v0

    goto :goto_0
.end method

.method private showSelection()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibility()Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/Accessibility;->hideFocus()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeypadFocusOutline:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->showFocusHighlight(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeypadFocusAttached:Z

    return-void
.end method


# virtual methods
.method public announce(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isInAccessibilityMode()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mClassName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lcom/sec/daliviews/views/NativeViewBase;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccessibilityEvent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_0
.end method

.method public closeOpenedKeyBoard()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFolderEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFolderEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusOutline:Lcom/sec/daliviews/views/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusOutline:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ImageView;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeypadFocusOutline:Lcom/sec/daliviews/views/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeypadFocusOutline:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ImageView;->destroy()V

    :cond_1
    return-void
.end method

.method public handleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 14

    if-nez p1, :cond_0

    const-string v10, "KeyboardAndMouseHandler"

    const-string v11, " handleKeyEvent: event is null"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_0
    const-string v10, "KeyboardAndMouseHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Pressing key:  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v12

    invoke-static {v12}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->handleNonFocusKeys(Landroid/view/KeyEvent;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x0

    goto :goto_0

    :cond_1
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusKeys:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const/4 v10, 0x0

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v8

    if-nez v8, :cond_3

    const/4 v10, 0x0

    goto :goto_0

    :cond_3
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mPrevPresenter:Lcom/sec/android/app/launcher/activities/PresenterBase;

    if-eq v10, v8, :cond_4

    iput-object v8, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mPrevPresenter:Lcom/sec/android/app/launcher/activities/PresenterBase;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->hideSelection()V

    :cond_4
    instance-of v10, v8, Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v10, :cond_7

    move-object v10, v8

    check-cast v10, Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/sec/daliviews/views/PageView;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v10

    if-nez v10, :cond_6

    :cond_5
    const/4 v10, 0x0

    goto :goto_0

    :cond_6
    invoke-virtual {v6}, Lcom/sec/daliviews/views/PageView;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/daliviews/views/ContainerViewBase;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v10

    instance-of v10, v10, Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v10, :cond_7

    invoke-virtual {v6}, Lcom/sec/daliviews/views/PageView;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/daliviews/views/ContainerViewBase;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v5

    check-cast v5, Lcom/sec/daliviews/layouts/PageLayout;

    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    const/16 v11, 0x106

    if-ne v10, v11, :cond_a

    instance-of v10, v8, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-nez v10, :cond_a

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getTopFivePresenter()Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getTopFivePresenter()Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getAppsItem()Lcom/sec/android/app/launcher/data/HomeItem;

    move-result-object v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getTopFivePresenter()Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getAppsItem()Lcom/sec/android/app/launcher/data/HomeItem;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v10}, Lcom/sec/daliviews/views/NativeViewBase;->performClick()Z

    :cond_8
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    :cond_9
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->afterViewChange()V

    :cond_a
    instance-of v10, v8, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    if-eqz v10, :cond_10

    move-object v9, v8

    check-cast v9, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v5

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetMenuButton:Landroid/widget/TextView;

    if-eqz v10, :cond_10

    iget-boolean v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mIsTopButtonFocused:Z

    if-nez v10, :cond_b

    iget-boolean v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mIsPopUpDisplayed:Z

    if-eqz v10, :cond_10

    :cond_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    const/16 v11, 0x42

    if-eq v10, v11, :cond_c

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    const/16 v11, 0x17

    if-ne v10, v11, :cond_10

    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_d

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_d
    iget-boolean v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mIsPopUpDisplayed:Z

    if-nez v10, :cond_10

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getWidgetScreenMode()I

    move-result v10

    if-nez v10, :cond_10

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->isVisible()Z

    move-result v10

    if-nez v10, :cond_10

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->hideSelection()V

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPopupMenu()Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->onButtonClick()V

    iget-boolean v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mSoundEffect:Z

    if-eqz v10, :cond_e

    invoke-static {}, Lcom/sec/daliviews/views/NativeViewBase;->getTouchFeedback()Lcom/sec/daliviews/views/NativeViewBase$TouchFeedback;

    move-result-object v10

    if-eqz v10, :cond_e

    invoke-static {}, Lcom/sec/daliviews/views/NativeViewBase;->getTouchFeedback()Lcom/sec/daliviews/views/NativeViewBase$TouchFeedback;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/sec/daliviews/views/NativeViewBase$TouchFeedback;->playSoundEffect(I)V

    :cond_e
    :goto_1
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mIsPopUpDisplayed:Z

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->setupWidgetsPopupMenu()V

    goto :goto_1

    :cond_10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    const/16 v11, 0x42

    if-eq v10, v11, :cond_11

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    const/16 v11, 0x17

    if-ne v10, v11, :cond_15

    :cond_11
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_12

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_14

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v10, :cond_14

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v11, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mScreenGridApplyButton:Lcom/sec/daliviews/views/TextView;

    if-ne v10, v11, :cond_13

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->done()V

    :goto_2
    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_13
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v10}, Lcom/sec/daliviews/views/NativeViewBase;->performClick()Z

    goto :goto_2

    :cond_14
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-nez v10, :cond_15

    iget-boolean v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mIsTopButtonFocused:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_15

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mIsTopButtonFocused:Z

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_15
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-nez v10, :cond_45

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-ne v8, v10, :cond_19

    if-eqz v5, :cond_16

    if-eqz v5, :cond_17

    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/PageLayout;->isScrolling()Z

    move-result v10

    if-eqz v10, :cond_17

    :cond_16
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_17
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getHomescreenMode()Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v10

    sget-object v11, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v10, v11, :cond_1b

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mIsTopButtonFocused:Z

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iput-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mPrevPresenter:Lcom/sec/android/app/launcher/activities/PresenterBase;

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getOptionTrayPresenter()Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->getCurrentView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    :cond_18
    :goto_3
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v10, :cond_19

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->afterViewChange()V

    :cond_19
    instance-of v10, v8, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v10, :cond_25

    move-object v0, v8

    check-cast v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v5

    if-eqz v5, :cond_1a

    if-eqz v5, :cond_22

    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/PageLayout;->isScrolling()Z

    move-result v10

    if-eqz v10, :cond_22

    :cond_1a
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->TAG:Ljava/lang/String;

    const-string v11, "ERROR pageLayout is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_1b
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isFolderOpened()Z

    move-result v10

    if-eqz v10, :cond_1f

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v10, :cond_1c

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->isColorPickerVisible()Z

    move-result v10

    if-eqz v10, :cond_1c

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getColorPicker()Lcom/sec/android/app/launcher/views/FolderColorPicker;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/daliviews/views/ListAdapter;->getCount()I

    move-result v10

    if-lez v10, :cond_1c

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getColorPicker()Lcom/sec/android/app/launcher/views/FolderColorPicker;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/daliviews/views/ListAdapter;->getItem(I)Lcom/sec/daliviews/views/Item;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto :goto_3

    :cond_1c
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v10, :cond_1d

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getEditTextView()Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v10

    iget-object v11, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getEditTextView()Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v11

    if-ne v10, v11, :cond_1d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    const/16 v11, 0x13

    if-eq v10, v11, :cond_1d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    const/16 v11, 0x15

    if-eq v10, v11, :cond_1d

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getTitleView()Lcom/sec/daliviews/views/TextView;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto/16 :goto_3

    :cond_1d
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v10, :cond_1e

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v10}, Lcom/sec/daliviews/views/NativeViewBase;->hideFocusHighlight()V

    :cond_1e
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->SetFocusOnFolderEditView()V

    goto/16 :goto_3

    :cond_1f
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/daliviews/views/PageView;->selectFocus()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v10, :cond_20

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-direct {p0, v10}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isFocussable(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v10

    if-nez v10, :cond_20

    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->findNextFocusItem(I)V

    :cond_20
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-nez v10, :cond_18

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v10

    if-eqz v10, :cond_21

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getTopFivePresenter()Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getItemAt(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-nez v10, :cond_18

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPagePresenter()Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-result-object v10

    if-eqz v10, :cond_18

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPagePresenter()Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getItems()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_18

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPagePresenter()Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getItems()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v10}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto/16 :goto_3

    :cond_21
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getTopFivePresenter()Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getAppsItem()Lcom/sec/android/app/launcher/data/HomeItem;

    move-result-object v10

    if-eqz v10, :cond_18

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getTopFivePresenter()Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getAppsItem()Lcom/sec/android/app/launcher/data/HomeItem;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto/16 :goto_3

    :cond_22
    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getCurrentTopButton()Lcom/sec/daliviews/views/TextView;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mAppsMenuButton:Lcom/sec/daliviews/views/TextView;

    sget-boolean v10, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseAtoZButton:Z

    if-eqz v10, :cond_23

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getCurrentTopButtonForAtoZ()Lcom/sec/daliviews/views/TextView;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mTopAtoZButton:Lcom/sec/daliviews/views/TextView;

    :cond_23
    sget-boolean v10, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseAtoZButton:Z

    if-eqz v10, :cond_27

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mAppsMenuButton:Lcom/sec/daliviews/views/TextView;

    if-eqz v10, :cond_27

    iget-boolean v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mIsTopButtonFocused:Z

    if-eqz v10, :cond_27

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isFolderOpened()Z

    move-result v10

    if-nez v10, :cond_27

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    const/16 v11, 0x16

    if-ne v10, v11, :cond_27

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mAppsMenuButton:Lcom/sec/daliviews/views/TextView;

    iput-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    :cond_24
    :goto_4
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->afterViewChange()V

    :cond_25
    instance-of v10, v8, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    if-eqz v10, :cond_36

    move-object v9, v8

    check-cast v9, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v5

    if-eqz v5, :cond_26

    if-eqz v5, :cond_33

    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/PageLayout;->isScrolling()Z

    move-result v10

    if-eqz v10, :cond_33

    :cond_26
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_27
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mTopAtoZButton:Lcom/sec/daliviews/views/TextView;

    if-eqz v10, :cond_28

    iget-boolean v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mIsTopButtonFocused:Z

    if-eqz v10, :cond_28

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isFolderOpened()Z

    move-result v10

    if-nez v10, :cond_28

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    const/16 v11, 0x15

    if-ne v10, v11, :cond_28

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mTopAtoZButton:Lcom/sec/daliviews/views/TextView;

    iput-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto :goto_4

    :cond_28
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mAppsMenuButton:Lcom/sec/daliviews/views/TextView;

    if-eqz v10, :cond_29

    iget-boolean v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mIsTopButtonFocused:Z

    if-nez v10, :cond_29

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isFolderOpened()Z

    move-result v10

    if-nez v10, :cond_29

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    const/16 v11, 0x13

    if-ne v10, v11, :cond_29

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mIsTopButtonFocused:Z

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mAppsMenuButton:Lcom/sec/daliviews/views/TextView;

    iput-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto :goto_4

    :cond_29
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isFolderOpened()Z

    move-result v10

    if-eqz v10, :cond_2d

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v10, :cond_2a

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->isColorPickerVisible()Z

    move-result v10

    if-eqz v10, :cond_2a

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getColorPicker()Lcom/sec/android/app/launcher/views/FolderColorPicker;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/daliviews/views/ListAdapter;->getCount()I

    move-result v10

    if-lez v10, :cond_2a

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getColorPicker()Lcom/sec/android/app/launcher/views/FolderColorPicker;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/daliviews/views/ListAdapter;->getItem(I)Lcom/sec/daliviews/views/Item;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto/16 :goto_4

    :cond_2a
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v10, :cond_2b

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getEditTextView()Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v10

    iget-object v11, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getEditTextView()Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v11

    if-ne v10, v11, :cond_2b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    const/16 v11, 0x13

    if-eq v10, v11, :cond_2b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    const/16 v11, 0x15

    if-eq v10, v11, :cond_2b

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getTitleView()Lcom/sec/daliviews/views/TextView;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto/16 :goto_4

    :cond_2b
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v10, :cond_2c

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v10}, Lcom/sec/daliviews/views/NativeViewBase;->hideFocusHighlight()V

    :cond_2c
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->SetFocusOnFolderEditView()V

    goto/16 :goto_4

    :cond_2d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    const/16 v11, 0x13

    if-eq v10, v11, :cond_24

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mIsTopButtonFocused:Z

    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v10

    if-gez v10, :cond_2e

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ERROR pageLayout current page = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_2e
    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v10

    invoke-virtual {v5, v10}, Lcom/sec/daliviews/layouts/PageLayout;->getPagePeer(I)J

    move-result-wide v2

    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-eqz v10, :cond_2f

    iput-wide v2, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mLastPageAddress:J

    :goto_5
    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getPagedAdapterView()Lcom/sec/daliviews/views/PagedAdapterView;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Lcom/sec/daliviews/views/PagedAdapterView;->selectFocusPeer(J)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-nez v10, :cond_24

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    const/16 v11, 0x15

    if-ne v10, v11, :cond_31

    const/4 v10, -0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-direct {p0, v5, v10, v11, v12}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->changePage(Lcom/sec/daliviews/layouts/PageLayout;IIZ)V

    goto/16 :goto_4

    :cond_2f
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-nez v10, :cond_30

    iget-wide v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mLastPageAddress:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_30

    iget-wide v2, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mLastPageAddress:J

    goto :goto_5

    :cond_30
    const/4 v10, 0x0

    const v11, 0x3dcccccd    # 0.1f

    invoke-virtual {v5, v10, v11}, Lcom/sec/daliviews/layouts/PageLayout;->moveToPage(IF)V

    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v10

    invoke-virtual {v5, v10}, Lcom/sec/daliviews/layouts/PageLayout;->getPagePeer(I)J

    move-result-wide v2

    goto :goto_5

    :cond_31
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    const/16 v11, 0x16

    if-ne v10, v11, :cond_32

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {p0, v5, v10, v11, v12}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->changePage(Lcom/sec/daliviews/layouts/PageLayout;IIZ)V

    goto/16 :goto_4

    :cond_32
    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getCurrentTopButton()Lcom/sec/daliviews/views/TextView;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mIsTopButtonFocused:Z

    goto/16 :goto_4

    :cond_33
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetMenuButton:Landroid/widget/TextView;

    if-nez v10, :cond_34

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPopupMenu()Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->getOptionsButton()Landroid/widget/TextView;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetMenuButton:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetMenuButton:Landroid/widget/TextView;

    if-eqz v10, :cond_34

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetMenuButton:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mTopButtonDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetMenuButton:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->clearFocus()V

    :cond_34
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isWidgetFolderOpened()Z

    move-result v10

    if-eqz v10, :cond_38

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/daliviews/views/ListAdapter;->getItem(I)Lcom/sec/daliviews/views/Item;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getOpenFolderView()Lcom/sec/android/app/launcher/views/OpenFolderView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/views/OpenFolderView;->getAdapterView()Lcom/sec/daliviews/views/AdapterView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/daliviews/views/AdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v10

    check-cast v10, Lcom/sec/daliviews/layouts/GridLayout;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/sec/daliviews/layouts/GridLayout;->scrollContinuously(IF)V

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    :cond_35
    :goto_6
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->afterViewChange()V

    :cond_36
    if-eqz v5, :cond_37

    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v10

    iput v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mPrevPage:I

    :cond_37
    :goto_7
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v10, :cond_4e

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isFolderOpened()Z

    move-result v10

    if-eqz v10, :cond_4e

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFolderEditText:Landroid/widget/EditText;

    if-eqz v10, :cond_4e

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFolderEditText:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_4e

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_38
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetMenuButton:Landroid/widget/TextView;

    if-eqz v10, :cond_3a

    iget-boolean v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mIsTopButtonFocused:Z

    if-nez v10, :cond_3a

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getWidgetScreenMode()I

    move-result v10

    if-nez v10, :cond_3a

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->isVisible()Z

    move-result v10

    if-nez v10, :cond_3a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    const/16 v11, 0x13

    if-ne v10, v11, :cond_3a

    invoke-static {}, Lcom/sec/daliviews/views/NativeViewBase;->getTouchFeedback()Lcom/sec/daliviews/views/NativeViewBase$TouchFeedback;

    move-result-object v10

    if-eqz v10, :cond_39

    invoke-static {}, Lcom/sec/daliviews/views/NativeViewBase;->getTouchFeedback()Lcom/sec/daliviews/views/NativeViewBase$TouchFeedback;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/sec/daliviews/views/NativeViewBase$TouchFeedback;->playSoundEffect(I)V

    :cond_39
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mIsPopUpDisplayed:Z

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mIsTopButtonFocused:Z

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetMenuButton:Landroid/widget/TextView;

    const v11, 0x7f020085

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v10, :cond_35

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v10}, Lcom/sec/daliviews/views/NativeViewBase;->hideFocusHighlight()V

    goto :goto_6

    :cond_3a
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetMenuButton:Landroid/widget/TextView;

    if-eqz v10, :cond_3e

    iget-boolean v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mIsTopButtonFocused:Z

    if-nez v10, :cond_3e

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getWidgetScreenMode()I

    move-result v10

    if-nez v10, :cond_3e

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_3e

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->getSearchView()Lcom/sec/android/app/launcher/views/WidgetSearchView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/views/WidgetSearchView;->gainFocussed()Z

    move-result v10

    if-nez v10, :cond_3b

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->setEnabled(ZZ)V

    :cond_3b
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v10, :cond_3c

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v10}, Lcom/sec/daliviews/views/NativeViewBase;->hideFocusHighlight()V

    :cond_3c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    const/16 v11, 0x14

    if-ne v10, v11, :cond_3d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_3d

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mIsTopButtonFocused:Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_3d
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_3e
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetMenuButton:Landroid/widget/TextView;

    if-eqz v10, :cond_3f

    iget-boolean v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mIsTopButtonFocused:Z

    if-nez v10, :cond_3f

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getWidgetScreenMode()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3f

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    const/16 v11, 0x13

    if-ne v10, v11, :cond_3f

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getUninstallbackButton()Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->requestFocus()Z

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mIsTopButtonFocused:Z

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v10, :cond_35

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v10}, Lcom/sec/daliviews/views/NativeViewBase;->hideFocusHighlight()V

    goto/16 :goto_6

    :cond_3f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    const/16 v11, 0x13

    if-eq v10, v11, :cond_35

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mIsTopButtonFocused:Z

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetMenuButton:Landroid/widget/TextView;

    if-eqz v10, :cond_40

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getWidgetScreenMode()I

    move-result v10

    if-nez v10, :cond_41

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->isVisible()Z

    move-result v10

    if-nez v10, :cond_41

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetMenuButton:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->clearFocus()V

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetMenuButton:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mTopButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_40
    :goto_8
    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v10

    invoke-virtual {v5, v10}, Lcom/sec/daliviews/layouts/PageLayout;->getPagePeer(I)J

    move-result-wide v2

    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-eqz v10, :cond_43

    iput-wide v2, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mLastWidgetPageAddress:J

    :goto_9
    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPagedAdapterView()Lcom/sec/daliviews/views/PagedAdapterView;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Lcom/sec/daliviews/views/PagedAdapterView;->selectFocusPeer(J)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto/16 :goto_6

    :cond_41
    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getWidgetScreenMode()I

    move-result v10

    if-nez v10, :cond_42

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_42

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->getSearchView()Lcom/sec/android/app/launcher/views/WidgetSearchView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/views/WidgetSearchView;->clearFocus()V

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->setEnabled(ZZ)V

    goto :goto_8

    :cond_42
    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getUninstallBar()Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->clearFocus()V

    goto :goto_8

    :cond_43
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-nez v10, :cond_44

    iget-wide v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mLastWidgetPageAddress:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_44

    iget-wide v2, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mLastWidgetPageAddress:J

    goto :goto_9

    :cond_44
    const/4 v10, 0x0

    const v11, 0x3dcccccd    # 0.1f

    invoke-virtual {v5, v10, v11}, Lcom/sec/daliviews/layouts/PageLayout;->moveToPage(IF)V

    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v10

    invoke-virtual {v5, v10}, Lcom/sec/daliviews/layouts/PageLayout;->getPagePeer(I)J

    move-result-wide v2

    goto :goto_9

    :cond_45
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_37

    instance-of v10, v8, Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v10, :cond_47

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v10}, Lcom/sec/daliviews/views/NativeViewBase;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v10

    instance-of v10, v10, Lcom/sec/daliviews/views/PageView;

    if-eqz v10, :cond_47

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v10}, Lcom/sec/daliviews/views/NativeViewBase;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/PageView;

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v10}, Lcom/sec/daliviews/views/NativeViewBase;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/daliviews/views/ContainerViewBase;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/daliviews/views/ContainerViewBase;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v4

    instance-of v10, v4, Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v10, :cond_46

    move-object v5, v4

    check-cast v5, Lcom/sec/daliviews/layouts/PageLayout;

    :cond_46
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v10

    if-eq v1, v10, :cond_47

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v10

    iput v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mPrevPage:I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_47
    instance-of v10, v8, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v10, :cond_48

    move-object v0, v8

    check-cast v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v5

    :cond_48
    instance-of v10, v8, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    if-eqz v10, :cond_49

    move-object v9, v8

    check-cast v9, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v5

    :cond_49
    if-nez v5, :cond_4a

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_4a
    if-eqz v5, :cond_4b

    iget v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mPrevPage:I

    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v11

    if-eq v10, v11, :cond_4b

    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v10

    iput v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mPrevPage:I

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_4b
    if-eqz v5, :cond_4c

    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v10

    iput v10, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mPrevPage:I

    :cond_4c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto/16 :goto_7

    :sswitch_0
    invoke-direct {p0, v5}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->handleKeyUp(Lcom/sec/daliviews/layouts/PageLayout;)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->afterViewChange()V

    goto/16 :goto_7

    :sswitch_1
    invoke-direct {p0, v5, p1}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->handleKeyDown(Lcom/sec/daliviews/layouts/PageLayout;Landroid/view/KeyEvent;)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->afterViewChange()V

    goto/16 :goto_7

    :sswitch_2
    invoke-direct {p0, v5}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->handleRightKey(Lcom/sec/daliviews/layouts/PageLayout;)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->afterViewChange()V

    goto/16 :goto_7

    :sswitch_3
    invoke-direct {p0, v5}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->handleLeftKey(Lcom/sec/daliviews/layouts/PageLayout;)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->afterViewChange()V

    goto/16 :goto_7

    :sswitch_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v10

    if-eqz v10, :cond_4d

    invoke-direct {p0, v5}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->handleLeftKey(Lcom/sec/daliviews/layouts/PageLayout;)V

    :goto_a
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->afterViewChange()V

    goto/16 :goto_7

    :cond_4d
    invoke-direct {p0, v5}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->handleRightKey(Lcom/sec/daliviews/layouts/PageLayout;)V

    goto :goto_a

    :sswitch_5
    invoke-direct {p0, v5}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->handleEndKey(Lcom/sec/daliviews/layouts/PageLayout;)V

    goto/16 :goto_7

    :sswitch_6
    invoke-direct {p0, v5}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->handleHomeKey(Lcom/sec/daliviews/layouts/PageLayout;)V

    goto/16 :goto_7

    :sswitch_7
    invoke-direct {p0, v5}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->handlePageUpKey(Lcom/sec/daliviews/layouts/PageLayout;)V

    goto/16 :goto_7

    :sswitch_8
    invoke-direct {p0, v5}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->handlePageDownKey(Lcom/sec/daliviews/layouts/PageLayout;)V

    goto/16 :goto_7

    :cond_4e
    const/4 v10, 0x1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_3
        0x16 -> :sswitch_2
        0x3d -> :sswitch_4
        0x5c -> :sswitch_7
        0x5d -> :sswitch_8
        0x7a -> :sswitch_6
        0x7b -> :sswitch_5
    .end sparse-switch
.end method

.method public handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/16 v8, 0x9

    const v7, 0x453b8000    # 3000.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v1

    const/4 v0, 0x0

    instance-of v3, v1, Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getHomePageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v0

    :cond_0
    instance-of v3, v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v0

    :cond_1
    instance-of v3, v1, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    if-eqz v3, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_3
    :goto_0
    move v3, v5

    :goto_1
    return v3

    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isFolderOpened()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    cmpg-float v3, v3, v6

    if-gez v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getOpenFolderGridLayout()Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v3

    invoke-virtual {v3, v5, v7}, Lcom/sec/daliviews/layouts/GridLayout;->scrollContinuouslyClipSize(IF)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mOpenFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getOpenFolderGridLayout()Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v3

    invoke-virtual {v3, v4, v7}, Lcom/sec/daliviews/layouts/GridLayout;->scrollContinuouslyClipSize(IF)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    cmpg-float v3, v3, v6

    if-gez v3, :cond_6

    invoke-direct {p0, v0, v5, v4, v4}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->changePage(Lcom/sec/daliviews/layouts/PageLayout;IIZ)V

    goto :goto_0

    :cond_6
    instance-of v3, v1, Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v3, :cond_7

    check-cast v1, Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentMode()Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v3

    sget-object v6, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v3, v6, :cond_7

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isZeroPageFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v3

    if-ne v3, v5, :cond_7

    invoke-direct {p0, v0, v4, v4, v4}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->changePage(Lcom/sec/daliviews/layouts/PageLayout;IIZ)V

    goto :goto_0

    :cond_7
    const/4 v3, -0x1

    invoke-direct {p0, v0, v3, v4, v4}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->changePage(Lcom/sec/daliviews/layouts/PageLayout;IIZ)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isFolderOpened()Z

    move-result v3

    if-nez v3, :cond_3

    instance-of v3, v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public hideFocus()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusAttached:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeViewBase;->hideFocusHighlight()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusAttached:Z

    :cond_1
    return-void
.end method

.method public hideSelection()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetMenuButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetMenuButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mTopButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mWidgetMenuButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearFocus()V

    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mIsTopButtonFocused:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mIsPopUpDisplayed:Z

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeypadFocusAttached:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeViewBase;->hideFocusHighlight()V

    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeypadFocusAttached:Z

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeViewBase;->hideFocusHighlight()V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    return-void
.end method

.method public isInAccessibilityMode()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeypadFocusAttached()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeypadFocusAttached:Z

    return v0
.end method

.method public pageChanged(Lcom/sec/daliviews/layouts/PageLayout;I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-boolean v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mShouldFocusItemInNewPage:Z

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v6, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mShouldFocusItemInNewPage:Z

    if-gez p2, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERROR KeayboardAndMouseHandler changePage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mPrevPage:I

    if-ne v3, p2, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Lcom/sec/daliviews/layouts/PageLayout;->getPagePeer(I)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERROR KeayboardAndMouseHandler changePage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mItemInPage:I

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v3, v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->selectFocusPeer(J)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    :cond_4
    :goto_1
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-direct {p0, v3}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isFocussable(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->findNextFocusItem(I)V

    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-nez v3, :cond_6

    instance-of v3, v2, Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getTopFivePresenter()Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getRootView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/AdapterView;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/AdapterView;->getAdapter()Lcom/sec/daliviews/views/Adapter;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sec/daliviews/views/Adapter;->getItem(I)Lcom/sec/daliviews/views/Item;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-nez v3, :cond_7

    instance-of v3, v2, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v3, :cond_7

    check-cast v2, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getCurrentTopButton()Lcom/sec/daliviews/views/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iput-boolean v7, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mIsTopButtonFocused:Z

    :cond_7
    invoke-virtual {p1}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mPrevPage:I

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->afterViewChange()V

    goto/16 :goto_0

    :cond_8
    iget v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mItemInPage:I

    if-ne v3, v7, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v3, v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->selectFocusPeerLast(J)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto :goto_1
.end method

.method public setFocusOnView(Lcom/sec/daliviews/views/NativeViewBase;Z)V
    .locals 1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mSoundEffect:Z

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->afterViewChange()V

    return-void

    :cond_1
    if-nez p2, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto :goto_0
.end method

.method public setFolderNameEditMode()Z
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isFolderOpened()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->getOpenFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getTitleView()Lcom/sec/daliviews/views/TextView;

    move-result-object v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getEditTextView()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->showEditText()V

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
