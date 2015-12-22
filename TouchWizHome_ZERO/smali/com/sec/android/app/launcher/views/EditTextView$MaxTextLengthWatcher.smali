.class Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;
.super Ljava/lang/Object;
.source "EditTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/views/EditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MaxTextLengthWatcher"
.end annotation


# instance fields
.field private mEnabled:Z

.field private mLastValue:Ljava/lang/String;

.field private mMaxLength:I

.field private mNotification:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/launcher/views/EditTextView;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/launcher/views/EditTextView;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->mEnabled:Z

    sget v0, Lcom/sec/android/app/launcher/views/EditTextView;->DEFAULT_MAX_LENGTH:I

    iput v0, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->mMaxLength:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/launcher/views/EditTextView;Lcom/sec/android/app/launcher/views/EditTextView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;-><init>(Lcom/sec/android/app/launcher/views/EditTextView;)V

    return-void
.end method

.method private readDimension(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/EditTextView;->access$1400(Lcom/sec/android/app/launcher/views/EditTextView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->mLastValue:Ljava/lang/String;

    return-void
.end method

.method public getMaxLength()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->mMaxLength:I

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 9

    const/16 v8, 0x80

    const/4 v7, 0x0

    const/16 v6, 0x1e

    const-string v2, "LAUNCHER_EDIT_TEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Char length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "LAUNCHER_EDIT_TEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "LAUNCHER_EDIT_TEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "LAUNCHER_EDIT_TEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "before = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextView:Lcom/sec/daliviews/views/TextView;
    invoke-static {v2}, Lcom/sec/android/app/launcher/views/EditTextView;->access$700(Lcom/sec/android/app/launcher/views/EditTextView;)Lcom/sec/daliviews/views/TextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/TextView;->getDefaultTextColor()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextView:Lcom/sec/daliviews/views/TextView;
    invoke-static {v2}, Lcom/sec/android/app/launcher/views/EditTextView;->access$700(Lcom/sec/android/app/launcher/views/EditTextView;)Lcom/sec/daliviews/views/TextView;

    move-result-object v2

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v8, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/TextView;->setHintTextColor(I)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v8, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/views/EditTextView;->setHintTextColor(I)V

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v3, 0x13

    if-lt v2, v3, :cond_4

    const v2, 0x7f0a0211

    invoke-direct {p0, v2}, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->readDimension(I)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextView:Lcom/sec/daliviews/views/TextView;
    invoke-static {v2}, Lcom/sec/android/app/launcher/views/EditTextView;->access$700(Lcom/sec/android/app/launcher/views/EditTextView;)Lcom/sec/daliviews/views/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/daliviews/views/TextView;->setTextSize(I)V

    if-nez p2, :cond_1

    if-gt p4, v6, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    int-to-float v3, v0

    invoke-virtual {v2, v7, v3}, Lcom/sec/android/app/launcher/views/EditTextView;->setTextSize(IF)V

    :cond_2
    :goto_0
    iput-boolean v7, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->mEnabled:Z

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->mEnabled:Z

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->mMaxLength:I

    if-lt v2, v3, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->mMode:Lcom/sec/android/app/launcher/views/EditTextView$Mode;
    invoke-static {v2}, Lcom/sec/android/app/launcher/views/EditTextView;->access$1500(Lcom/sec/android/app/launcher/views/EditTextView;)Lcom/sec/android/app/launcher/views/EditTextView$Mode;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/views/EditTextView$Mode;->EDIT:Lcom/sec/android/app/launcher/views/EditTextView$Mode;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/launcher/views/EditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->mLastValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/views/EditTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->maxlen_toast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/launcher/views/EditTextView;->access$1600(Lcom/sec/android/app/launcher/views/EditTextView;)Landroid/widget/Toast;

    move-result-object v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/launcher/views/EditTextView;->access$1400(Lcom/sec/android/app/launcher/views/EditTextView;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->mNotification:Ljava/lang/String;

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    # setter for: Lcom/sec/android/app/launcher/views/EditTextView;->maxlen_toast:Landroid/widget/Toast;
    invoke-static {v2, v3}, Lcom/sec/android/app/launcher/views/EditTextView;->access$1602(Lcom/sec/android/app/launcher/views/EditTextView;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->maxlen_toast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/launcher/views/EditTextView;->access$1600(Lcom/sec/android/app/launcher/views/EditTextView;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    if-lt p2, v6, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    iget v3, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->mMaxLength:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/views/EditTextView;->setSelection(I)V

    const-string v2, "LAUNCHER_EDIT_TEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Limit if 1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->mMaxLength:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/launcher/views/EditTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_3
    return-void

    :cond_4
    const v2, 0x7f0a0210

    invoke-direct {p0, v2}, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->readDimension(I)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextView:Lcom/sec/daliviews/views/TextView;
    invoke-static {v2}, Lcom/sec/android/app/launcher/views/EditTextView;->access$700(Lcom/sec/android/app/launcher/views/EditTextView;)Lcom/sec/daliviews/views/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/daliviews/views/TextView;->setTextSize(I)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    int-to-float v3, v0

    invoke-virtual {v2, v7, v3}, Lcom/sec/android/app/launcher/views/EditTextView;->setTextSize(IF)V

    goto/16 :goto_0

    :cond_5
    if-ge p2, v6, :cond_8

    add-int v2, p2, p4

    if-lt v2, v6, :cond_8

    if-eq p2, v6, :cond_6

    if-ne p3, v6, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    iget v3, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->mMaxLength:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/views/EditTextView;->setSelection(I)V

    const-string v2, "LAUNCHER_EDIT_TEXT"

    const-string v3, "Limit if start or before is 30 "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, p4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/views/EditTextView;->setSelection(I)V

    const-string v2, "LAUNCHER_EDIT_TEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Limit if 2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, p4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    const-string v2, "LAUNCHER_EDIT_TEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Limit if 3= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, p4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, p4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/views/EditTextView;->setSelection(I)V

    goto/16 :goto_1

    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->maxlen_toast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/launcher/views/EditTextView;->access$1600(Lcom/sec/android/app/launcher/views/EditTextView;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    const/4 v3, 0x0

    # setter for: Lcom/sec/android/app/launcher/views/EditTextView;->maxlen_toast:Landroid/widget/Toast;
    invoke-static {v2, v3}, Lcom/sec/android/app/launcher/views/EditTextView;->access$1602(Lcom/sec/android/app/launcher/views/EditTextView;Landroid/widget/Toast;)Landroid/widget/Toast;

    if-lt p2, v6, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    iget v3, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->mMaxLength:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/views/EditTextView;->setSelection(I)V

    const-string v2, "LAUNCHER_EDIT_TEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Limit cancel toast 1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->mMaxLength:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    if-ge p2, v6, :cond_d

    add-int v2, p2, p4

    if-lt v2, v6, :cond_d

    if-eq p2, v6, :cond_b

    if-ne p3, v6, :cond_c

    :cond_b
    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    iget v3, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->mMaxLength:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/views/EditTextView;->setSelection(I)V

    const-string v2, "LAUNCHER_EDIT_TEXT"

    const-string v3, "Limit cancel start or before is 30 "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, p4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/views/EditTextView;->setSelection(I)V

    const-string v2, "LAUNCHER_EDIT_TEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Limit cancel toast 2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, p4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_d
    const-string v2, "LAUNCHER_EDIT_TEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Limit cancel toast 3= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, p4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, p4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/views/EditTextView;->setSelection(I)V

    goto/16 :goto_1
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->mEnabled:Z

    return-void
.end method

.method public setMaxLength(I)V
    .locals 4

    if-gez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->mMaxLength:I

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/launcher/views/EditTextView;->access$1400(Lcom/sec/android/app/launcher/views/EditTextView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->mMaxLength:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->mNotification:Ljava/lang/String;

    goto :goto_0
.end method
