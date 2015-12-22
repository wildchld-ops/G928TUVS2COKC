.class public Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
.super Lcom/sec/android/app/launcher/views/OpenFolderView;
.source "HomeOpenFolderView.java"

# interfaces
.implements Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;
.implements Lcom/sec/android/app/launcher/views/FolderAdapterView$OnAddIconClickListener;
.implements Lcom/sec/android/app/launcher/views/EditTextView$EditTextViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/views/HomeOpenFolderView$2;,
        Lcom/sec/android/app/launcher/views/HomeOpenFolderView$FolderMenuClickListener;,
        Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;
    }
.end annotation


# instance fields
.field private mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

.field private mAdapterViewSeat:Lcom/sec/daliviews/views/ContainerView;

.field private mAddIconVisible:Z

.field private mBackgroundView:Lcom/sec/daliviews/views/NativeViewBase;

.field private mColorPicker:Lcom/sec/android/app/launcher/views/FolderColorPicker;

.field private mColorPickerVisible:Z

.field private mColorSelectionListener:Lcom/sec/android/app/launcher/views/FolderColorPicker$OnColorSelectionListener;

.field private mContentContainer:Lcom/sec/daliviews/views/ContainerViewBase;

.field private mContext:Landroid/content/Context;

.field private final mEditTextView:Lcom/sec/android/app/launcher/views/EditTextView;

.field private mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

.field private mFolderOpenedTalkBack:Lcom/sec/daliviews/views/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mMenuButton:Lcom/sec/daliviews/views/ContainerView;

.field private mMode:Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;

.field private mTitleView:Lcom/sec/daliviews/views/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/views/OpenFolderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mBackgroundView:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mContentContainer:Lcom/sec/daliviews/views/ContainerViewBase;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterViewSeat:Lcom/sec/daliviews/views/ContainerView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mMenuButton:Lcom/sec/daliviews/views/ContainerView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mColorPicker:Lcom/sec/android/app/launcher/views/FolderColorPicker;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderOpenedTalkBack:Lcom/sec/daliviews/views/TextView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAddIconVisible:Z

    sget-object v1, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;->NORMAL:Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mMode:Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mColorPickerVisible:Z

    new-instance v1, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$1;-><init>(Lcom/sec/android/app/launcher/views/HomeOpenFolderView;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mColorSelectionListener:Lcom/sec/android/app/launcher/views/FolderColorPicker$OnColorSelectionListener;

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030016

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/views/EditTextView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mEditTextView:Lcom/sec/android/app/launcher/views/EditTextView;

    new-instance v1, Lcom/sec/daliviews/views/TextView;

    invoke-direct {v1, p1}, Lcom/sec/daliviews/views/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderOpenedTalkBack:Lcom/sec/daliviews/views/TextView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderOpenedTalkBack:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d004a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/TextView;->setContentDescription(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/views/HomeOpenFolderView;)Lcom/sec/android/app/launcher/data/FolderItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/launcher/views/HomeOpenFolderView;)Lcom/sec/android/app/launcher/views/EditTextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mEditTextView:Lcom/sec/android/app/launcher/views/EditTextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/launcher/views/HomeOpenFolderView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->hideColorPicker()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/launcher/views/HomeOpenFolderView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->showColorPicker()V

    return-void
.end method

