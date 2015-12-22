.class public Lcom/sec/android/app/launcher/data/AGifImage;
.super Lcom/sec/android/app/launcher/data/LauncherItem;
.source "AGifImage.java"


# instance fields
.field private mAGifImageView:Lcom/sec/android/app/launcher/views/AGifImageView;

.field private mContext:Landroid/content/Context;

.field private mFilename:Ljava/lang/String;

.field protected final mInflater:Lcom/sec/daliviews/views/ViewInflater;

.field private mIsDrawRound:Z

.field private mIsDrm:Z

.field private mLongClickable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/LauncherItem;-><init>()V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/AGifImage;->mInflater:Lcom/sec/daliviews/views/ViewInflater;

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/data/AGifImage;->mLongClickable:Z

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/data/AGifImage;->mIsDrm:Z

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/data/AGifImage;->mIsDrawRound:Z

    iput-boolean p4, p0, Lcom/sec/android/app/launcher/data/AGifImage;->mLongClickable:Z

    iput-object p2, p0, Lcom/sec/android/app/launcher/data/AGifImage;->mFilename:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/AGifImage;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemType()I
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SHORTCUT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v0

    return v0
.end method

.method public isCompatable(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDrawRound()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/AGifImage;->mIsDrawRound:Z

    return v0
.end method

.method public isDrmFile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/AGifImage;->mIsDrm:Z

    return v0
.end method

.method public onCreateItemView()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 4

    new-instance v0, Lcom/sec/android/app/launcher/views/AGifImageView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/AGifImage;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/AGifImage;->mFilename:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/sec/android/app/launcher/data/AGifImage;->mIsDrm:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/launcher/views/AGifImageView;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/AGifImage;->mAGifImageView:Lcom/sec/android/app/launcher/views/AGifImageView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/AGifImage;->mAGifImageView:Lcom/sec/android/app/launcher/views/AGifImageView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/views/AGifImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/AGifImage;->mAGifImageView:Lcom/sec/android/app/launcher/views/AGifImageView;

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/data/AGifImage;->mIsDrawRound:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/AGifImageView;->setDrawRound(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/AGifImage;->mAGifImageView:Lcom/sec/android/app/launcher/views/AGifImageView;

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/data/AGifImage;->mLongClickable:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/AGifImageView;->setLongClickable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/AGifImage;->mAGifImageView:Lcom/sec/android/app/launcher/views/AGifImageView;

    return-object v0
.end method

.method public populateView(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 0

    return-void
.end method

.method public setDrawRound(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/AGifImage;->mAGifImageView:Lcom/sec/android/app/launcher/views/AGifImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/AGifImage;->mAGifImageView:Lcom/sec/android/app/launcher/views/AGifImageView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/views/AGifImageView;->setDrawRound(Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/launcher/data/AGifImage;->mIsDrawRound:Z

    return-void
.end method

.method public setFilePath(Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/AGifImage;->mFilename:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/sec/android/app/launcher/data/AGifImage;->mIsDrm:Z

    return-void
.end method
