.class public Lcom/ime/framework/view/HtmlTextView;
.super Landroid/widget/TextView;
.source "HtmlTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/framework/view/HtmlTextView$CustomURLSpan;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/ime/framework/view/HtmlTextView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/HtmlTextView;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public setHtmlFromAsset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/ime/framework/view/HtmlTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v7, 0x1400

    :try_start_1
    new-array v0, v7, [B

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v4, v5

    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_0

    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_2
    invoke-virtual {p0, v3}, Lcom/ime/framework/view/HtmlTextView;->setHtmlString(Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_2
    :try_start_4
    const-string v7, "utf-8"

    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v3

    if-eqz v6, :cond_3

    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    :goto_4
    invoke-virtual {p0, v3}, Lcom/ime/framework/view/HtmlTextView;->setHtmlString(Ljava/lang/String;)V

    move-object v4, v5

    goto :goto_3

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v6, :cond_5

    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_6
    :goto_6
    invoke-virtual {p0, v3}, Lcom/ime/framework/view/HtmlTextView;->setHtmlString(Ljava/lang/String;)V

    throw v7

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v7

    move-object v4, v5

    goto :goto_5

    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method public setHtmlString(Ljava/lang/String;)V
    .locals 15

    if-eqz p1, :cond_1

    invoke-static/range {p1 .. p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/ime/framework/view/HtmlTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/ime/framework/view/HtmlTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p0}, Lcom/ime/framework/view/HtmlTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    instance-of v13, v9, Landroid/text/Spannable;

    if-eqz v13, :cond_1

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0}, Lcom/ime/framework/view/HtmlTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    const/4 v13, 0x0

    const-class v14, Landroid/text/style/URLSpan;

    invoke-interface {v6, v13, v1, v14}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/URLSpan;

    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, v12

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v10, v0, v3

    invoke-virtual {v10}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v11

    new-instance v5, Lcom/ime/framework/view/HtmlTextView$CustomURLSpan;

    invoke-direct {v5, p0, v11}, Lcom/ime/framework/view/HtmlTextView$CustomURLSpan;-><init>(Lcom/ime/framework/view/HtmlTextView;Ljava/lang/String;)V

    invoke-interface {v6, v10}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    invoke-interface {v6, v10}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v7, v10}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    const/16 v13, 0x22

    invoke-virtual {v7, v5, v8, v2, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v7}, Lcom/ime/framework/view/HtmlTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
