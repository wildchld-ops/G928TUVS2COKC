.class public final Lcom/myscript/atk/sltw/d/a/b;
.super Ljava/lang/Object;
.source "InkItemFactory.java"


# direct methods
.method public static a(Ljava/lang/String;)Lcom/myscript/atk/styluscore/InkItem;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/InkItem;->createStringHolder(J)Lcom/myscript/atk/styluscore/InkItem;

    move-result-object v0

    return-object v0
.end method
