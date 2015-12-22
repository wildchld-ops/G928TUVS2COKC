.class public Lcom/sec/android/app/launcher/views/FolderColorPicker;
.super Lcom/sec/daliviews/views/ContainerView;
.source "FolderColorPicker.java"

# interfaces
.implements Lcom/sec/daliviews/views/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/views/FolderColorPicker$OnColorSelectionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final UNSPECIFIED_FOLDER_COLOR:I = -0x1


# instance fields
.field private mAdapter:Lcom/sec/daliviews/views/ListAdapter;

.field private mAdapterView:Lcom/sec/daliviews/views/AdapterView;

.field private mAppearAnim:Lcom/sec/daliviews/animation/NativeAnimation;

.field private mColorItemMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/launcher/data/ColorPickerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentColorItem:Lcom/sec/android/app/launcher/data/ColorPickerItem;

.field private mDismissAnim:Lcom/sec/daliviews/animation/NativeAnimation;

.field private mIsDismissing:Z

.field private mListener:Lcom/sec/android/app/launcher/views/FolderColorPicker$OnColorSelectionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/views/FolderColorPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/ContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mColorItemMap:Landroid/util/SparseArray;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mCurrentColorItem:Lcom/sec/android/app/launcher/data/ColorPickerItem;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mListener:Lcom/sec/android/app/launcher/views/FolderColorPicker$OnColorSelectionListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mIsDismissing:Z

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mAppearAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mDismissAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/launcher/views/FolderColorPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mIsDismissing:Z

    return p1
.end method

.method private cleanupJava()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/AdapterView;->setOnItemClickListener(Lcom/sec/daliviews/views/AdapterView$OnItemClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ListAdapter;->destroy()V

    :cond_1
    iput-object v1, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mCurrentColorItem:Lcom/sec/android/app/launcher/data/ColorPickerItem;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mListener:Lcom/sec/android/app/launcher/views/FolderColorPicker$OnColorSelectionListener;

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mAppearAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mAppearAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->destroy()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mAppearAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mDismissAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mDismissAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->destroy()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mDismissAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    :cond_3
    return-void
.end method

.method private readDimension(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private setCurrentColorItem(Lcom/sec/android/app/launcher/data/ColorPickerItem;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mCurrentColorItem:Lcom/sec/android/app/launcher/data/ColorPickerItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mCurrentColorItem:Lcom/sec/android/app/launcher/data/ColorPickerItem;

    if-eq p1, v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mCurrentColorItem:Lcom/sec/android/app/launcher/data/ColorPickerItem;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mCurrentColorItem:Lcom/sec/android/app/launcher/data/ColorPickerItem;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/launcher/data/ColorPickerItem;->setChecked(Z)V

    :cond_1
    invoke-virtual {p1, v1}, Lcom/sec/android/app/launcher/data/ColorPickerItem;->setChecked(Z)V

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mCurrentColorItem:Lcom/sec/android/app/launcher/data/ColorPickerItem;

    move v0, v1

    :cond_2
    return v0
.end method


# virtual methods
.method public appear()V
    .locals 5

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mIsDismissing:Z

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mDismissAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mDismissAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v3}, Lcom/sec/daliviews/animation/NativeAnimation;->reset()V

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mAppearAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    if-nez v3, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v3

    const v4, 0x7f04000b

    invoke-static {v3, v4}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mAppearAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mAppearAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v3, p0}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/ListAdapter;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/views/ColorPickerItemView;

    if-nez v2, :cond_2

    sget-object v3, Lcom/sec/android/app/launcher/views/FolderColorPicker;->TAG:Ljava/lang/String;

    const-string v4, "ColorPickerItemView not created"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mAppearAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v3}, Lcom/sec/daliviews/animation/NativeAnimation;->reset()V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->appear()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public destroy()V
    .locals 0

    invoke-super {p0}, Lcom/sec/daliviews/views/ContainerView;->destroy()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->cleanupJava()V

    return-void
.end method

