.class public Lcom/sec/android/app/launcher/data/ZeroPageListItem;
.super Lcom/sec/android/app/launcher/data/IconItem;
.source "ZeroPageListItem.java"


# instance fields
.field private mColourMap:Lcom/sec/daliviews/views/TextView$ColourMap;

.field private mItemView:Lcom/sec/daliviews/views/IconView;

.field private mLoadTask:Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;

.field private mPreview:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/IconItem;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mItemView:Lcom/sec/daliviews/views/IconView;

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mLoadTask:Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mColourMap:Lcom/sec/daliviews/views/TextView$ColourMap;

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mComponentName:Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mPackageName:Ljava/lang/String;

    move-object v0, p3

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mPreview:Landroid/graphics/Bitmap;

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->MENU_WIDGET:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mItemType:I

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/launcher/data/IconItem;->destroy()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mLoadTask:Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mLoadTask:Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mLoadTask:Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;

    :cond_0
    return-void
.end method

.method public getPreview()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mPreview:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getWidgetView()Lcom/sec/daliviews/views/IconView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mItemView:Lcom/sec/daliviews/views/IconView;

    return-object v0
.end method

.method public isCompatable(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loadPreviewImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mDataConnector:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mDataConnector:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->loadPreviewImage(Lcom/sec/daliviews/views/Item;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateItemView()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v0

    const v1, 0x7f030062

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mItemView:Lcom/sec/daliviews/views/IconView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mItemView:Lcom/sec/daliviews/views/IconView;

    invoke-virtual {v0, p0}, Lcom/sec/daliviews/views/IconView;->registerDestroyListener(Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mItemView:Lcom/sec/daliviews/views/IconView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->populateView(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mItemView:Lcom/sec/daliviews/views/IconView;

    return-object v0
.end method

.method public onPeerDestroyed(Lcom/sec/daliviews/views/PeerBase;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/data/IconItem;->onPeerDestroyed(Lcom/sec/daliviews/views/PeerBase;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mLoadTask:Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mItemView:Lcom/sec/daliviews/views/IconView;

    invoke-static {p1, v0}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mLoadTask:Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;->cancel()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mLoadTask:Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;

    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mItemView:Lcom/sec/daliviews/views/IconView;

    return-void
.end method

.method public populateView(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 3

    instance-of v1, p1, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mColourMap:Lcom/sec/daliviews/views/TextView$ColourMap;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mColourMap:Lcom/sec/daliviews/views/TextView$ColourMap;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->setTitle(Ljava/lang/String;Lcom/sec/daliviews/views/TextView$ColourMap;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mColourMap:Lcom/sec/daliviews/views/TextView$ColourMap;

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->setImage(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPreview(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mPreview:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public update(Lcom/sec/daliviews/views/Item;)Z
    .locals 4

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mTitle:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mTitle:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mTitle:Ljava/lang/String;

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->updateTitles(Z)V

    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/data/IconItem;->update(Lcom/sec/daliviews/views/Item;)Z

    move-result v2

    return v2
.end method

.method public updateTitles(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/IconView;

    instance-of v2, v0, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->setTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
