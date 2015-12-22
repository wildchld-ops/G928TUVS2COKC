.class Landroid/widget/TextView$MoreInfoHPW;
.super Landroid/widget/HoverPopupWindow;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreInfoHPW"
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final ID_INFOVIEW:I = 0x7011214

.field private static final TAG:Ljava/lang/String; = "MoreInfoHPW"


# instance fields
.field private mInitialMaxLine:I

.field private mLastOrientation:I

.field mParentTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/view/View;I)V
    .locals 2

    iput-object p1, p0, Landroid/widget/TextView$MoreInfoHPW;->this$0:Landroid/widget/TextView;

    invoke-direct {p0, p2, p3}, Landroid/widget/HoverPopupWindow;-><init>(Landroid/view/View;I)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mLastOrientation:I

    const/4 v0, 0x7

    iput v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mInitialMaxLine:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    :goto_0
    return-void

    :cond_0
    const-string v0, "MoreInfoHPW"

    const-string v1, "Parent view is not a TextView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/widget/TextView;->access$1700(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    goto :goto_0
.end method


# virtual methods
.method public isHoverPopupPossible()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x1

    iget v3, p0, Landroid/widget/TextView$MoreInfoHPW;->mPopupType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Landroid/widget/TextView$MoreInfoHPW;->mShowPopupAlways:Z

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v1, 0x0

    iget-object v3, p0, Landroid/widget/TextView$MoreInfoHPW;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    :cond_1
    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    if-ne v3, v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    # invokes: Landroid/widget/TextView;->canMarquee()Z
    invoke-static {v2}, Landroid/widget/TextView;->access$1800(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mLayout:Landroid/text/Layout;
    invoke-static {v2}, Landroid/widget/TextView;->access$1000(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mLayout:Landroid/text/Layout;
    invoke-static {v2}, Landroid/widget/TextView;->access$1000(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    invoke-super {p0}, Landroid/widget/HoverPopupWindow;->isHoverPopupPossible()Z

    move-result v1

    goto :goto_1
.end method

.method protected makeDefaultContentView()V
    .locals 9

    const v8, 0x7011214

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/widget/TextView$MoreInfoHPW;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/widget/TextView;->access$1900(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v3, v6, Landroid/content/res/Configuration;->orientation:I

    iget-object v6, p0, Landroid/widget/TextView$MoreInfoHPW;->mContentView:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/TextView$MoreInfoHPW;->mContentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v6, v8, :cond_0

    iget v6, p0, Landroid/widget/TextView$MoreInfoHPW;->mLastOrientation:I

    if-eq v3, v6, :cond_3

    :cond_0
    sget-object v6, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v6, :cond_2

    sget-object v6, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v7, "gt5note"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Landroid/widget/TextView$MoreInfoHPW;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/widget/TextView;->access$2000(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x103012b

    invoke-direct {v0, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    :goto_0
    const v6, 0x1090062

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setHoverPopupType(I)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v5}, Landroid/widget/TextView;->getMaxLines()I

    move-result v6

    iput v6, p0, Landroid/widget/TextView$MoreInfoHPW;->mInitialMaxLine:I

    iput v3, p0, Landroid/widget/TextView$MoreInfoHPW;->mLastOrientation:I

    :goto_1
    iget-object v6, p0, Landroid/widget/TextView$MoreInfoHPW;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v4, p0, Landroid/widget/TextView$MoreInfoHPW;->mContentText:Ljava/lang/CharSequence;

    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v6, p0, Landroid/widget/TextView$MoreInfoHPW;->this$0:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v6, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v7, v1, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    iget v6, p0, Landroid/widget/TextView$MoreInfoHPW;->mInitialMaxLine:I

    const/4 v7, 0x2

    if-le v6, v7, :cond_1

    iget v6, p0, Landroid/widget/TextView$MoreInfoHPW;->mInitialMaxLine:I

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_1
    :goto_3
    iput-object v5, p0, Landroid/widget/TextView$MoreInfoHPW;->mContentView:Landroid/view/View;

    return-void

    :cond_2
    iget-object v6, p0, Landroid/widget/TextView$MoreInfoHPW;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/widget/TextView;->access$2100(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    goto :goto_0

    :cond_3
    iget-object v5, p0, Landroid/widget/TextView$MoreInfoHPW;->mContentView:Landroid/view/View;

    check-cast v5, Landroid/widget/TextView;

    goto :goto_1

    :cond_4
    iget-object v6, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_3
.end method

.method protected setInstanceByType(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/HoverPopupWindow;->setInstanceByType(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 v0, 0x3231

    iput v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mPopupGravity:I

    const v0, 0x10304f6

    iput v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mAnimationStyle:I

    const/16 v0, 0x12c

    iput v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mHoverDetectTimeMS:I

    :cond_0
    return-void
.end method
