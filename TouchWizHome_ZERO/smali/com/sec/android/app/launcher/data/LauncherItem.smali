.class public abstract Lcom/sec/android/app/launcher/data/LauncherItem;
.super Lcom/sec/android/app/launcher/data/DataItemBase;
.source "LauncherItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/data/LauncherItem$TextHighlightable;,
        Lcom/sec/android/app/launcher/data/LauncherItem$OnCreateItemViewListener;
    }
.end annotation


# instance fields
.field protected mBadgeCount:I

.field protected mComponentName:Landroid/content/ComponentName;

.field protected mIntent:Ljava/lang/String;

.field protected mIsClone:Z

.field protected mIsHidden:Z

.field protected mNewCue:Z

.field protected mOriginalItem:Lcom/sec/android/app/launcher/data/LauncherItem;

.field protected mPackageName:Ljava/lang/String;

.field protected mUserId:J

.field protected onCreateItemViewListener:Lcom/sec/android/app/launcher/data/LauncherItem$OnCreateItemViewListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/DataItemBase;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mIntent:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mComponentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mPackageName:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mIsHidden:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mIsClone:Z

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mOriginalItem:Lcom/sec/android/app/launcher/data/LauncherItem;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mUserId:J

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mNewCue:Z

    return-void
.end method


# virtual methods
.method public clearIsClone()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mIsClone:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mOriginalItem:Lcom/sec/android/app/launcher/data/LauncherItem;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sec/android/app/launcher/data/DataItemBase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/LauncherItem;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/android/app/launcher/data/LauncherItem;->mDbId:I

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mIntent:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/android/app/launcher/data/LauncherItem;->mIntent:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mComponentName:Landroid/content/ComponentName;

    iput-object v1, v0, Lcom/sec/android/app/launcher/data/LauncherItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mPackageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/android/app/launcher/data/LauncherItem;->mPackageName:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mBadgeCount:I

    iput v1, v0, Lcom/sec/android/app/launcher/data/LauncherItem;->mBadgeCount:I

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mIsHidden:Z

    iput-boolean v1, v0, Lcom/sec/android/app/launcher/data/LauncherItem;->mIsHidden:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/launcher/data/LauncherItem;->mIsClone:Z

    iput-object p0, v0, Lcom/sec/android/app/launcher/data/LauncherItem;->mOriginalItem:Lcom/sec/android/app/launcher/data/LauncherItem;

    iget-wide v2, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mUserId:J

    iput-wide v2, v0, Lcom/sec/android/app/launcher/data/LauncherItem;->mUserId:J

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mNewCue:Z

    iput-boolean v1, v0, Lcom/sec/android/app/launcher/data/LauncherItem;->mNewCue:Z

    return-object v0
.end method

.method public containsKeyword(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBadgeCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mBadgeCount:I

    return v0
.end method

.method public getCachedSpanX()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mSpanX:I

    return v0
.end method

.method public getCachedSpanY()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mSpanY:I

    return v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mIntent:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/LauncherItem;->getComponentNameFromIntent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mComponentName:Landroid/content/ComponentName;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method protected getComponentNameFromIntent()Landroid/content/ComponentName;
    .locals 5

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mIntent:Ljava/lang/String;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mIntent:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public getIntent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mIntent:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/LauncherItem;->getIntentFromComponentName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mIntent:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mIntent:Ljava/lang/String;

    return-object v0
.end method

.method protected getIntentFromComponentName()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10200000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getOriginalItem()Lcom/sec/android/app/launcher/data/LauncherItem;
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mIsClone:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mOriginalItem:Lcom/sec/android/app/launcher/data/LauncherItem;

    :cond_0
    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mPackageName:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mPackageName:Ljava/lang/String;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mIntent:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/LauncherItem;->getPackageNameFromIntent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getPackageNameFromIntent()Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mIntent:Ljava/lang/String;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mIntent:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getUserId()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mUserId:J

    return-wide v0
.end method

.method public isClone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mIsClone:Z

    return v0
.end method

.method public isCustomPositionAfter(Lcom/sec/android/app/launcher/data/LauncherItem;)Z
    .locals 5

    const/4 v4, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mContainerType:I

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mCustomContainerId:I

    if-eq v2, v4, :cond_2

    iget v2, p1, Lcom/sec/android/app/launcher/data/LauncherItem;->mCustomContainerId:I

    if-ne v2, v4, :cond_3

    :cond_2
    iget v2, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mContainerId:I

    iget v3, p1, Lcom/sec/android/app/launcher/data/LauncherItem;->mContainerId:I

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mContainerId:I

    iget v3, p1, Lcom/sec/android/app/launcher/data/LauncherItem;->mContainerId:I

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mCustomContainerId:I

    iget v3, p1, Lcom/sec/android/app/launcher/data/LauncherItem;->mCustomContainerId:I

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mCustomContainerId:I

    iget v3, p1, Lcom/sec/android/app/launcher/data/LauncherItem;->mCustomContainerId:I

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mCustomPos:I

    iget v3, p1, Lcom/sec/android/app/launcher/data/LauncherItem;->mCustomPos:I

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isCustomPositionAt(II)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mCustomContainerId:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mCustomPos:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHidden()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mIsHidden:Z

    return v0
.end method

.method public isNewCue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mNewCue:Z

    return v0
.end method

.method public setBadgeCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mBadgeCount:I

    return-void
.end method

.method public setComponentName(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mComponentName:Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public setCustomPosition(IIZ)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mCustomContainerId:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mCustomPos:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/LauncherItem;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/launcher/data/LauncherItem;->setCustomPosition(II)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iput p2, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mCustomContainerId:I

    iput p1, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mCustomPos:I

    goto :goto_1
.end method

.method public setHidden(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mIsHidden:Z

    return-void
.end method

.method public setIntent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mIntent:Ljava/lang/String;

    return-void
.end method

.method public setNewCue(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mNewCue:Z

    return-void
.end method

.method public setOnCreateItemViewListener(Lcom/sec/android/app/launcher/data/LauncherItem$OnCreateItemViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->onCreateItemViewListener:Lcom/sec/android/app/launcher/data/LauncherItem$OnCreateItemViewListener;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mPackageName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setUserId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mUserId:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mContainerType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mContainerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mCellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mCellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCustomContainerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mCustomContainerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCustomPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mCustomPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/sec/daliviews/views/Item;)Z
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/launcher/data/LauncherItem;

    iget v1, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mDbId:I

    iget v2, v0, Lcom/sec/android/app/launcher/data/LauncherItem;->mDbId:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, v0, Lcom/sec/android/app/launcher/data/LauncherItem;->mIntent:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/sec/android/app/launcher/data/LauncherItem;->mIntent:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mIntent:Ljava/lang/String;

    :cond_1
    iget-object v1, v0, Lcom/sec/android/app/launcher/data/LauncherItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/sec/android/app/launcher/data/LauncherItem;->mComponentName:Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mComponentName:Landroid/content/ComponentName;

    :cond_2
    iget-object v1, v0, Lcom/sec/android/app/launcher/data/LauncherItem;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/sec/android/app/launcher/data/LauncherItem;->mPackageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/LauncherItem;->mPackageName:Ljava/lang/String;

    :cond_3
    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/data/DataItemBase;->update(Lcom/sec/daliviews/views/Item;)Z

    move-result v1

    goto :goto_0
.end method
