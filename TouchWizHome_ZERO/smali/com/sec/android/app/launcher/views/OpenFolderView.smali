.class public abstract Lcom/sec/android/app/launcher/views/OpenFolderView;
.super Lcom/sec/daliviews/views/ContainerView;
.source "OpenFolderView.java"

# interfaces
.implements Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;


# static fields
.field private static final DIMENSION_NOT_SET:I = -0x1

.field private static mAdapterContainerMarginLeft:I

.field private static mAdapterContainerMarginRight:I

.field private static mAdapterContainerPaddingBottom:I

.field private static mAdapterContainerPaddingTop:I

.field private static mContentPadding:I

.field private static mFolderPadding:I

.field private static mOpenCellLastHeight:I

.field private static mOpenFolderWidth:I

.field private static mTitlePaneHeight:I

.field private static mTitlePaneMarginBottom:I

.field private static mTitlePaneMarginTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/launcher/views/OpenFolderView;->mOpenFolderWidth:I

    sput v0, Lcom/sec/android/app/launcher/views/OpenFolderView;->mFolderPadding:I

    sput v0, Lcom/sec/android/app/launcher/views/OpenFolderView;->mContentPadding:I

    sput v0, Lcom/sec/android/app/launcher/views/OpenFolderView;->mTitlePaneHeight:I

    sput v0, Lcom/sec/android/app/launcher/views/OpenFolderView;->mTitlePaneMarginTop:I

    sput v0, Lcom/sec/android/app/launcher/views/OpenFolderView;->mTitlePaneMarginBottom:I

    sput v0, Lcom/sec/android/app/launcher/views/OpenFolderView;->mAdapterContainerPaddingTop:I

    sput v0, Lcom/sec/android/app/launcher/views/OpenFolderView;->mAdapterContainerPaddingBottom:I

    sput v0, Lcom/sec/android/app/launcher/views/OpenFolderView;->mAdapterContainerMarginLeft:I

    sput v0, Lcom/sec/android/app/launcher/views/OpenFolderView;->mAdapterContainerMarginRight:I

    sput v0, Lcom/sec/android/app/launcher/views/OpenFolderView;->mOpenCellLastHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/ContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static getFolderHeight(II)I
    .locals 5

    const v4, 0x7f0a0201

    const/4 v3, -0x1

    sget v2, Lcom/sec/android/app/launcher/views/OpenFolderView;->mFolderPadding:I

    if-ne v2, v3, :cond_0

    const v2, 0x7f0a020f

    invoke-static {v2}, Lcom/sec/android/app/launcher/views/OpenFolderView;->readDimension(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/launcher/views/OpenFolderView;->mFolderPadding:I

    :cond_0
    sget v2, Lcom/sec/android/app/launcher/views/OpenFolderView;->mContentPadding:I

    if-ne v2, v3, :cond_1

    const v2, 0x7f0a0203

    invoke-static {v2}, Lcom/sec/android/app/launcher/views/OpenFolderView;->readDimension(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/launcher/views/OpenFolderView;->mContentPadding:I

    :cond_1
    sget v2, Lcom/sec/android/app/launcher/views/OpenFolderView;->mTitlePaneHeight:I

    if-ne v2, v3, :cond_2

    const v2, 0x7f0a0215

    invoke-static {v2}, Lcom/sec/android/app/launcher/views/OpenFolderView;->readDimension(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/launcher/views/OpenFolderView;->mTitlePaneHeight:I

    :cond_2
    sget v2, Lcom/sec/android/app/launcher/views/OpenFolderView;->mTitlePaneMarginTop:I

    if-ne v2, v3, :cond_3

    const v2, 0x7f0a0219

    invoke-static {v2}, Lcom/sec/android/app/launcher/views/OpenFolderView;->readDimension(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/launcher/views/OpenFolderView;->mTitlePaneMarginTop:I

    :cond_3
    sget v2, Lcom/sec/android/app/launcher/views/OpenFolderView;->mTitlePaneMarginBottom:I

    if-ne v2, v3, :cond_4

    const v2, 0x7f0a0216

    invoke-static {v2}, Lcom/sec/android/app/launcher/views/OpenFolderView;->readDimension(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/launcher/views/OpenFolderView;->mTitlePaneMarginBottom:I

    :cond_4
    sget v2, Lcom/sec/android/app/launcher/views/OpenFolderView;->mAdapterContainerPaddingTop:I

    if-ne v2, v3, :cond_5

    const v2, 0x7f0a01f7

    invoke-static {v2}, Lcom/sec/android/app/launcher/views/OpenFolderView;->readDimension(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/launcher/views/OpenFolderView;->mAdapterContainerPaddingTop:I

    :cond_5
    sget v2, Lcom/sec/android/app/launcher/views/OpenFolderView;->mAdapterContainerPaddingBottom:I

    if-ne v2, v3, :cond_6

    const v2, 0x7f0a01f4

    invoke-static {v2}, Lcom/sec/android/app/launcher/views/OpenFolderView;->readDimension(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/launcher/views/OpenFolderView;->mAdapterContainerPaddingBottom:I

    :cond_6
    mul-int v0, p1, p0

    const/4 v2, 0x3

    if-le p0, v2, :cond_9

    const/4 p0, 0x3

    sget v2, Lcom/sec/android/app/launcher/views/OpenFolderView;->mOpenCellLastHeight:I

    if-ne v2, v3, :cond_7

    invoke-static {v4}, Lcom/sec/android/app/launcher/views/OpenFolderView;->readDimension(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/launcher/views/OpenFolderView;->mOpenCellLastHeight:I

    :cond_7
    mul-int v2, p1, p0

    sget v3, Lcom/sec/android/app/launcher/views/OpenFolderView;->mOpenCellLastHeight:I

    add-int v0, v2, v3

    :cond_8
    :goto_0
    sget v2, Lcom/sec/android/app/launcher/views/OpenFolderView;->mFolderPadding:I

    sget v3, Lcom/sec/android/app/launcher/views/OpenFolderView;->mContentPadding:I

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    sget v3, Lcom/sec/android/app/launcher/views/OpenFolderView;->mTitlePaneMarginTop:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/launcher/views/OpenFolderView;->mTitlePaneHeight:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/launcher/views/OpenFolderView;->mTitlePaneMarginBottom:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/launcher/views/OpenFolderView;->mAdapterContainerPaddingTop:I

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    sget v3, Lcom/sec/android/app/launcher/views/OpenFolderView;->mAdapterContainerPaddingBottom:I

    add-int v1, v2, v3

    return v1

    :cond_9
    sget-boolean v2, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSupportFolderItemMove:Z

    if-eqz v2, :cond_8

    const/4 p0, 0x3

    sget v2, Lcom/sec/android/app/launcher/views/OpenFolderView;->mOpenCellLastHeight:I

    if-ne v2, v3, :cond_a

    invoke-static {v4}, Lcom/sec/android/app/launcher/views/OpenFolderView;->readDimension(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/launcher/views/OpenFolderView;->mOpenCellLastHeight:I

    :cond_a
    mul-int v0, p1, p0

    goto :goto_0
.end method

.method public static getFolderWidth()I
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/sec/android/app/launcher/views/OpenFolderView;->mOpenFolderWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const v0, 0x7f0a0220

    invoke-static {v0}, Lcom/sec/android/app/launcher/views/OpenFolderView;->readDimension(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/launcher/views/OpenFolderView;->mOpenFolderWidth:I

    :cond_1
    sget v0, Lcom/sec/android/app/launcher/views/OpenFolderView;->mOpenFolderWidth:I

    return v0
.end method

.method private static readDimension(I)I
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1
.end method


# virtual methods
.method public applyFolderColor(I)V
    .locals 0

    return-void
.end method

.method public getAdapterView()Lcom/sec/daliviews/views/AdapterView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdapterViewPos()Landroid/graphics/Point;
    .locals 4

    const/4 v3, -0x1

    sget v2, Lcom/sec/android/app/launcher/views/OpenFolderView;->mContentPadding:I

    if-ne v2, v3, :cond_0

    const v2, 0x7f0a0203

    invoke-static {v2}, Lcom/sec/android/app/launcher/views/OpenFolderView;->readDimension(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/launcher/views/OpenFolderView;->mContentPadding:I

    :cond_0
    sget v2, Lcom/sec/android/app/launcher/views/OpenFolderView;->mTitlePaneHeight:I

    if-ne v2, v3, :cond_1

    const v2, 0x7f0a0215

    invoke-static {v2}, Lcom/sec/android/app/launcher/views/OpenFolderView;->readDimension(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/launcher/views/OpenFolderView;->mTitlePaneHeight:I

    :cond_1
    sget v2, Lcom/sec/android/app/launcher/views/OpenFolderView;->mTitlePaneMarginTop:I

    if-ne v2, v3, :cond_2

    const v2, 0x7f0a0219

    invoke-static {v2}, Lcom/sec/android/app/launcher/views/OpenFolderView;->readDimension(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/launcher/views/OpenFolderView;->mTitlePaneMarginTop:I

    :cond_2
    sget v2, Lcom/sec/android/app/launcher/views/OpenFolderView;->mTitlePaneMarginBottom:I

    if-ne v2, v3, :cond_3

    const v2, 0x7f0a0216

    invoke-static {v2}, Lcom/sec/android/app/launcher/views/OpenFolderView;->readDimension(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/launcher/views/OpenFolderView;->mTitlePaneMarginBottom:I

    :cond_3
    sget v2, Lcom/sec/android/app/launcher/views/OpenFolderView;->mAdapterContainerPaddingTop:I

    if-ne v2, v3, :cond_4

    const v2, 0x7f0a01f7

    invoke-static {v2}, Lcom/sec/android/app/launcher/views/OpenFolderView;->readDimension(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/launcher/views/OpenFolderView;->mAdapterContainerPaddingTop:I

    :cond_4
    sget v2, Lcom/sec/android/app/launcher/views/OpenFolderView;->mAdapterContainerMarginLeft:I

    if-ne v2, v3, :cond_5

    const v2, 0x7f0a01f5

    invoke-static {v2}, Lcom/sec/android/app/launcher/views/OpenFolderView;->readDimension(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/launcher/views/OpenFolderView;->mAdapterContainerMarginLeft:I

    :cond_5
    sget v2, Lcom/sec/android/app/launcher/views/OpenFolderView;->mContentPadding:I

    sget v3, Lcom/sec/android/app/launcher/views/OpenFolderView;->mAdapterContainerMarginLeft:I

    add-int v0, v2, v3

    sget v2, Lcom/sec/android/app/launcher/views/OpenFolderView;->mContentPadding:I

    sget v3, Lcom/sec/android/app/launcher/views/OpenFolderView;->mTitlePaneMarginTop:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/launcher/views/OpenFolderView;->mTitlePaneHeight:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/launcher/views/OpenFolderView;->mTitlePaneMarginBottom:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/launcher/views/OpenFolderView;->mAdapterContainerPaddingTop:I

    add-int v1, v2, v3

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method public getAdapterViewWidth()I
    .locals 2

    const/4 v1, -0x1

    sget v0, Lcom/sec/android/app/launcher/views/OpenFolderView;->mContentPadding:I

    if-ne v0, v1, :cond_0

    const v0, 0x7f0a0203

    invoke-static {v0}, Lcom/sec/android/app/launcher/views/OpenFolderView;->readDimension(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/launcher/views/OpenFolderView;->mContentPadding:I

    :cond_0
    sget v0, Lcom/sec/android/app/launcher/views/OpenFolderView;->mAdapterContainerMarginLeft:I

    if-ne v0, v1, :cond_1

    const v0, 0x7f0a01f5

    invoke-static {v0}, Lcom/sec/android/app/launcher/views/OpenFolderView;->readDimension(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/launcher/views/OpenFolderView;->mAdapterContainerMarginLeft:I

    :cond_1
    sget v0, Lcom/sec/android/app/launcher/views/OpenFolderView;->mAdapterContainerMarginRight:I

    if-ne v0, v1, :cond_2

    const v0, 0x7f0a01f6

    invoke-static {v0}, Lcom/sec/android/app/launcher/views/OpenFolderView;->readDimension(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/launcher/views/OpenFolderView;->mAdapterContainerMarginRight:I

    :cond_2
    invoke-static {}, Lcom/sec/android/app/launcher/views/OpenFolderView;->getFolderWidth()I

    move-result v0

    sget v1, Lcom/sec/android/app/launcher/views/OpenFolderView;->mContentPadding:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/launcher/views/OpenFolderView;->mAdapterContainerMarginLeft:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/launcher/views/OpenFolderView;->mAdapterContainerMarginRight:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/launcher/views/OpenFolderView;->mContentPadding:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public onFolderCloseCompleted(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 0

    return-void
.end method

.method public onFolderClosed(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 0

    return-void
.end method

.method public onFolderClosing(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 0

    return-void
.end method

.method public onFolderOpened(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 0

    return-void
.end method

.method public onFolderOpening(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 0

    return-void
.end method
