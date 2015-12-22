.class public abstract Lcom/sec/android/app/launcher/data/PageItem;
.super Lcom/sec/daliviews/views/Item;
.source "PageItem.java"


# static fields
.field public static final INVALID_CONTAINER_FILTER:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Launcher.Data.PageItem"


# instance fields
.field private mBackgroundColour:I

.field private mBufferSize:I

.field private mCellHeight:I

.field private mCellSpacingHorizontal:I

.field private mCellSpacingVertical:I

.field private mCellWidth:I

.field private mChangeMode:Z

.field private mChannel:I

.field private mContainerFilter:I

.field private mCurrentPage:Z

.field protected mDataConnector:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

.field private mDefaultCellHeight:I

.field private mDefaultCellWidth:I

.field private mDragAndDrap:Z

.field private mEmptyPage:Z

.field private mEnabled:Z

.field private mHomeIconMode:I

.field private mHorizontalScroll:Z

.field private mLayoutClipping:Z

.field private mLayoutHeight:I

.field private mLayoutType:I

.field private mLayoutWidth:I

.field private mLongClickable:Z

.field private mName:Ljava/lang/String;

.field private mOrientation:I

.field private mPageCategory:I

.field private mPagePadding:Landroid/graphics/Rect;

.field private mPosMenu:Ljava/lang/Integer;

.field private mRearrangement:I

.field private mSourceType:I

.field private mVerticalScroll:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/daliviews/views/Item;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/PageItem;->mName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mPosMenu:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCurrentPage:Z

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mEnabled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mDragAndDrap:Z

    iput v1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mLayoutType:I

    iput v1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mOrientation:I

    iput v1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mSourceType:I

    iput v1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mPageCategory:I

    iput v1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mRearrangement:I

    iput v3, p0, Lcom/sec/android/app/launcher/data/PageItem;->mContainerFilter:I

    const v0, 0x7f0b00d7

    iput v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mHomeIconMode:I

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mChangeMode:Z

    iput v1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mBackgroundColour:I

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mLongClickable:Z

    iput v1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCellWidth:I

    iput v1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCellHeight:I

    iput v1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCellSpacingHorizontal:I

    iput v1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCellSpacingVertical:I

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/PageItem;->mPagePadding:Landroid/graphics/Rect;

    iput v1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mChannel:I

    iput v3, p0, Lcom/sec/android/app/launcher/data/PageItem;->mBufferSize:I

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mEmptyPage:Z

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mHorizontalScroll:Z

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mVerticalScroll:Z

    iput v1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mDefaultCellWidth:I

    iput v1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mDefaultCellHeight:I

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/PageItem;->mDataConnector:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    iput v1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mLayoutWidth:I

    iput v1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mLayoutHeight:I

    return-void
.end method


# virtual methods
.method public canDragAndDrop()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mDragAndDrap:Z

    return v0
.end method

.method public getBackgroundColour()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mBackgroundColour:I

    return v0
.end method

.method public getBufferSize()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mBufferSize:I

    return v0
.end method

.method public getCategory()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mPageCategory:I

    return v0
.end method

.method public getCellSizeHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCellHeight:I

    return v0
.end method

.method public getCellSizeWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCellWidth:I

    return v0
.end method

.method public getCellSpacingHorizontal()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCellSpacingHorizontal:I

    return v0
.end method

.method public getCellSpacingVertical()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCellSpacingVertical:I

    return v0
.end method

.method public getChangeMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mChangeMode:Z

    return v0
.end method

.method public getChannel()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mChannel:I

    return v0
.end method

.method public getContainerFilter()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mContainerFilter:I

    return v0
.end method

.method public getDataConnector()Lcom/sec/android/app/launcher/data/connectors/DataConnector;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mDataConnector:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    return-object v0
.end method

.method public getDefaultCellHeight()I
    .locals 2

    iget v1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mDefaultCellHeight:I

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mDefaultCellHeight:I

    :cond_0
    iget v1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mDefaultCellHeight:I

    return v1
.end method

.method public getDefaultCellWidth()I
    .locals 2

    iget v1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mDefaultCellWidth:I

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mDefaultCellWidth:I

    :cond_0
    iget v1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mDefaultCellWidth:I

    return v1
.end method

.method public getEmptyPage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mEmptyPage:Z

    return v0
.end method