.method private cleanupJava()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mColorPicker:Lcom/sec/android/app/launcher/views/FolderColorPicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mColorPicker:Lcom/sec/android/app/launcher/views/FolderColorPicker;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->setOnColorSelectionListener(Lcom/sec/android/app/launcher/views/FolderColorPicker$OnColorSelectionListener;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mEditTextView:Lcom/sec/android/app/launcher/views/EditTextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mEditTextView:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/EditTextView;->setEditTextViewListener(Lcom/sec/android/app/launcher/views/EditTextView$EditTextViewListener;)V

    :cond_2
    return-void
.end method

.method private getAdapterViewSeat()Lcom/sec/daliviews/views/ContainerView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterViewSeat:Lcom/sec/daliviews/views/ContainerView;

    if-nez v0, :cond_0

    const v0, 0x7f0b009d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ContainerView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterViewSeat:Lcom/sec/daliviews/views/ContainerView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterViewSeat:Lcom/sec/daliviews/views/ContainerView;

    return-object v0
.end method

.method private hideColorPicker()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mColorPicker:Lcom/sec/android/app/launcher/views/FolderColorPicker;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mColorPicker:Lcom/sec/android/app/launcher/views/FolderColorPicker;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mColorPicker:Lcom/sec/android/app/launcher/views/FolderColorPicker;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->isDismissing()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getMenuButton()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->selectArea(Lcom/sec/daliviews/views/NativeViewBase;Z)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mColorPicker:Lcom/sec/android/app/launcher/views/FolderColorPicker;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->dismiss()V

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mColorPickerVisible:Z

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getTitleView()Lcom/sec/daliviews/views/TextView;

    move-result-object v0

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v2, v3}, Lcom/sec/daliviews/views/TextView;->setVisibilityAnimated(IF)V

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private readDimension(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private setTitleViewDescription(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "%s   %s "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const v5, 0x7f0d00c0

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2, v0}, Lcom/sec/daliviews/views/TextView;->setContentDescription(Ljava/lang/String;)V

    return-void
.end method

.method private showColorPicker()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getColorPicker()Lcom/sec/android/app/launcher/views/FolderColorPicker;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getTitleView()Lcom/sec/daliviews/views/TextView;

    move-result-object v1

    const/4 v2, 0x4

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v2, v3}, Lcom/sec/daliviews/views/TextView;->setVisibilityAnimated(IF)V

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->appear()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mColorPickerVisible:Z

    return-void
.end method


