.class public Lcom/sec/daliviews/views/StrokeTextView;
.super Landroid/widget/TextView;
.source "StrokeTextView.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mStroke:Z

.field private mStrokeColor:I

.field private mStrokeWidth:F

.field private mTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/views/StrokeTextView;->mStroke:Z

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/sec/daliviews/views/StrokeTextView;->mStrokeWidth:F

    const/high16 v0, 0x54000000

    iput v0, p0, Lcom/sec/daliviews/views/StrokeTextView;->mStrokeColor:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/sec/daliviews/views/StrokeTextView;->mTextColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/views/StrokeTextView;->mStroke:Z

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/sec/daliviews/views/StrokeTextView;->mStrokeWidth:F

    const/high16 v0, 0x54000000

    iput v0, p0, Lcom/sec/daliviews/views/StrokeTextView;->mStrokeColor:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/sec/daliviews/views/StrokeTextView;->mTextColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/views/StrokeTextView;->mStroke:Z

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/sec/daliviews/views/StrokeTextView;->mStrokeWidth:F

    const/high16 v0, 0x54000000

    iput v0, p0, Lcom/sec/daliviews/views/StrokeTextView;->mStrokeColor:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/sec/daliviews/views/StrokeTextView;->mTextColor:I

    return-void
.end method

.method private resetStrokeAttr()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/views/StrokeTextView;->mStroke:Z

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/sec/daliviews/views/StrokeTextView;->mStrokeWidth:F

    const/high16 v0, 0x54000000

    iput v0, p0, Lcom/sec/daliviews/views/StrokeTextView;->mStrokeColor:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/sec/daliviews/views/StrokeTextView;->mTextColor:I

    return-void
.end method


# virtual methods
.method protected clone()Lcom/sec/daliviews/views/StrokeTextView;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/StrokeTextView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/StrokeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->reset()V

    invoke-virtual {v0}, Lcom/sec/daliviews/views/StrokeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setFlags(I)V

    invoke-direct {v0}, Lcom/sec/daliviews/views/StrokeTextView;->resetStrokeAttr()V

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/daliviews/views/StrokeTextView;->clone()Lcom/sec/daliviews/views/StrokeTextView;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-boolean v1, p0, Lcom/sec/daliviews/views/StrokeTextView;->mStroke:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/StrokeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v1, p0, Lcom/sec/daliviews/views/StrokeTextView;->mStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v1, p0, Lcom/sec/daliviews/views/StrokeTextView;->mStrokeColor:I

    invoke-virtual {p0, v1}, Lcom/sec/daliviews/views/StrokeTextView;->setTextColor(I)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v1, p0, Lcom/sec/daliviews/views/StrokeTextView;->mTextColor:I

    invoke-virtual {p0, v1}, Lcom/sec/daliviews/views/StrokeTextView;->setTextColor(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setStrokeAttr(ZIIF)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/daliviews/views/StrokeTextView;->mStroke:Z

    iput p2, p0, Lcom/sec/daliviews/views/StrokeTextView;->mTextColor:I

    iput p3, p0, Lcom/sec/daliviews/views/StrokeTextView;->mStrokeColor:I

    iput p4, p0, Lcom/sec/daliviews/views/StrokeTextView;->mStrokeWidth:F

    return-void
.end method