.method public getHomeIconMode()I
    .locals 3

    const v2, 0x7f0b00d8

    const v1, 0x7f0b00d7

    sget-boolean v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mHomeIconMode:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mHomeIconMode:I

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isMobileKeyboardMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iput v2, p0, Lcom/sec/android/app/launcher/data/PageItem;->mHomeIconMode:I

    :cond_1
    :goto_0
    iget v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mHomeIconMode:I

    return v0

    :cond_2
    iput v1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mHomeIconMode:I

    goto :goto_0
.end method

.method public getHorizontalScroll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mHorizontalScroll:Z

    return v0
.end method

.method public getLayoutClipping()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mLayoutClipping:Z

    return v0
.end method

.method public getLayoutOrientation()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mOrientation:I

    return v0
.end method

.method public getLayoutType()Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mLayoutType:I

    invoke-static {v0}, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;->fromInt(I)Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    move-result-object v0

    return-object v0
.end method

.method public getLongClickable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mLongClickable:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPageLayoutHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mLayoutHeight:I

    return v0
.end method

.method public getPageLayoutWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mLayoutWidth:I

    return v0
.end method

.method public getPageOrder()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/PageItem;->getCellX()I

    move-result v0

    return v0
.end method

.method public getPagePaddings()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mPagePadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPosMenu()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mPosMenu:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRearrangement()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mRearrangement:I

    return v0
.end method

.method public getSource()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mSourceType:I

    return v0
.end method

.method public getVerticalScroll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mVerticalScroll:Z

    return v0
.end method

.method public isCurrentPage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCurrentPage:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mEnabled:Z

    return v0
.end method