# virtual methods
.method public applyFolderColor(I)V
    .locals 25

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderBackground(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-eqz v13, :cond_2

    instance-of v2, v13, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v2, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderChunk(I)[B

    move-result-object v11

    if-eqz v11, :cond_0

    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v19

    invoke-static {v11, v0}, Lcom/sec/android/app/launcher/utils/Utils;->decodeNinePatchChunk([BLandroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getBackgroundView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    invoke-static {v13}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    move-object/from16 v0, v19

    iget v6, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    move-object/from16 v0, v19

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v7, v7, v24

    invoke-virtual/range {v2 .. v7}, Lcom/sec/daliviews/views/NativeViewBase;->setNinePatchBackground(Landroid/graphics/Bitmap;IIII)V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    new-instance v23, Landroid/util/TypedValue;

    invoke-direct/range {v23 .. v23}, Landroid/util/TypedValue;-><init>()V

    const v2, 0x7f0a01f9

    const/4 v3, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getBackgroundView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    invoke-virtual/range {v23 .. v23}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/NativeViewBase;->setOpacity(F)V

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getTitleColor(I)I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getTitleView()Lcom/sec/daliviews/views/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v21}, Lcom/sec/daliviews/views/TextView;->setDefaultTextColor(I)V

    const/16 v2, 0x80

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/TextView;->setHintTextColor(I)V

    invoke-virtual/range {v20 .. v20}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    const/16 v17, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    const v2, 0x7f0b0098

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v22

    check-cast v22, Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "topline"

    const-string v4, "drawable"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mContext:Landroid/content/Context;

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmapWithColor(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/sec/daliviews/views/ContainerView;->setBackground(Landroid/graphics/Bitmap;)V

    const v2, 0x7f0b009c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v10

    check-cast v10, Lcom/sec/daliviews/views/ContainerView;

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Lcom/sec/daliviews/views/ContainerView;->setBackgroundColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getMenuButton()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v14

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "homescreen_folder_color"

    const-string v4, "drawable"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mContext:Landroid/content/Context;

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmapWithColor(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0089

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/sec/daliviews/views/ContainerView;->setContentDescription(Ljava/lang/String;)V

    const v2, 0x7f0b009b

    invoke-virtual {v14, v2}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v15

    check-cast v15, Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v15, v8}, Lcom/sec/daliviews/views/ImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->hideColorPicker()Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setVisibilityFolderTitle(Z)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getBackgroundView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/sec/daliviews/views/NativeViewBase;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getBackgroundView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/sec/daliviews/views/NativeViewBase;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getBackgroundView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderBackgroundColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/NativeViewBase;->setBackgroundColor(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v12

    invoke-virtual {v12}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public attachAdapterView(Lcom/sec/daliviews/views/AdapterView;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/launcher/views/FolderAdapterView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->setFolderView(Lcom/sec/android/app/launcher/views/HomeOpenFolderView;)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getAdapterViewSeat()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/ContainerView;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/launcher/views/OpenFolderView;->destroy()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->cleanupJava()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderOpenedTalkBack:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderOpenedTalkBack:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/TextView;->destroy()V

    :cond_0
    return-void
.end method

.method public detachAdapterView()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getAdapterViewSeat()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->detachView(Lcom/sec/daliviews/views/NativeViewBase;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    return-void
.end method

.method public getAdapterView()Lcom/sec/daliviews/views/AdapterView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    return-object v0
.end method

.method public getBackgroundView()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mBackgroundView:Lcom/sec/daliviews/views/NativeViewBase;

    if-nez v0, :cond_0

    const v0, 0x7f0b0096

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mBackgroundView:Lcom/sec/daliviews/views/NativeViewBase;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mBackgroundView:Lcom/sec/daliviews/views/NativeViewBase;

    return-object v0
.end method

.method public getColorPicker()Lcom/sec/android/app/launcher/views/FolderColorPicker;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mColorPicker:Lcom/sec/android/app/launcher/views/FolderColorPicker;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v1

    const v2, 0x7f030017

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/views/FolderColorPicker;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mColorPicker:Lcom/sec/android/app/launcher/views/FolderColorPicker;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mColorPicker:Lcom/sec/android/app/launcher/views/FolderColorPicker;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mColorPicker:Lcom/sec/android/app/launcher/views/FolderColorPicker;

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mColorSelectionListener:Lcom/sec/android/app/launcher/views/FolderColorPicker$OnColorSelectionListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->setOnColorSelectionListener(Lcom/sec/android/app/launcher/views/FolderColorPicker$OnColorSelectionListener;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mColorPicker:Lcom/sec/android/app/launcher/views/FolderColorPicker;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mColorPicker:Lcom/sec/android/app/launcher/views/FolderColorPicker;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mColorPicker:Lcom/sec/android/app/launcher/views/FolderColorPicker;

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/FolderItem;->getFolderColorIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->setColor(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mColorPicker:Lcom/sec/android/app/launcher/views/FolderColorPicker;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->setColorPickerLayout()V

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mColorPicker:Lcom/sec/android/app/launcher/views/FolderColorPicker;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->dismiss()V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mColorPicker:Lcom/sec/android/app/launcher/views/FolderColorPicker;

    return-object v1
.end method

.method public getEditTextView()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mEditTextView:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/EditTextView;->getEditTextView()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method public getFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    return-object v0
.end method

.method public getItemAt(I)Lcom/sec/daliviews/views/NativeViewBase;
    .locals 6

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->getAdapter()Lcom/sec/daliviews/views/Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/Adapter;->getCount()I

    move-result v5

    if-lt p1, v5, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    invoke-virtual {v0}, Lcom/sec/daliviews/views/Adapter;->getItems()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getPos()I

    move-result v5

    if-ne v5, p1, :cond_2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v4

    goto :goto_0
.end method

.method public getLastItem()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 7

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->getAdapter()Lcom/sec/daliviews/views/Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/Adapter;->getItems()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getPos()I

    move-result v5

    invoke-virtual {v0}, Lcom/sec/daliviews/views/Adapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v4

    goto :goto_0
.end method

.method public getMenuButton()Lcom/sec/daliviews/views/ContainerView;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mMenuButton:Lcom/sec/daliviews/views/ContainerView;

    if-nez v0, :cond_0

    const v0, 0x7f0b009a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ContainerView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mMenuButton:Lcom/sec/daliviews/views/ContainerView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mMenuButton:Lcom/sec/daliviews/views/ContainerView;

    new-instance v1, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$FolderMenuClickListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$FolderMenuClickListener;-><init>(Lcom/sec/android/app/launcher/views/HomeOpenFolderView;)V

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mMenuButton:Lcom/sec/daliviews/views/ContainerView;

    return-object v0
.end method

.method public getMode()Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mMode:Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;

    return-object v0
.end method

.method public getNodeInfo(Landroid/util/SparseIntArray;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/app/launcher/views/OpenFolderView;->getNodeInfo(Landroid/util/SparseIntArray;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mColorPickerVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getColorPicker()Lcom/sec/android/app/launcher/views/FolderColorPicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ListAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p3, p4, p1, p2}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityNodeInfoList;->addItemListToNodeInfo(Ljava/util/List;Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/util/SparseIntArray;Landroid/view/View;)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getMenuButton()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    invoke-static {v0, p3, p4, p1, p2}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityNodeInfoList;->addItemToNodeInfo(Ljava/lang/Object;Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/util/SparseIntArray;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getAdapterView()Lcom/sec/daliviews/views/AdapterView;

    move-result-object v0

    invoke-static {v0, p3, p4, p1, p2}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityNodeInfoList;->addItemToNodeInfo(Ljava/lang/Object;Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/util/SparseIntArray;Landroid/view/View;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getTitleView()Lcom/sec/daliviews/views/TextView;

    move-result-object v0

    invoke-static {v0, p3, p4, p1, p2}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityNodeInfoList;->addItemToNodeInfo(Ljava/lang/Object;Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/util/SparseIntArray;Landroid/view/View;)V

    goto :goto_0
.end method

.method public getOpenFolderGridLayout()Lcom/sec/daliviews/layouts/GridLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/layouts/GridLayout;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getEditTextView()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getTitleSelectionEnd()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getEditTextView()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getTitleSelectionStart()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getEditTextView()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getTitleView()Lcom/sec/daliviews/views/TextView;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f0b0099

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/TextView;->setFocusableInTouchMode(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    return-object v0
.end method

.method public getTouchContainer()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mContentContainer:Lcom/sec/daliviews/views/ContainerViewBase;

    if-nez v0, :cond_0

    const v0, 0x7f0b0097

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ContainerViewBase;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mContentContainer:Lcom/sec/daliviews/views/ContainerViewBase;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mContentContainer:Lcom/sec/daliviews/views/ContainerViewBase;

    return-object v0
.end method

.method public invalidDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/ContainerViewBase;Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/ContainerViewBase;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->cancelClosingFolder()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isColorPickerVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mColorPickerVisible:Z

    return v0
.end method

.method public onAddIconClick(Lcom/sec/daliviews/views/AdapterView;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/data/FolderItem;->closeFolderDelayed(Z)V

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "folder"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "foldrID"

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/FolderItem;->getDbId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->getDataSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_MENU_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    if-ne v1, v2, :cond_0

    const-string v1, "folderSourceType"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    return v3

    :cond_0
    const-string v1, "folderSourceType"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onBackpressed()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mEditTextView:Lcom/sec/android/app/launcher/views/EditTextView;

    sget-object v1, Lcom/sec/android/app/launcher/views/EditTextView$Mode;->TEXT:Lcom/sec/android/app/launcher/views/EditTextView$Mode;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/EditTextView;->setMode(Lcom/sec/android/app/launcher/views/EditTextView$Mode;)V

    return-void
.end method

.method public onDragEnd()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->exitDragMode()V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomeDarkenView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getRootView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/ContainerView;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/sec/daliviews/views/ContainerView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/daliviews/views/ContainerView;->setSize(II)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/ContainerView;->setSensitive(Z)V

    return-void
.end method

.method public onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 4

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/FolderItem;->cancelClosingFolder()V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getDarkenView()Lcom/sec/daliviews/views/ClippedContainerView;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getRootView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/ContainerView;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/sec/daliviews/views/ContainerView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/daliviews/views/ContainerView;->setSize(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->makeSilhouetteVisible(Z)V

    goto :goto_0
.end method

.method public onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 4

    const/4 v3, 0x0

    if-ne p1, p0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/data/FolderItem;->closeFolderDelayed(Z)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getDarkenView()Lcom/sec/daliviews/views/ClippedContainerView;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/sec/daliviews/views/ContainerView;->setSize(II)V

    :cond_0
    return-void
.end method

.method public onDragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->enterDragMode(I)V

    return-void
.end method

.method public onDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->getDataSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_MENU_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-static {v1, v2}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p3}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v1

    invoke-virtual {p3}, Lcom/sec/daliviews/views/Item;->getCellY()I

    move-result v2

    const v3, 0x7f0c0027

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-virtual {p3, v1}, Lcom/sec/daliviews/views/Item;->setCustomPos(I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->getDbId()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/sec/daliviews/views/Item;->setContainerId(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->getAdapter()Lcom/sec/daliviews/views/Adapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/sec/daliviews/views/Adapter;->addItem(Lcom/sec/daliviews/views/Item;)V

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragEnd()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->getDataSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_MENU_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-static {v1, v2}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->getDefaultMode()I

    move-result v1

    const v2, 0x7f0b00e1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setUninstallBadge(Z)V

    :cond_1
    return-void
.end method

.method public onEditTextFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method public onFolderClosed(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/launcher/views/OpenFolderView;->onFolderClosed(Lcom/sec/android/app/launcher/data/FolderItem;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getEditTextView()Landroid/widget/EditText;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAndroidRoot()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onFolderClosing(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/launcher/views/OpenFolderView;->onFolderClosing(Lcom/sec/android/app/launcher/data/FolderItem;Z)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setFolderItemOwnColor(Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->stopScrolling()V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getTouchContainer()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/NativeViewBase;->setOnTouchListener(Lcom/sec/daliviews/views/NativeViewBase$OnTouchListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->hideColorPicker()Z

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setAddIconVisible(Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mEditTextView:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/EditTextView;->cancelEditMode()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mEditTextView:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/EditTextView;->getMode()Lcom/sec/android/app/launcher/views/EditTextView$Mode;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/views/EditTextView$Mode;->EDIT:Lcom/sec/android/app/launcher/views/EditTextView$Mode;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mEditTextView:Lcom/sec/android/app/launcher/views/EditTextView;

    sget-object v2, Lcom/sec/android/app/launcher/views/EditTextView$Mode;->EDIT:Lcom/sec/android/app/launcher/views/EditTextView$Mode;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/views/EditTextView;->getText(Lcom/sec/android/app/launcher/views/EditTextView$Mode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->updateTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mEditTextView:Lcom/sec/android/app/launcher/views/EditTextView;

    sget-object v2, Lcom/sec/android/app/launcher/views/EditTextView$Mode;->TEXT:Lcom/sec/android/app/launcher/views/EditTextView$Mode;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/views/EditTextView;->setMode(Lcom/sec/android/app/launcher/views/EditTextView$Mode;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mEditTextView:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/EditTextView;->deactivate()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/layouts/GridLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/layouts/GridLayout;->setScrollBarVisible(Z)V

    :cond_1
    return-void
.end method

.method public onFolderOpened(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/launcher/views/OpenFolderView;->onFolderOpened(Lcom/sec/android/app/launcher/data/FolderItem;Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setFolderItemOwnColor(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getColorPicker()Lcom/sec/android/app/launcher/views/FolderColorPicker;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mMode:Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;

    sget-object v1, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;->CREATE:Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->showFocus(Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->announce(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_0
    return-void
.end method

.method public onFolderOpening(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/launcher/views/OpenFolderView;->onFolderOpening(Lcom/sec/android/app/launcher/data/FolderItem;Z)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    const v4, 0x7f0b00e1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->addAllowedMode(I)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAndroidRoot()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mEditTextView:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getTitleView()Lcom/sec/daliviews/views/TextView;

    move-result-object v4

    invoke-virtual {v3, v4, v1, p0}, Lcom/sec/android/app/launcher/views/EditTextView;->initialise(Lcom/sec/daliviews/views/TextView;Landroid/view/ViewGroup;Lcom/sec/android/app/launcher/views/EditTextView$EditTextViewListener;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mEditTextView:Lcom/sec/android/app/launcher/views/EditTextView;

    iget-object v4, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/views/EditTextView;->setTextValue(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setTitle(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setTitleViewDescription(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/layouts/GridLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Lcom/sec/daliviews/layouts/GridLayout;->setScrollBarVisible(Z)V

    :cond_1
    sget-object v3, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$2;->$SwitchMap$com$sec$android$app$launcher$views$HomeOpenFolderView$OpenFolderMode:[I

    iget-object v4, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mMode:Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setMenuButtonVisible(I)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setAddIconVisible(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v5}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setAddIconVisible(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/FolderItem;->getDataSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_MENU_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-static {v2, v3}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/FolderItem;->hasItems()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_2
    invoke-virtual {p0, v5}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setAddIconVisible(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getMenuButton()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mColorPicker:Lcom/sec/android/app/launcher/views/FolderColorPicker;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mColorPicker:Lcom/sec/android/app/launcher/views/FolderColorPicker;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mColorPicker:Lcom/sec/android/app/launcher/views/FolderColorPicker;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->isDismissing()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v0, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mColorPicker:Lcom/sec/android/app/launcher/views/FolderColorPicker;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->doesIntersectPoint(Landroid/graphics/Point;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mEditTextView:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/views/EditTextView;->getMode()Lcom/sec/android/app/launcher/views/EditTextView$Mode;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/launcher/views/EditTextView$Mode;->EDIT:Lcom/sec/android/app/launcher/views/EditTextView$Mode;

    if-ne v4, v5, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mEditTextView:Lcom/sec/android/app/launcher/views/EditTextView;

    sget-object v4, Lcom/sec/android/app/launcher/views/EditTextView$Mode;->EDIT:Lcom/sec/android/app/launcher/views/EditTextView$Mode;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/views/EditTextView;->getText(Lcom/sec/android/app/launcher/views/EditTextView$Mode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->updateTitle(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mEditTextView:Lcom/sec/android/app/launcher/views/EditTextView;

    sget-object v4, Lcom/sec/android/app/launcher/views/EditTextView$Mode;->TEXT:Lcom/sec/android/app/launcher/views/EditTextView$Mode;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/views/EditTextView;->setMode(Lcom/sec/android/app/launcher/views/EditTextView$Mode;)V

    goto :goto_0

    :cond_3
    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->hideColorPicker()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setVisibilityFolderTitle(Z)V

    move v2, v3

    goto :goto_0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderOpenedTalkBack:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/TextView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getTitleView()Lcom/sec/daliviews/views/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/TextView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onResizeStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mColorPicker:Lcom/sec/android/app/launcher/views/FolderColorPicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mColorPicker:Lcom/sec/android/app/launcher/views/FolderColorPicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->updateTitle(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->onDonePressed()V

    return-void
.end method

.method public resetPeer()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/launcher/views/OpenFolderView;->resetPeer()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->cleanupJava()V

    return-void
.end method

.method public setAddIconVisible(Z)V
    .locals 4

    const v3, 0x7fffffff

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSupportFolderItemMove:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->getAdapter()Lcom/sec/daliviews/views/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/FolderItem;->getAddIcon()Lcom/sec/android/app/launcher/data/HomeItem;

    move-result-object v1

    if-eqz p1, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAddIconVisible:Z

    if-nez v2, :cond_0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/data/HomeItem;->setCellX(I)V

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/data/HomeItem;->setCellY(I)V

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/Adapter;->addItem(Lcom/sec/daliviews/views/Item;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->setAddIcon(Lcom/sec/daliviews/views/Item;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->setOnAddIconClickListener(Lcom/sec/android/app/launcher/views/FolderAdapterView$OnAddIconClickListener;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAddIconVisible:Z

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAddIconVisible:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->setOnAddIconClickListener(Lcom/sec/android/app/launcher/views/FolderAdapterView$OnAddIconClickListener;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAddIconVisible:Z

    goto :goto_0
.end method

.method public setFolderItem(Lcom/sec/android/app/launcher/data/FolderItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    return-void
.end method

.method public setFolderItemOwnColor(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getAdapterViewSeat()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/ContainerView;->useOwnColor(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getTitleView()Lcom/sec/daliviews/views/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/TextView;->useOwnColor(Z)V

    const v0, 0x7f0b0098

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/NativeViewBase;->useOwnColor(Z)V

    const v0, 0x7f0b009c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/NativeViewBase;->useOwnColor(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getMenuButton()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/ContainerView;->useOwnColor(Z)V

    return-void
.end method

.method public setFolderMaxFontsize(Lcom/sec/daliviews/views/TextView;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    const v1, 0x7f0a0211

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->readDimension(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/daliviews/views/TextView;->setTextSize(I)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    return-void

    :cond_1
    const v1, 0x7f0a0210

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->readDimension(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/daliviews/views/TextView;->setTextSize(I)V

    goto :goto_0
.end method

.method public setMenuButtonVisible(I)V
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getMenuButton()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isRTLLayout()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/sec/daliviews/views/ContainerView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v0

    const v3, 0x7f0a020a

    invoke-direct {p0, v3}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->readDimension(I)I

    move-result v3

    const v4, 0x7f0a020c

    invoke-direct {p0, v4}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->readDimension(I)I

    move-result v4

    invoke-virtual {v0, v3, v2, v4, v2}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/ContainerView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    :cond_0
    invoke-virtual {v1, p1}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    if-nez p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->setClickable(Z)V

    return-void
.end method

.method public setMode(Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x7f0b00e1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mMode:Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$2;->$SwitchMap$com$sec$android$app$launcher$views$HomeOpenFolderView$OpenFolderMode:[I

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mMode:Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    const v2, 0x7f0b00e3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->setDefaultMode(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->setCanAcceptDrop(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    const v2, 0x7f0b00e2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->setDefaultMode(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->setCanAcceptDrop(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->setDefaultMode(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->setCanAcceptDrop(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->getDataSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_FAVORITES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-static {v1, v2}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->setDefaultMode(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->setCanAcceptDrop(Z)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->setDefaultMode(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mAdapterView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->setCanAcceptDrop(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getTitleView()Lcom/sec/daliviews/views/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setFolderMaxFontsize(Lcom/sec/daliviews/views/TextView;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getEditTextView()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setTitleSelection(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getEditTextView()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setSelection(II)V

    :cond_0
    return-void
.end method

.method public setUninstallBadge()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$2;->$SwitchMap$com$sec$android$app$launcher$views$HomeOpenFolderView$OpenFolderMode:[I

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mMode:Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setUninstallBadge(Z)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentFragmentId()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setUninstallBadge(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setUninstallBadge(Z)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setUninstallBadge(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setUninstallBadge(Z)V
    .locals 7

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isRTLLayout()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/app/launcher/views/HomeItemView;->setLayoutDirection(I)V

    :goto_1
    invoke-virtual {v4, v0, p1, v6}, Lcom/sec/android/app/launcher/views/HomeItemView;->setUninstallView(Lcom/sec/android/app/launcher/data/HomeItem;ZZ)V

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v5

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/launcher/views/HomeItemView;->setTitleAttribute(II)V

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v6}, Lcom/sec/android/app/launcher/views/HomeItemView;->setLayoutDirection(I)V

    goto :goto_1
.end method

.method public setVisibilityFolderTitle(Z)V
    .locals 6

    const v5, 0x3dcccccd    # 0.1f

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    :goto_0
    const v3, 0x7f0b009c

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v2, v5}, Lcom/sec/daliviews/views/ContainerView;->setVisibilityAnimated(IF)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeLoader()Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getIsTheme(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getFolderStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->getOpenFolderType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v2, 0x4

    :cond_0
    const v3, 0x7f0b0098

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1, v2, v5}, Lcom/sec/daliviews/views/ContainerView;->setVisibilityAnimated(IF)V

    return-void

    :cond_1
    const/4 v2, 0x4

    goto :goto_0
.end method

.method public showEditText()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mEditTextView:Lcom/sec/android/app/launcher/views/EditTextView;

    sget-object v1, Lcom/sec/android/app/launcher/views/EditTextView$Mode;->EDIT:Lcom/sec/android/app/launcher/views/EditTextView$Mode;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/EditTextView;->setMode(Lcom/sec/android/app/launcher/views/EditTextView$Mode;)V

    return-void
.end method

.method public updateEditTextViewPosition()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mEditTextView:Lcom/sec/android/app/launcher/views/EditTextView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getIsRotating()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mEditTextView:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/EditTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->onBackpressed()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mEditTextView:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/EditTextView;->updateEditTextViewPosition()V

    goto :goto_0
.end method

.method public updateTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setTitleViewDescription(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/FolderItem;->onTitleChanged(Ljava/lang/String;)V

    goto :goto_0
.end method
