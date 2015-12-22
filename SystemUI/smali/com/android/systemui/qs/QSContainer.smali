.class public Lcom/android/systemui/qs/QSContainer;
.super Landroid/widget/FrameLayout;
.source "QSContainer.java"


# instance fields
.field private mHeightOverride:I

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeightOverride:I

    return-void
.end method

.method private updateBottom()V
    .locals 3

    iget v1, p0, Lcom/android/systemui/qs/QSContainer;->mHeightOverride:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeightOverride:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSContainer;->setBottom(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getDesiredHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->isClosingDetail()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getGridHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0e0278

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateBottom()V

    return-void
.end method

.method public setHeightOverride(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/QSContainer;->mHeightOverride:I

    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateBottom()V

    return-void
.end method
