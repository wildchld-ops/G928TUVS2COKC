.class public Lcom/ime/implement/setting/AutoTextSettings$ByteLengthFilter;
.super Ljava/lang/Object;
.source "AutoTextSettings.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/setting/AutoTextSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ByteLengthFilter"
.end annotation


# instance fields
.field private mCharset:Ljava/lang/String;

.field protected mMaxByte:I

.field final synthetic this$0:Lcom/ime/implement/setting/AutoTextSettings;


# direct methods
.method public constructor <init>(Lcom/ime/implement/setting/AutoTextSettings;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/AutoTextSettings$ByteLengthFilter;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/ime/implement/setting/AutoTextSettings$ByteLengthFilter;->mMaxByte:I

    iput-object p3, p0, Lcom/ime/implement/setting/AutoTextSettings$ByteLengthFilter;->mCharset:Ljava/lang/String;

    return-void
.end method

.method private getByteLength(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings$ByteLengthFilter;->mCharset:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected calculateMaxLength(Ljava/lang/String;)I
    .locals 3

    iget v0, p0, Lcom/ime/implement/setting/AutoTextSettings$ByteLengthFilter;->mMaxByte:I

    invoke-direct {p0, p1}, Lcom/ime/implement/setting/AutoTextSettings$ByteLengthFilter;->getByteLength(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p4, v3, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    invoke-interface {p4, p6, v3}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/implement/setting/AutoTextSettings$ByteLengthFilter;->calculateMaxLength(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    sub-int v4, p6, p5

    sub-int/2addr v3, v4

    sub-int v1, v2, v3

    if-gtz v1, :cond_0

    const-string v2, ""

    :goto_0
    return-object v2

    :cond_0
    sub-int v2, p3, p2

    if-lt v1, v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    add-int v2, p2, v1

    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method
