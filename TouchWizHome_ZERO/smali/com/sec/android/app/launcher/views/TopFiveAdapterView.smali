.class public Lcom/sec/android/app/launcher/views/TopFiveAdapterView;
.super Lcom/sec/daliviews/views/AdapterView;
.source "TopFiveAdapterView.java"


# instance fields
.field private mPresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/daliviews/views/AdapterView;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;->mPresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;->mPresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    return-void
.end method


# virtual methods
.method public canAcceptDrop(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;->mPresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;->mPresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->canAcceptDrop(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/daliviews/views/AdapterView;->canAcceptDrop(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v0

    goto :goto_0
.end method

.method public setDefaultMode(I)V
    .locals 2

    sget v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    sget v1, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;->setScreenGridSize(II)V

    invoke-super {p0, p1}, Lcom/sec/daliviews/views/AdapterView;->setDefaultMode(I)V

    return-void
.end method

.method public setTopFivePresenter(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;->mPresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    return-void
.end method