.method public dismiss()V
    .locals 5

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mIsDismissing:Z

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mAppearAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mAppearAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v3}, Lcom/sec/daliviews/animation/NativeAnimation;->reset()V

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mDismissAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    if-nez v3, :cond_2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v3

    const v4, 0x7f04000c

    invoke-static {v3, v4}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mDismissAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mDismissAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    new-instance v4, Lcom/sec/android/app/launcher/views/FolderColorPicker$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/launcher/views/FolderColorPicker$1;-><init>(Lcom/sec/android/app/launcher/views/FolderColorPicker;)V

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/animation/NativeAnimation;->addListener(Lcom/sec/daliviews/animation/NativeAnimation$AnimationListener;)V

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mDismissAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v3, p0}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/ListAdapter;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/views/ColorPickerItemView;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/ColorPickerItemView;->dismiss()V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mDismissAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v3}, Lcom/sec/daliviews/animation/NativeAnimation;->reset()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getAdapter()Lcom/sec/daliviews/views/ListAdapter;
    .locals 10

    iget-object v8, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-nez v8, :cond_0

    new-instance v8, Lcom/sec/daliviews/views/ListAdapter;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Lcom/sec/daliviews/views/ListAdapter;-><init>(Z)V

    iput-object v8, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    const/4 v7, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/data/FolderItem;->getSupportedColors()[I

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/data/FolderItem;->getSupportedColors()[I

    move-result-object v0

    array-length v6, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_0

    aget v1, v0, v4

    new-instance v5, Lcom/sec/android/app/launcher/data/ColorPickerItem;

    invoke-direct {v5}, Lcom/sec/android/app/launcher/data/ColorPickerItem;-><init>()V

    invoke-virtual {v5, v7}, Lcom/sec/android/app/launcher/data/ColorPickerItem;->setCellX(I)V

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/app/launcher/data/ColorPickerItem;->setCellY(I)V

    invoke-virtual {v5, v7}, Lcom/sec/android/app/launcher/data/ColorPickerItem;->setPos(I)V

    invoke-virtual {v5, v1}, Lcom/sec/android/app/launcher/data/ColorPickerItem;->setColor(I)V

    sget-object v8, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->folder_colors:[I

    aget v3, v8, v7

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/sec/android/app/launcher/data/ColorPickerItem;->setContentDescription(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mColorItemMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v8, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v8, v5}, Lcom/sec/daliviews/views/ListAdapter;->addItem(Lcom/sec/daliviews/views/Item;)V

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    return-object v8
.end method

.method public isDismissing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mIsDismissing:Z

    return v0
.end method

.method public onItemClick(Lcom/sec/daliviews/views/AdapterView;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)Z
    .locals 2

    check-cast p3, Lcom/sec/android/app/launcher/data/ColorPickerItem;

    invoke-direct {p0, p3}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->setCurrentColorItem(Lcom/sec/android/app/launcher/data/ColorPickerItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mListener:Lcom/sec/android/app/launcher/views/FolderColorPicker$OnColorSelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mListener:Lcom/sec/android/app/launcher/views/FolderColorPicker$OnColorSelectionListener;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mCurrentColorItem:Lcom/sec/android/app/launcher/data/ColorPickerItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/ColorPickerItem;->getPos()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/launcher/views/FolderColorPicker$OnColorSelectionListener;->onColorSelected(I)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public resetPeer()V
    .locals 0

    invoke-super {p0}, Lcom/sec/daliviews/views/ContainerView;->resetPeer()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->cleanupJava()V

    return-void
.end method

.method public setColor(I)V
    .locals 9

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    if-nez v6, :cond_1

    const v6, 0x7f0b0065

    invoke-virtual {p0, v6}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v6

    check-cast v6, Lcom/sec/daliviews/views/AdapterView;

    iput-object v6, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    const v6, 0x7f0a007e

    invoke-direct {p0, v6}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->readDimension(I)I

    move-result v3

    const v6, 0x7f0a007f

    invoke-direct {p0, v6}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->readDimension(I)I

    move-result v4

    const v6, 0x7f0a0080

    invoke-direct {p0, v6}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->readDimension(I)I

    move-result v5

    const v6, 0x7f0a007d

    invoke-direct {p0, v6}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->readDimension(I)I

    move-result v2

    new-instance v1, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    invoke-direct {v1}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;-><init>()V

    invoke-virtual {v1, v3, v5, v4, v2}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutGravity(I)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    invoke-virtual {v6, v1}, Lcom/sec/daliviews/views/AdapterView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->getType()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->getId()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/daliviews/views/AdapterView;->setContainerTypeAndId(II)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    invoke-virtual {v6, p0}, Lcom/sec/daliviews/views/AdapterView;->setOnItemClickListener(Lcom/sec/daliviews/views/AdapterView$OnItemClickListener;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/AdapterView;->setAdapter(Lcom/sec/daliviews/views/Adapter;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/AdapterView;->setDragEventInterest(I)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/AdapterView;->setSensitive(Z)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mColorItemMap:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/launcher/data/ColorPickerItem;

    iput-object v6, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mCurrentColorItem:Lcom/sec/android/app/launcher/data/ColorPickerItem;

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mCurrentColorItem:Lcom/sec/android/app/launcher/data/ColorPickerItem;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mCurrentColorItem:Lcom/sec/android/app/launcher/data/ColorPickerItem;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/app/launcher/data/ColorPickerItem;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mColorItemMap:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/ColorPickerItem;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->setCurrentColorItem(Lcom/sec/android/app/launcher/data/ColorPickerItem;)Z

    goto :goto_0
.end method

.method public setColorPickerLayout()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/AdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/layouts/GridLayout;

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/layouts/GridLayout;->setAnimatePositioning(Z)V

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/layouts/GridLayout;->setBufferSize(I)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->setSensitive(Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/AdapterView;->setSensitive(Z)V

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/layouts/GridLayout;->setAnimatePositioning(Z)V

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/layouts/GridLayout;->setDancingIcons(Z)V

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/GridLayout;->getBufferSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/layouts/GridLayout;->setBufferSize(I)V

    return-void
.end method

.method public setOnColorSelectionListener(Lcom/sec/android/app/launcher/views/FolderColorPicker$OnColorSelectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker;->mListener:Lcom/sec/android/app/launcher/views/FolderColorPicker$OnColorSelectionListener;

    return-void
.end method
