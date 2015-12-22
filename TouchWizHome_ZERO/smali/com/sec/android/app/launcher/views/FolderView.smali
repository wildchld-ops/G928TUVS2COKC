.class public abstract Lcom/sec/android/app/launcher/views/FolderView;
.super Lcom/sec/daliviews/views/IconView;
.source "FolderView.java"

# interfaces
.implements Lcom/sec/daliviews/views/IModedView;


# instance fields
.field private mContainer:Lcom/sec/daliviews/views/FixedContainer;

.field protected mContext:Landroid/content/Context;

.field protected mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/IconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/FolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/FolderView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getShadowEffect()Lcom/sec/daliviews/effects/ShadowEffect;
    .locals 3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_FAVORITES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/FolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/FolderItem;->getDataSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getShadowEffect(I)Lcom/sec/daliviews/effects/ShadowEffect;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getShadowEffect(I)Lcom/sec/daliviews/effects/ShadowEffect;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public applyEffects(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/views/FolderView;->applyShadowEffect(I)V

    return-void
.end method

.method public abstract applyFolderColor(I)V
.end method

.method public applyShadowEffect(I)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/FolderView;->getShadowEffect()Lcom/sec/daliviews/effects/ShadowEffect;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/FolderView;->mContainer:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {v0, p0, v1}, Lcom/sec/daliviews/effects/ShadowEffect;->apply(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    const v1, 0x7f0b00db

    if-eq p1, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, p0, v1}, Lcom/sec/daliviews/effects/ShadowEffect;->setVisibleOnView(Lcom/sec/daliviews/views/NativeViewBase;Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract attachAdapterView(Lcom/sec/daliviews/views/AdapterView;)V
.end method

.method public changeSubItemsToDefaultSize()V
    .locals 0

    return-void
.end method

.method public abstract detachAdapterView()V
.end method

.method public abstract getAdapterView()Lcom/sec/daliviews/views/AdapterView;
.end method

.method public abstract getContainerView()Lcom/sec/daliviews/views/ContainerViewBase;
.end method

.method public getFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/FolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    return-object v0
.end method

.method public getNodeInfo(Landroid/util/SparseIntArray;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/daliviews/views/IconView;->getNodeInfo(Landroid/util/SparseIntArray;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/FolderView;->getTitleView()Lcom/sec/daliviews/views/TextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/TextView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public abstract getTitleView()Lcom/sec/daliviews/views/TextView;
.end method

.method public isCloneable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRecyclable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removeAll()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/FolderView;->detachAllViews()V

    return-void
.end method

.method public setFolderItem(Lcom/sec/android/app/launcher/data/FolderItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/FolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    return-void
.end method

.method public setViewProperties(Lcom/sec/daliviews/views/NativeViewBase;Ljava/util/HashMap;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/daliviews/views/NativeViewBase;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    const/4 v10, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v11, "width"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v5, v10}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutWidth(I)V

    :cond_1
    :goto_2
    invoke-virtual {v5, v7, v9, v8, v6}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    goto :goto_1

    :cond_2
    const-string v11, "height"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    goto :goto_2

    :cond_3
    const-string v11, "layout_gravity"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutGravity(I)V

    goto :goto_2

    :cond_4
    const-string v11, "marginLeft"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_2

    :cond_5
    const-string v11, "marginRight"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_2

    :cond_6
    const-string v11, "marginTop"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_2

    :cond_7
    const-string v11, "marginBottom"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_2

    :cond_8
    invoke-virtual {p1, v5}, Lcom/sec/daliviews/views/NativeViewBase;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3e800000    # 0.25f

    invoke-virtual {p1, v11, v12}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibilityAnimated(IF)V

    goto/16 :goto_0
.end method

.method public abstract updateBadge()V
.end method
