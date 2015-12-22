.class final Landroid/text/util/Linkify$3;
.super Ljava/lang/Object;
.source "Linkify.java"

# interfaces
.implements Landroid/text/util/Linkify$MatchFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/util/Linkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acceptMatch(Ljava/lang/CharSequence;II)Z
    .locals 11

    const/4 v0, 0x0

    move v4, p2

    :goto_0
    if-ge v4, p3, :cond_1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x5

    const/16 v5, 0xd

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Framework_ConfigLinkifyDigit"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    const/4 v4, 0x0

    const/4 v9, 0x2

    new-array v1, v9, [I

    const/4 v9, 0x0

    aput v6, v1, v9

    const/4 v9, 0x1

    aput v5, v1, v9

    new-instance v7, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v9, 0x3b

    invoke-direct {v7, v9}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-virtual {v7, v2}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    aget v6, v1, v9

    const/4 v9, 0x1

    aget v5, v1, v9
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    if-gtz v6, :cond_4

    const/4 v6, 0x1

    :cond_4
    :goto_2
    if-lt v0, v6, :cond_5

    if-gt v0, v5, :cond_5

    const/4 v9, 0x1

    :goto_3
    return v9

    :catch_0
    move-exception v3

    const-string v9, "Linkify"

    const-string v10, "ArrayIndexOutOfBoundsException occured. CSC value is invalid."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v3

    const-string v9, "Linkify"

    const-string v10, "NumberFormatException occured. CSC value is invalid."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    goto :goto_3
.end method