.method public setBackgroundColour(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mBackgroundColour:I

    return-void
.end method

.method public setBufferSize(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mBufferSize:I

    return-void
.end method

.method public setCategory(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mPageCategory:I

    return-void
.end method

.method public setCellSizeHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCellHeight:I

    return-void
.end method

.method public setCellSizeWidth(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCellWidth:I

    return-void
.end method

.method public setCellSpacingHorizontal(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCellSpacingHorizontal:I

    return-void
.end method

.method public setCellSpacingVertical(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCellSpacingVertical:I

    return-void
.end method

.method public setChangeMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mChangeMode:Z

    return-void
.end method

.method public setChannel(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mChannel:I

    return-void
.end method

.method public setContainerFilter(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mContainerFilter:I

    return-void
.end method

.method public setCurrentPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCurrentPage:Z

    return-void
.end method

.method public setDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mDataConnector:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    return-void
.end method

.method public setDefaultCellHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mDefaultCellHeight:I

    return-void
.end method

.method public setDefaultCellWidth(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mDefaultCellWidth:I

    return-void
.end method

.method public setDragAndDrop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mDragAndDrap:Z

    return-void
.end method

.method public setEmptyPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mEmptyPage:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mEnabled:Z

    return-void
.end method

.method public setGridSize(II)V
    .locals 13

    const v12, 0x7f0a00a1

    const/4 v11, 0x4

    const v10, 0x7f0a009d

    const/4 v9, 0x5

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/PageItem;->getDefaultCellWidth()I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/launcher/data/PageItem;->mDefaultCellWidth:I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/PageItem;->getDefaultCellHeight()I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/launcher/data/PageItem;->mDefaultCellHeight:I

    iget v6, p0, Lcom/sec/android/app/launcher/data/PageItem;->mLayoutWidth:I

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/sec/android/app/launcher/data/PageItem;->mLayoutHeight:I

    if-nez v6, :cond_1

    :cond_0
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v6, 0x7f0c0015

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget v6, p0, Lcom/sec/android/app/launcher/data/PageItem;->mDefaultCellWidth:I

    add-int/2addr v6, v3

    mul-int/2addr v6, v2

    iput v6, p0, Lcom/sec/android/app/launcher/data/PageItem;->mLayoutWidth:I

    :cond_1
    if-gtz p1, :cond_2

    const-string v6, "Launcher.Data.PageItem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Entering !(col>0): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Previous Column:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v6, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    if-gtz v6, :cond_6

    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getHomePageColumns()I

    move-result p1

    :goto_0
    const-string v6, "Launcher.Data.PageItem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exiting from !(col>0): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Previous Column:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz p1, :cond_2

    const/4 p1, 0x4

    :cond_2
    if-gtz p2, :cond_3

    sget p2, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    const-string v6, "Launcher.Data.PageItem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Inside !(row>0): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Previous Rows:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz p2, :cond_3

    const/4 p2, 0x4

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New Dimensions: Rows: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,  Columns: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Launcher.Data.PageItem"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v11, :cond_7

    const v6, 0x7f0a00a9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCellWidth:I

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCellSpacingHorizontal:I

    :goto_1
    iget v6, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCellWidth:I

    if-lez v6, :cond_4

    iget v6, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCellWidth:I

    rem-int/lit8 v6, v6, 0x2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    iget v6, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCellWidth:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCellWidth:I

    :cond_4
    if-ne p2, v11, :cond_9

    const v6, 0x7f0a00a5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCellHeight:I

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCellSpacingVertical:I

    :goto_2
    if-ne p1, v9, :cond_b

    iget-object v6, p0, Lcom/sec/android/app/launcher/data/PageItem;->mPagePadding:Landroid/graphics/Rect;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/launcher/data/PageItem;->mPagePadding:Landroid/graphics/Rect;

    const v7, 0x7f0a00f0

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/sec/android/app/launcher/data/PageItem;->mPagePadding:Landroid/graphics/Rect;

    const v7, 0x7f0a00f2

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    :cond_5
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New Dimensions: Cell Width: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCellWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), Cell Height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCellHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Launcher.Data.PageItem"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    sget p1, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    goto/16 :goto_0

    :cond_7
    if-ne p1, v9, :cond_8

    const v6, 0x7f0a00aa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCellWidth:I

    const v6, 0x7f0a009e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCellSpacingHorizontal:I

    goto/16 :goto_1

    :cond_8
    iget v6, p0, Lcom/sec/android/app/launcher/data/PageItem;->mLayoutWidth:I

    div-int v1, v6, p1

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCellSpacingHorizontal:I

    iget v6, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCellSpacingHorizontal:I

    sub-int v6, v1, v6

    iput v6, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCellWidth:I

    goto/16 :goto_1

    :cond_9
    if-ne p2, v9, :cond_a

    const v6, 0x7f0a00a6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCellHeight:I

    const v6, 0x7f0a00a2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCellSpacingVertical:I

    goto/16 :goto_2

    :cond_a
    iget v6, p0, Lcom/sec/android/app/launcher/data/PageItem;->mLayoutHeight:I

    div-int v0, v6, p2

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCellSpacingVertical:I

    iget v6, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCellSpacingVertical:I

    sub-int v6, v0, v6

    iput v6, p0, Lcom/sec/android/app/launcher/data/PageItem;->mCellHeight:I

    goto/16 :goto_2

    :cond_b
    iget-object v6, p0, Lcom/sec/android/app/launcher/data/PageItem;->mPagePadding:Landroid/graphics/Rect;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/launcher/data/PageItem;->mPagePadding:Landroid/graphics/Rect;

    const v7, 0x7f0a00ef

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/sec/android/app/launcher/data/PageItem;->mPagePadding:Landroid/graphics/Rect;

    const v7, 0x7f0a00f1

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    goto/16 :goto_3
.end method

.method public setHomeIconMode(I)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/views/ViewDefs$VIEW_MODES;->MODES_MAP:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/sec/android/app/launcher/views/ViewDefs$VIEW_MODES;->MODES_MAP:[I

    aget v0, v0, p1

    iput v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mHomeIconMode:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mHomeIconMode:I

    goto :goto_0
.end method

.method public setHorizontalScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mHorizontalScroll:Z

    return-void
.end method

.method public setLayoutClipping(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mLayoutClipping:Z

    return-void
.end method

.method public setLayoutOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mOrientation:I

    return-void
.end method

.method public setLayoutType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mLayoutType:I

    return-void
.end method

.method public setLongClickable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mLongClickable:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mName:Ljava/lang/String;

    return-void
.end method

.method public setPageLayoutHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mLayoutHeight:I

    return-void
.end method

.method public setPageOrder(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/data/PageItem;->setCellX(I)V

    return-void
.end method

.method public setPagePaddings(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mPagePadding:Landroid/graphics/Rect;

    return-void
.end method

.method public setPosMenu(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/PageItem;->mPosMenu:Ljava/lang/Integer;

    return-void
.end method

.method public setRearrangement(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mRearrangement:I

    return-void
.end method

.method public setSource(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mSourceType:I

    return-void
.end method

.method public setVerticalScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/data/PageItem;->mVerticalScroll:Z

    return-void
.end method
