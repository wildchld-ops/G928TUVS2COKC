.class public final Lcom/myscript/atk/sltw/g/c;
.super Ljava/lang/Object;
.source "ItfReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/sltw/g/c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/myscript/atk/sltw/g/c$a;

.field private b:Lcom/myscript/atk/sltw/f/b/a;


# direct methods
.method public constructor <init>(Lcom/myscript/atk/sltw/f/b/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/myscript/atk/sltw/g/c;->b:Lcom/myscript/atk/sltw/f/b/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/myscript/atk/sltw/g/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/g/c;->a:Lcom/myscript/atk/sltw/g/c$a;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v0, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    new-array v7, v1, [I

    fill-array-data v7, :array_0

    move v1, v2

    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v8, v3

    if-eqz v8, :cond_6

    if-eqz v0, :cond_1

    const-string v8, "addingStroke"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    array-length v8, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v8, v11, :cond_1

    const/4 v8, 0x0

    :try_start_1
    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    const/4 v9, 0x1

    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_1
    :try_start_2
    array-length v8, v3

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3

    const/4 v8, 0x1

    aget-object v8, v3, v8

    const-string v9, "timestamps"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v1, 0x2

    aget-object v1, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v8, 0x1

    aget v8, v7, v8

    sub-int/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v8, p0, Lcom/myscript/atk/sltw/g/c;->a:Lcom/myscript/atk/sltw/g/c$a;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    const/4 v8, 0x0

    const/4 v9, 0x2

    :try_start_3
    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x3

    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v7, v8
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_2
    const/4 v8, 0x0

    :try_start_4
    aget-object v3, v3, v8

    const-string v8, "AddStroke"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v8, Lcom/myscript/atk/styluscore/Path;

    invoke-direct {v8}, Lcom/myscript/atk/styluscore/Path;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v3, v0}, Lcom/myscript/atk/styluscore/Path;->startAt(FF)V

    move v3, v4

    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v9, v0, Landroid/graphics/PointF;->x:F

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v9, v0}, Lcom/myscript/atk/styluscore/Path;->lineTo(FF)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :catch_0
    move-exception v8

    iget-object v8, p0, Lcom/myscript/atk/sltw/g/c;->a:Lcom/myscript/atk/sltw/g/c$a;

    goto/16 :goto_1

    :catch_1
    move-exception v8

    iget-object v8, p0, Lcom/myscript/atk/sltw/g/c;->a:Lcom/myscript/atk/sltw/g/c$a;

    goto :goto_2

    :cond_4
    invoke-static {v8}, Lcom/myscript/atk/styluscore/InkItem;->createStroke(Lcom/myscript/atk/styluscore/Path;)Lcom/myscript/atk/styluscore/InkItem;

    move-result-object v0

    new-instance v3, Lcom/myscript/atk/styluscore/VoTimeStamp;

    const/4 v8, 0x0

    aget v8, v7, v8

    invoke-direct {v3, v8}, Lcom/myscript/atk/styluscore/VoTimeStamp;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/myscript/atk/styluscore/InkItem;->setTimeStamp(Lcom/myscript/atk/styluscore/VoTimeStamp;)V

    const/4 v3, 0x1

    aget v3, v7, v3

    const/4 v8, 0x0

    aget v8, v7, v8

    sub-int/2addr v3, v8

    int-to-long v8, v3

    invoke-virtual {v0, v8, v9}, Lcom/myscript/atk/styluscore/InkItem;->setDuration(J)V

    iget-object v3, p0, Lcom/myscript/atk/sltw/g/c;->b:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v3, v0}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/styluscore/InkItem;)Lcom/myscript/atk/sltw/f/c;

    move-result-object v0

    iget-object v3, p0, Lcom/myscript/atk/sltw/g/c;->a:Lcom/myscript/atk/sltw/g/c$a;

    invoke-interface {v3, v0, v1}, Lcom/myscript/atk/sltw/g/c$a;->a(Lcom/myscript/atk/sltw/f/c;I)V

    move v1, v2

    :cond_5
    const-string v0, "addingStroke"

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    return-void

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/myscript/atk/sltw/g/c;->a:Lcom/myscript/atk/sltw/g/c$a;

    goto :goto_4

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
